"""
Implementing iXReport UI page actions
Implementing Logging mechanism for iXReport UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.Legacy.ixreport_page import IXReportPage


class IXReport:
    """
    Returning switch to ixreport page
    Returning switch to list frame
    Returning switch to detail frame
    Returning validate date format
    Returning validate currency format
    Returning expand reports section
    Returning click sub report item
    Returning get selected date
    Returning get begin date
    Returning get end date
    Returning get effective date
    Returning get from date
    Returning get to date
    Returning get date value
    Returning get from processing date
    Returning get to processing date
    Returning close ixreport window
    Returning get select date
    Returning get usage from date
    Returning get usage to date
    Returning get created date from
    Returning get created date to
    Returning get from call date
    Returning get to call date
    Returning click submit button
    Returning get specific column value from reports
    Returning get begin date text
    Returning get end date text
    Returning get effective date text
    Returning get from processing date text
    Returning get to processing date text
    Returning set begin date
    Returning click report preview button
    Returning click report export to excel button
    Returning click report export to csv button
    Returning click report export to pdf button
    Returning is end date column present
    Returning is begin date greater than end date warning message shown
    Returning is empty orig point code records are shown
    Returning click account rate plan selection button
    Returning move available rate plan to assigned
    Returning click account rate plan selection submit button
    Returning click currency selection button
    Returning select first currency
    Returning select charts tab
    Returning select tabular tab
    Returning click save my report button
    Returning set my report title
    Returning click my report save button
    Returning click on demand extract button
    Returning set first level summarize by
    Returning set second level summarize by
    Returning set third level summarize by
    Returning expand first layer first row
    Returning expand second layer first row
    Returning click reference set browse button
    Returning click comparison set 1 browse button
    Returning set number plan type
    Returning click go button
    Returning select row from look up table
    Returning click country country code browse button
    Returning get first row account name
    Returning get first row rate plan
    Returning set report trunk name
    Returning get first row transmission type
    Returning click account browse button
    Returning set first letters
    Returning select extracts submenu
    Returning click extract list new button
    Returning click specific extract name form list
    Returning set extract country
    Returning click extract save button
    Returning set extract title
    Returning set extract relative period
    Returning get created extract name
    Returning click specific add button
    Returning click extract next button
    Returning set extract schedule name
    Returning set extract active time
    Returning set extract active date
    Returning click extract schedule save button
    Returning is extract generation present
    Returning is completed extract status present
    Returning click report page exit button
    Returning set offers from date
    Returning click submit button and verify error message
    Returning click vendors massive lookup button
    Returning move more than ten vendors to assign
    Returning click vendor lookup submit button and verify error message
    Returning move selected vendors to available
    Returning set vendor lookup first letter
    Returning click vendor lookup go button
    Returning move vendor to assigned
    Returning click vendor lookup submit button
    Returning click first row vendor name
    Returning verify column names of reference rates analysis report table
    Returning verify column names of reference rates analysis report layer 2 table
    Returning is completed extract delivery status present
    Returning is extract delivery present
    Returning set process status
    Returning compare process status
    Returning compare process status on table
    Returning set account type
    Returning is report page present for selected account type
    Returning set fourth level summarize by
    Returning set fifth level summarize by
    Returning set begin month
    Returning click submit button with id
    Returning click new save my report button
    Returning select standard tab
    Returning is ppm calculated correctly
    Returning click extract go button
    Returning set report group
    Returning set report
    Returning get my report title
    Returning expand sub report item
    Returning click my report name
    Returning click my report save button
    Returning expand mor layer first row
    Returning switch to level n detail frame
    Returning is sub report item present
    Returning set select date
    Returning set service
    Returning get first row rate dimension template
    Returning click rate dimension template browse button
    Returning get second row account name
    Returning get second row parent account name
    Returning click parent account browse button
    Returning switch to default content
    Returning get first row product catalog
    Returning click number plan browse button
    Returning set product catalog
    Returning get first row tariff type
    Returning set tariff type
    Returning get first row routing product
    Returning click routing product browse button
    Returning set from processing date
    Returning set switch
    Returning set status
    Returning set profile
    Returning get first row status
    Returning get second row contract name
    Returning get saved contract name
    Returning get saved account name
    Returning click contract browse button
    Returning click contract version browse button
    Returning click country browse button
    Returning set rate type
    Returning get second row credit limit status
    Returning click credit limit status browse button
    Returning get second row in account name
    Returning get second row out account name
    Returning get second row routing destination
    Returning click out account browse button
    Returning click routing destination browse button
    Returning set created date from
    Returning click direction browse button
    Returning set route class
    Returning click submit button to verify warning
    Returning click technical trunk browse button
    Returning get first row switch
    Returning get first row technical trunk
    Returning click first row technical trunk
    Returning click deal browse button
    Returning set date value into specific date field
    Returning get second row customer source
    Returning click customer source browse button
    Returning move customer source to assigned
    Returning set reference price list
    Returning set currency
    Returning click account browse button with id
    Returning get cpe traffic report second row account name
    Returning click first row routing product
    Returning switch to route guide detail frame
    Returning click report table first row
    Returning get first row route class
    Returning click route class browse button
    Returning set delta report item
    Returning click currency browse button
    Returning click first row routing product for crg
    Returning click source browse button
    Returning get first row source name
    Returning set source type
    Returning get second row look up table value
    Returning click first row more info icon
    Returning is second layer displayed
    Returning click offer browse button
    Returning set offer type
    Returning get report offer details
    Returning get offer details from database
    Returning compare report and database offer details
    Returning is specific report displayed
    Returning is specific report page displayed
    Returning click unified number plan browse button
    Returning set first unified number plan type
    Returning click service level browse button
    Returning get destination from productiXRoute table
    Returning click destination browse button
    Returning is selected dates are out of range warning message shown
    Returning click specific view button
    Returning click extract delete button
    Returning set extract begin date
    Returning click extract submit button
    Returning click accrual check extract save button
    Returning click save button to verify warning
    Returning click specific extract name button
    Returning is report page loaded properly
    Returning is specific column present in report page
    Returning is specific column not present in report page
    Returning click specific edit icon
    Returning click myreport edit save button
    Returning click myreport delete button
    Returning is specific myreport not present
    Returning click myreport cancel button
    Returning set cdr extract title
    Returning click extract customer price vs current cost submit button
    Returning set extract begin month
    Returning click product browse button
    Returning get routing product from productixroute table
    Returning compare lookup table routing product with database
    Returning is extract present
    Returning set profit symbol
    Returning set profit value
    Returning click specific tab on report page
    Returning click specific download button
    Returning get extract file name
    Returning does extract file exist in network path
    Returning delete extract file from network path
    Returning click extract reference set browse button
    Returning click extract comparison set 1 browse button
    Returning get first row effective date
    Returning get first row analyzed rate
    Returning is analyzed rate shown up to six decimal points
    Returning get account name without credit limit
    Returning get account name with credit limit from database
    Returning verify row exceed warning message
    Returning click submit button with wait
    Returning is country filter available
    Returning does country filter have countries
    Returning set extract first level summarize by
    Returning set extract second level summarize by
    Returning set minutes
    Returning verify first row actual rate change in rp currency column value
    Returning verify first row exchange rate impact column value
    Returning verify first row rate calculation method column value
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('IXReport')

    def __init__(self):
        self._ixreport_page = IXReportPage()

    def switch_to_ixreport(self):
        """
        Returning switch to ixreport
        Implementing logging for switch to ixreport functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to ixreport method')
            self._ixreport_page.switch_to_ixreport()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to ixreport method')
            return is_switched

    def switch_to_list_frame(self):
        """
        Returning switch to list frame
        Implementing logging for switch to list frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to list frame')
            self._ixreport_page.switch_to_list_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to list frame')
            return is_switched

    def switch_to_detail_frame(self):
        """
        Returning switch to detail frame
        Implementing logging for switch to detail frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to detail frame')
            self._ixreport_page.switch_to_detail_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to detail frame')
            return is_switched

    def validate_date_format(self, actual_date, expected_date_format):
        """
        Returning validate date format
        Implementing logging for date format functionality
        :param actual_date:
        :param expected_date_format:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: validate date format')
            if actual_date.lower() == 'the grid is empty' or actual_date.strip() == '':
                status = True
            else:
                status = self._ixreport_page.validate_date_format(actual_date, expected_date_format)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate date format')
            return status

    def validate_currency_format(self, actual_value, expected_locale):
        """
        Returning validate currency format
        Implementing logging for currency format functionality
        :param actual_value:
        :param expected_locale:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: validate currency format')
            if actual_value.lower() == 'the grid is empty' or actual_value.strip() == '':
                status = True
            else:
                status = self._ixreport_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def expand_reports_section(self, reports_section_name):
        """
        Returning expand reports section
        Implementing logging for expand reports section functionality
        :param reports_section_name:
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand reports section')
            self._ixreport_page.expand_reports_section(reports_section_name)
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand reports section')
            return is_expanded

    def click_sub_report_item(self, sub_report_name):
        """
        Returning click sub report item
        Implementing logging for click sub report item functionality
        :param sub_report_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click sub report item')
            self._ixreport_page.click_sub_report_item(sub_report_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click sub report item')
            return is_clicked

    def get_selected_date(self):
        """
        Returning get selected date
        Implementing logging for get selected date functionality
        :return: selected date
        """
        selected_date = None
        try:
            self.logger.info('Start: get selected date')
            selected_date = self._ixreport_page.get_selected_date()
        except WebDriverException as exp:
            selected_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get selected date')
            return selected_date

    def get_begin_date(self, lower_case_d=False):
        """
        Returning get begin date
        Implementing logging for get begin date functionality
        :param lower_case_d:
        :return: begin date
        """
        begin_date = None
        try:
            self.logger.info('Start: get begin date')
            begin_date = self._ixreport_page.get_begin_date(lower_case_d)
        except WebDriverException as exp:
            begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get begin date')
            return begin_date

    def get_end_date(self, lower_case_d=False):
        """
        Returning get end date
        Implementing logging for get end date functionality
        :param lower_case_d:
        :return: end date
        """
        end_date = None
        try:
            self.logger.info('Start: get end date')
            end_date = self._ixreport_page.get_end_date(lower_case_d)
        except WebDriverException as exp:
            end_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get end date')
            return end_date

    def get_effective_date(self):
        """
        Returning get effective date
        Implementing logging for get effective date functionality
        :return: effective date
        """
        effective_date = None
        try:
            self.logger.info('Start: get effective date')
            effective_date = self._ixreport_page.get_effective_date()
        except WebDriverException as exp:
            effective_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get effective date')
            return effective_date

    def get_from_date(self):
        """
        Returning get from date
        Implementing logging for get from date functionality
        :return: from date
        """
        from_date = None
        try:
            self.logger.info('Start: get from date')
            from_date = self._ixreport_page.get_from_date()
        except WebDriverException as exp:
            from_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get from date')
            return from_date

    def get_to_date(self):
        """
        Returning get to date
        Implementing logging for get to date functionality
        :return: to date
        """
        to_date = None
        try:
            self.logger.info('Start: get to date')
            to_date = self._ixreport_page.get_to_date()
        except WebDriverException as exp:
            to_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get to date')
            return to_date

    def get_date_value(self):
        """
        Returning get date value
        Implementing logging for get date value functionality
        :return: date
        """
        date = None
        try:
            self.logger.info('Start: get date value')
            date = self._ixreport_page.get_date_value()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get date value')
            return date

    def get_from_processing_date(self):
        """
        Returning get from processing date
        Implementing logging for get from processing date functionality
        :return: from processing date
        """
        from_processing_date = None
        try:
            self.logger.info('Start: get from processing date')
            from_processing_date = self._ixreport_page.get_from_processing_date()
        except WebDriverException as exp:
            from_processing_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get from processing date')
            return from_processing_date

    def get_to_processing_date(self):
        """
        Returning get to processing date
        Implementing logging for get to processing date functionality
        :return: to processing date
        """
        to_processing_date = None
        try:
            self.logger.info('Start: get to processing date')
            to_processing_date = self._ixreport_page.get_to_processing_date()
        except WebDriverException as exp:
            to_processing_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get to processing date')
            return to_processing_date

    def close_ixreport_window(self, default_window):
        """
        Returning close ixreport window
        Implementing logging for close ixreport window functionality
        :param default_window:
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close ixreport window')
            self._ixreport_page.close_browser()
            if default_window is True:
                self._ixreport_page.switch_to_default_window()
            else:
                self._ixreport_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close ixreport window')
            return is_closed

    def get_select_date(self):
        """
        Returning get select date
        Implementing logging for get select date functionality
        :return: select date
        """
        select_date = None
        try:
            self.logger.info('Start: get select date')
            select_date = self._ixreport_page.get_select_date()
        except WebDriverException as exp:
            select_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get select date')
            return select_date

    def get_usage_from_date(self):
        """
        Returning get usage from date
        Implementing logging for get usage from date functionality
        :return: from date
        """
        from_date = None
        try:
            self.logger.info('Start: get usage from date')
            from_date = self._ixreport_page.get_usage_from_date()
        except WebDriverException as exp:
            from_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get usage from date')
            return from_date

    def get_usage_to_date(self):
        """
        Returning get usage to date
        Implementing logging for get usage to date functionality
        :return: to date
        """
        to_date = None
        try:
            self.logger.info('Start: get usage to date')
            to_date = self._ixreport_page.get_usage_to_date()
        except WebDriverException as exp:
            to_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get usage to date')
            return to_date

    def get_created_date_from(self):
        """
        Returning get created date from
        Implementing logging for get created date from functionality
        :return: from date
        """
        from_date = None
        try:
            self.logger.info('Start: get created date from')
            from_date = self._ixreport_page.get_created_date_from()
        except WebDriverException as exp:
            from_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created date from')
            return from_date

    def get_created_date_to(self):
        """
        Returning get created date to
        Implementing logging for get created date to functionality
        :return: to date
        """
        to_date = None
        try:
            self.logger.info('Start: get created date to')
            to_date = self._ixreport_page.get_created_date_to()
        except WebDriverException as exp:
            to_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created date to')
            return to_date

    def get_from_call_date(self):
        """
        Returning get from call date
        Implementing logging for get from call date functionality
        :return: from call date
        """
        from_call_date = None
        try:
            self.logger.info('Start: get from call date')
            from_call_date = self._ixreport_page.get_from_call_date()
        except WebDriverException as exp:
            from_call_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get from call date')
            return from_call_date

    def get_to_call_date(self):
        """
        Returning get to call date
        Implementing logging for get to call date functionality
        :return: to call date
        """
        to_call_date = None
        try:
            self.logger.info('Start: get to call date')
            to_call_date = self._ixreport_page.get_to_call_date()
        except WebDriverException as exp:
            to_call_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get to call date')
            return to_call_date

    def click_submit_button(self):
        """
        Returning click submit button
        Implementing logging for click submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submit button')
            self._ixreport_page.click_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submit button')
            return is_clicked

    def get_specific_column_value_from_reports(self, column_name):
        """
        Returning get specific column value from reports
        Implementing logging for get specific column value from reports functionality
        :return: column value
        """
        column_value = None
        try:
            self.logger.info('Start: get last modified column value')
            column_value = self._ixreport_page.get_specific_column_value_from_reports(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get last modified column value')
            return column_value

    def get_begin_date_text(self):
        """
        Returning get begin date text
        Implementing logging for get begin date text functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get begin date text')
            return self._ixreport_page.get_begin_date_text()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get begin date text')

    def get_end_date_text(self):
        """
        Returning get end date text
        Implementing logging for get end date text functionality
        :return: end date
        """
        try:
            self.logger.info('Start: get end date text')
            return self._ixreport_page.get_end_date_text()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get end date text')

    def get_effective_date_text(self):
        """
        Returning get effective date text
        Implementing logging for get effective date text functionality
        :return: effective date
        """
        try:
            self.logger.info('Start: get effective date text')
            return self._ixreport_page.get_effective_date_text()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get effective date text')

    def get_from_processing_date_text(self):
        """
        Returning get from processing date text
        Implementing logging for get from processing date text functionality
        :return: from processing date
        """
        try:
            self.logger.info('Start: get from processing date text')
            return self._ixreport_page.get_from_processing_date_text()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get from processing date text')

    def get_to_processing_date_text(self):
        """
        Returning get to processing date text
        Implementing logging for get to processing date text functionality
        :return: to processing date
        """
        try:
            self.logger.info('Start: get to processing date text')
            return self._ixreport_page.get_to_processing_date_text()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get to processing date text')

    def set_begin_date(self, begin_date, current_date=False, future_date=False, previous_date=False, lower_case_d=False, num_of_days_to_add=7):
        """
        Returning set begin date
        Implementing logging for set begin date functionality
        :param begin_date:
        :param current_date:
        :param future_date:
        :param previous_date:
        :param lower_case_d:
        :param num_of_days_to_add:
        :return: begin date
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date')
            self._ixreport_page.set_begin_date(begin_date, current_date, future_date, previous_date, lower_case_d, num_of_days_to_add)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date')
            return is_set

    def click_report_preview_button(self, print_pop_up=True):
        """
        Returning click report preview button
        Implementing logging for click report preview button functionality
        :param print_pop_up:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report preview button')
            self._ixreport_page.click_report_preview_button(print_pop_up)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report preview button')
            return is_clicked

    def click_report_export_to_excel_button(self):
        """
        Returning click report export to excel button
        Implementing logging for click report export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report export to excel button')
            self._ixreport_page.click_report_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report export to excel button')
            return is_clicked

    def click_report_export_to_csv_button(self):
        """
        Returning click report export to csv button
        Implementing logging for click report export to csv button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report export to csv button')
            self._ixreport_page.click_report_export_to_csv_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report export to csv button')
            return is_clicked

    def click_report_export_to_pdf_button(self):
        """
        Returning click report export to pdf button
        Implementing logging for click report export to pdf button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report export to pdf button')
            self._ixreport_page.click_report_export_to_pdf_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report export to pdf button')
            return is_clicked

    def is_end_date_column_present(self):
        """
        Returning is end date column present
        Implementing logging for is end date column present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is end date column present')
            return self._ixreport_page.is_end_date_column_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is end date column present')

    def is_begin_date_greater_than_end_date_warning_message_shown(self):
        """
        Returning is begin date greater than end date warning message shown
        Implementing logging for is begin date greater than end date warning message shown functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is begin date greater than end date warning message shown')
            return self._ixreport_page.is_begin_date_greater_than_end_date_warning_message_shown()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is begin date greater than end date warning message shown')

    def is_empty_orig_point_code_records_are_shown(self):
        """
        Returning is empty orig point code records are shown
        Implementing logging for is empty orig point code records are shown functionality
        :return: True/False
        """
        is_shown = None
        try:
            self.logger.info('Start: is empty orig point code records are shown')
            is_shown = self._ixreport_page.is_empty_orig_point_code_records_are_shown()
        except WebDriverException as exp:
            is_shown = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is empty orig point code records are shown')
            return is_shown

    def click_account_rate_plan_selection_button(self):
        """
        Returning click account rate plan selection button
        Implementing logging for click account rate plan selection button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click account rate plan selection button')
            self._ixreport_page.click_account_rate_plan_selection_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click account rate plan selection button')
            return is_clicked

    def move_available_rate_plan_to_assigned(self, multiple_rate_plan=False):
        """
        Returning move available rate plan to assigned
        Implementing logging for move available rate plan to assigned functionality
        :param multiple_rate_plan:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available rate plan to assigned')
            self._ixreport_page.move_available_rate_plan_to_assigned(multiple_rate_plan)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available rate plan to assigned')
            return is_moved

    def click_account_rate_plan_selection_submit_button(self):
        """
        Returning click account rate plan selection submit button
        Implementing logging for click account rate plan selection submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click account rate plan selection submit button')
            self._ixreport_page.click_account_rate_plan_selection_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click account rate plan selection submit button')
            return is_clicked

    def click_currency_selection_button(self):
        """
        Returning click currency selection button
        Implementing logging for click currency selection button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click currency selection button')
            self._ixreport_page.click_currency_selection_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click currency selection button')
            return is_clicked

    def select_first_currency(self):
        """
        Returning select first currency
        Implementing logging for select first currency functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select first currency')
            self._ixreport_page.select_first_currency()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select first currency')
            return is_selected

    def click_first_row_error_type(self):
        """
        Returning click first row error type
        Implementing logging for click first row error type functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row error type')
            self._ixreport_page.click_first_row_error_type()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row error type')
            return is_clicked

    def expand_layer_first_row(self):
        """
        Returning expand layer first row
        Implementing logging for expand layer first row functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand layer first row')
            self._ixreport_page.expand_layer_first_row()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand layer first row')
            return is_expanded

    def switch_to_level2_detail_frame(self):
        """
        Returning switch to level2 detail frame
        Implementing logging for switch to level2 detail frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to level2 detail frame')
            self._ixreport_page.switch_to_level2_detail_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to level2 detail frame')
            return is_switched

    def switch_to_level3_detail_frame(self):
        """
        Returning switch to level3 detail frame
        Implementing logging for switch to level3 detail frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to level3 detail frame')
            self._ixreport_page.switch_to_level3_detail_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to level3 detail frame')
            return is_switched

    def switch_to_level4_detail_frame(self):
        """
        Returning switch to level4 detail frame
        Implementing logging for switch to level4 detail frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to level4 detail frame')
            self._ixreport_page.switch_to_level4_detail_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to level4 detail frame')
            return is_switched

    def verify_column_names_of_cdr_error_report_table(self, *column_name_list):
        """
        Returning verify column names of cdr error report table
        Implementing logging for verify column names of cdr error report table functionality
        :param column_name_list:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify column names of cdr error report table')
            is_verified = self._ixreport_page.verify_column_names_of_cdr_error_report_table(column_name_list)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify column names of cdr error report table')
            return is_verified

    def verify_column_names_of_cdr_error_report_layer_2_table(self, *column_name_list):
        """
        Returning verify column names of cdr error report layer 2 table
        Implementing logging for verify column names of cdr error report layer 2 table functionality
        :param column_name_list:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify column names of cdr error report layer 2 table')
            is_verified = self._ixreport_page.verify_column_names_of_cdr_error_report_layer_2_table(column_name_list)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify column names of cdr error report layer 2 table')
            return is_verified

    def verify_column_names_of_cdr_error_report_layer_3_table(self, *column_name_list):
        """
        Returning verify column names of cdr error report layer 3 table
        Implementing logging for verify column names of cdr error report layer 3 table functionality
        :param column_name_list:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify column names of cdr error report layer 3 table')
            is_verified = self._ixreport_page.verify_column_names_of_cdr_error_report_layer_3_table(column_name_list)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify column names of cdr error report layer 3 table')
            return is_verified

    def verify_layer_5_report_title(self, expected_title):
        """
        Returning verify layer 5 report title
        Implementing logging for verify layer 5 report title functionality
        :param expected_title:
        :return: report_title
        """
        is_verified = None
        try:
            self.logger.info('Start: verify layer 5 report title')
            is_verified = self._ixreport_page.verify_layer_5_report_title(expected_title)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify layer 5 report title')
            return is_verified

    def click_report_preview_button_if_expand_successful(self):
        """
        Returning click report preview button if expand successful
        Implementing logging for click report preview button if expand successful functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report preview button if expand successful')
            self._ixreport_page.click_report_preview_button_if_expand_successful()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report preview button if expand successful')
            return is_clicked

    def click_report_export_to_excel_button_if_expand_successful(self):
        """
        Returning click report export to excel button if expand successful
        Implementing logging for click report export to excel button if expand successful functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report export to excel button if expand successful')
            self._ixreport_page.click_report_export_to_excel_button_if_expand_successful()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report export to excel button if expand successful')
            return is_clicked

    def click_report_export_to_csv_button_if_expand_successful(self):
        """
        Returning click report export to csv button if expand successful
        Implementing logging for click report export to csv button if expand successful functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report export to csv button if expand successful')
            self._ixreport_page.click_report_export_to_csv_button_if_expand_successful()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report export to csv button if expand successful')
            return is_clicked

    def click_report_export_to_pdf_button_if_expand_successful(self):
        """
        Returning click report export to pdf button if expand successful
        Implementing logging for click report export to pdf button if expand successful functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report export to pdf button if expand successful')
            self._ixreport_page.click_report_export_to_pdf_button_if_expand_successful()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report export to pdf button if expand successful')
            return is_clicked

    def select_charts_tab(self):
        """
        Returning select charts tab
        Implementing logging for select charts tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select charts tab')
            self._ixreport_page.select_charts_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select charts tab')
            return is_selected

    def select_tabular_tab(self):
        """
        Returning select tabular tab
        Implementing logging for select tabular tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select tabular tab')
            self._ixreport_page.select_tabular_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select tabular tab')
            return is_selected

    def click_save_my_report_button(self):
        """
        Returning click save my report button
        Implementing logging for click save my report button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save my report button')
            self._ixreport_page.click_save_my_report_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save my report button')
            return is_clicked

    def set_my_report_title(self, title_prefix):
        """
        Returning set my report title
        Implementing logging for set my report title functionality
        :param title_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set my report title')
            self._ixreport_page.set_my_report_title(title_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set my report title')
            return is_set

    def click_my_report_save_button(self):
        """
        Returning click my report save button
        Implementing logging for click my report save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click my report save button')
            self._ixreport_page.click_my_report_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click my report save button')
            return is_clicked

    def click_on_demand_extract_button(self):
        """
        Returning click on demand extract button
        Implementing logging for click on demand extract button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on demand extract button')
            self._ixreport_page.click_on_demand_extract_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on demand extract button')
            return is_clicked

    def set_first_level_summarize_by(self, option_text):
        """
        Returning set first level summarize by
        Implementing logging for set first level summarize by functionality
        :param option_text:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first level summarize by')
            self._ixreport_page.set_first_level_summarize_by(option_text)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first level summarize by')
            return is_set

    def set_second_level_summarize_by(self, option_text):
        """
        Returning set second level summarize by
        Implementing logging for set second level summarize by functionality
        :param option_text:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set second level summarize by')
            self._ixreport_page.set_second_level_summarize_by(option_text)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set second level summarize by')
            return is_set

    def set_third_level_summarize_by(self, option_text):
        """
        Returning set third level summarize by
        Implementing logging for set third level summarize by functionality
        :param option_text:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set third level summarize by')
            self._ixreport_page.set_third_level_summarize_by(option_text)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set third level summarize by')
            return is_set

    def expand_first_layer_first_row(self):
        """
        Returning expand first layer first row
        Implementing logging for expand first layer first row functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand first layer first row')
            self._ixreport_page.expand_first_layer_first_row()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand first layer first row')
            return is_expanded

    def expand_second_layer_first_row(self):
        """
        Returning expand second layer first row
        Implementing logging for expand second layer first row functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand second layer first row')
            self._ixreport_page.expand_second_layer_first_row()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand second layer first row')
            return is_expanded

    def click_reference_set_browse_button(self):
        """
        Returning click reference set browse button
        Implementing logging for click reference set browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference set browse button')
            self._ixreport_page.click_reference_set_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference set browse button')
            return is_clicked

    def click_comparison_set_1_browse_button(self):
        """
        Returning click comparison set 1 browse button
        Implementing logging for click comparison set 1 browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click comparison set 1 browse button')
            self._ixreport_page.click_comparison_set_1_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click comparison set 1 browse button')
            return is_clicked

    def set_number_plan_type(self, number_plan_type):
        """
        Returning set number plan type
        Implementing logging for set number plan type functionality
        :param number_plan_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan type')
            self._ixreport_page.set_number_plan_type(number_plan_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan type')
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
            self._ixreport_page.click_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click go button')
            return is_clicked

    def select_row_from_look_up_table(self, row_text, first_row=False, second_row=False):
        """
        Returning select row from look up table
        Implementing logging for select row from look up table functionality
        :param row_text:
        :param first_row:
        :param second_row:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: select row from look up table')
            self._ixreport_page.select_row_from_look_up_table(row_text, first_row, second_row)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select row from look up table')
            return is_set

    def click_country_country_code_browse_button(self):
        """
        Returning click country country code browse button
        Implementing logging for click country country code browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country country code browse button')
            self._ixreport_page.click_country_country_code_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country country code browse button')
            return is_clicked

    def get_first_row_account_name(self):
        """
        Returning get first row account name
        Implementing logging for get first row account name functionality
        :return: account_name
        """
        account_name = None
        try:
            self.logger.info('Start: get first row account name')
            account_name = self._ixreport_page.get_first_row_account_name()
        except WebDriverException as exp:
            account_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row account name')
            return account_name

    def get_first_row_rate_plan(self):
        """
        Returning get first row rate plan
        Implementing logging for get first row rate plan functionality
        :return: rate_plan
        """
        rate_plan = None
        try:
            self.logger.info('Start: get first row rate plan')
            rate_plan = self._ixreport_page.get_first_row_rate_plan()
        except WebDriverException as exp:
            rate_plan = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row rate plan')
            return rate_plan

    def set_report_trunk_name(self, trunk_name):
        """
        Returning set report trunk name
        Implementing logging for set report trunk name functionality
        :param trunk_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set report trunk name')
            self._ixreport_page.set_report_trunk_name(trunk_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set report trunk name')
            return is_set

    def get_first_row_transmission_type(self):
        """
        Returning get first row transmission type
        Implementing logging for get first row transmission type functionality
        :return: transmission_type
        """
        transmission_type = None
        try:
            self.logger.info('Start: get first row transmission type')
            transmission_type = self._ixreport_page.get_first_row_transmission_type()
        except WebDriverException as exp:
            transmission_type = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row transmission type')
            return transmission_type

    def click_account_browse_button(self):
        """
        Returning click account browse button
        Implementing logging for click account browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click account browse button')
            self._ixreport_page.click_account_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click account browse button')
            return is_clicked

    def set_first_letters(self, first_letters):
        """
        Returning set first letters
        Implementing logging for set first letters functionality
        :param first_letters:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first letters')
            self._ixreport_page.set_first_letters(first_letters)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first letters')
            return is_set

    def select_extracts_submenu(self):
        """
        Returning select extracts submenu
        Implementing logging for select extracts submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select extracts submenu')
            self._ixreport_page.select_extracts_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select extracts submenu')
            return is_selected

    def click_extract_list_new_button(self):
        """
        Returning click extract list new button
        Implementing logging for click extract list new button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract list new button')
            self._ixreport_page.click_extract_list_new_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract list new button')
            return is_clicked

    def click_specific_extract_name_from_list(self, extract_name):
        """
        Returning click specific extract name form list
        Implementing logging for click specific extract name form list functionality
        :param extract_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click specific extract name form list')
            self._ixreport_page.click_specific_extract_name_from_list(extract_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click specific extract name form list')
            return is_clicked

    def set_extract_country(self, country_name):
        """
        Returning set extract country
        Implementing logging for set extract country functionality
        :param country_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set extract country')
            self._ixreport_page.set_extract_country(country_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract country')
            return is_set

    def click_extract_save_button(self):
        """
        Returning click extract save button
        Implementing logging for click extract save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract save button')
            self._ixreport_page.click_extract_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract save button')
            return is_clicked

    def set_extract_title(self, title_prefix):
        """
        Returning set extract title
        Implementing logging for set extract title functionality
        :param title_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set extract title')
            self._ixreport_page.set_extract_title(title_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract title')
            return is_set

    def set_extract_relative_period(self, item):
        """
        Returning set extract relative period
        Implementing logging for set extract relative period functionality
        :param item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set extract relative period')
            self._ixreport_page.set_extract_relative_period(item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract relative period')
            return is_set

    def get_created_extract_name(self):
        """
        Returning get created extract name
        Implementing logging for get created extract name functionality
        :return: extract_name
        """
        try:
            self.logger.info('Start: get created extract name')
            return self._ixreport_page.get_created_extract_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created extract name')

    def click_specific_add_button(self, extract_name):
        """
        Returning click specific add button
        Implementing logging for click specific add button functionality
        :param extract_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click specific add button')
            self._ixreport_page.click_specific_add_button(extract_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click specific add button')
            return is_clicked

    def click_extract_next_button(self):
        """
        Returning click extract next button
        Implementing logging for click extract next button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract next button')
            self._ixreport_page.click_extract_next_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract next button')
            return is_clicked

    def set_extract_schedule_name(self, name_prefix):
        """
        Returning set extract schedule name
        Implementing logging for set extract schedule name functionality
        :param name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set extract schedule name')
            self._ixreport_page.set_extract_schedule_name(name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract schedule name')
            return is_set

    def set_extract_active_time(self):
        """
        Returning set extract active time
        Implementing logging for set extract active time functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set extract active time')
            self._ixreport_page.set_extract_active_time()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract active time')
            return is_set

    def set_extract_active_date(self, relative_period):
        """
        Returning set extract active date
        Implementing logging for set extract active date functionality
        :param relative_period:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set extract active date')
            self._ixreport_page.set_extract_active_date(relative_period)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract active date')
            return is_set

    def click_extract_schedule_save_button(self):
        """
        Returning click extract schedule save button
        Implementing logging for click extract schedule save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract schedule save button')
            self._ixreport_page.click_extract_schedule_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract schedule save button')
            return is_clicked

    def is_extract_generation_present(self, extract_name):
        """
        Returning is extract generation present
        Implementing logging for is extract generation present functionality
        :param extract_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is extract generation present')
            return self._ixreport_page.is_extract_generation_present(extract_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is extract generation present')

    def is_completed_extract_status_present(self):
        """
        Returning is completed extract status present
        Implementing logging for is completed extract status present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is completed extract status present')
            return self._ixreport_page.is_completed_extract_status_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is completed extract status present')

    def click_report_page_exit_button(self):
        """
        Returning click report page exit button
        Implementing logging for click report page exit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report page exit button')
            self._ixreport_page.click_report_page_exit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report page exit button')
            return is_clicked

    def set_offers_from_date(self, offers_from_date, current_date=False, future_date=False):
        """
        Returning set offers from date
        Implementing logging for set offers from date functionality
        :param offers_from_date:
        :param current_date:
        :param future_date:
        """
        is_set = None
        try:
            self.logger.info('Start: set offers from date')
            self._ixreport_page.set_offers_from_date(offers_from_date, current_date, future_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set offers from date')
            return is_set

    def click_submit_button_and_verify_error_message(self, error_message):
        """
        Returning click submit button and verify error message
        Implementing logging for click submit button and verify error message functionality
        :param error_message:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submit button and verify error message')
            self._ixreport_page.click_submit_button_and_verify_error_message(error_message)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submit button and verify error message')
            return is_clicked

    def click_vendors_massive_lookup_button(self):
        """
        Returning click vendors massive lookup button
        Implementing logging for click vendors massive lookup button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendors massive lookup button')
            self._ixreport_page.click_vendors_massive_lookup_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendors massive lookup button')
            return is_clicked

    def move_more_than_ten_vendors_to_assign(self):
        """
        Returning move more than ten vendors to assign
        Implementing logging for move more than ten vendors to assign functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move more than ten vendors to assign')
            self._ixreport_page.move_more_than_ten_vendors_to_assign()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move more than ten vendors to assign')
            return is_moved

    def click_vendor_lookup_submit_button_and_verify_error_message(self):
        """
        Returning click vendor lookup submit button and verify error message
        Implementing logging for click vendor lookup submit button and verify error message functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor lookup submit button and verify error message')
            self._ixreport_page.click_vendor_lookup_submit_button_and_verify_error_message()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor lookup submit button and verify error message')
            return is_clicked

    def move_selected_vendors_to_available(self):
        """
        Returning move selected vendors to available
        Implementing logging for move selected vendors to available functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move selected vendors to available')
            self._ixreport_page.move_selected_vendors_to_available()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move selected vendors to available')
            return is_moved

    def set_vendor_lookup_first_letter(self, vendor_name):
        """
        Returning set vendor lookup first letter
        Implementing logging for set vendor lookup first letter functionality
        :param vendor_name:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: set vendor lookup first letter')
            self._ixreport_page.set_vendor_lookup_first_letter(vendor_name)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor lookup first letter')
            return is_moved

    def click_vendor_lookup_go_button(self):
        """
        Returning click vendor lookup go button
        Implementing logging for click vendor lookup go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor lookup go button')
            self._ixreport_page.click_vendor_lookup_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor lookup go button')
            return is_clicked

    def move_vendor_to_assigned(self):
        """
        Returning move vendor to assigned
        Implementing logging for move vendor to assigned functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move vendor to assigned')
            self._ixreport_page.move_vendor_to_assigned()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move vendor to assigned')
            return is_moved

    def click_vendor_lookup_submit_button(self):
        """
        Returning click vendor lookup submit button
        Implementing logging for click vendor lookup submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor lookup submit button')
            self._ixreport_page.click_vendor_lookup_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor lookup submit button')
            return is_clicked

    def click_first_row_vendor_name(self):
        """
        Returning click first row vendor name
        Implementing logging for click first row vendor name functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row vendor name')
            self._ixreport_page.click_first_row_vendor_name()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row vendor name')
            return is_clicked

    def verify_column_names_of_reference_rates_analysis_report_table(self, *column_name_list):
        """
        Returning verify column names of reference rates analysis report table
        Implementing logging for verify column names of reference rates analysis report table functionality
        :param column_name_list:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify column names of reference rates analysis report table')
            is_verified = self._ixreport_page.verify_column_names_of_reference_rates_analysis_report_table(column_name_list)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify column names of reference rates analysis report table')
            return is_verified

    def verify_column_names_of_reference_rates_analysis_report_layer_2_table(self, *column_name_list):
        """
        Returning verify column names of reference rates analysis report layer 2 table
        Implementing logging for verify column names of reference rates analysis report layer 2 table functionality
        :param column_name_list:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify column names of reference rates analysis report layer 2 table')
            is_verified = self._ixreport_page.verify_column_names_of_reference_rates_analysis_report_layer_2_table(column_name_list)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify column names of reference rates analysis report layer 2 table')
            return is_verified

    def is_completed_extract_delivery_status_present(self):
        """
        Returning is completed extract delivery status present
        Implementing logging for is completed extract delivery status present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is completed extract delivery status present')
            return self._ixreport_page.is_completed_extract_delivery_status_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is completed extract delivery status present')

    def is_extract_delivery_present(self, extract_name):
        """
        Returning is extract delivery present
        Implementing logging for is extract delivery present functionality
        :param extract_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is extract delivery present')
            return self._ixreport_page.is_extract_delivery_present(extract_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is extract delivery present')

    def set_process_status(self, status):
        """
        Returning set process status
        Implementing logging for set process status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set process status')
            self._ixreport_page.set_process_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set process status')
            return is_set

    def compare_process_status(self, status_to_compare):
        """
        Returning compare process status
        Implementing logging for compare process status functionality
        :param status_to_compare:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare process status')
            is_compared = self._ixreport_page.compare_process_status(status_to_compare)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare process status')
            return is_compared

    def compare_process_status_on_table(self, status_to_compare):
        """
        Returning compare process status on table
        Implementing logging for compare process status on table functionality
        :param status_to_compare:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare process status on table')
            is_compared = self._ixreport_page.compare_process_status_on_table(status_to_compare)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare process status on table')
            return is_compared

    def set_account_type(self, account_type):
        """
        Returning set account type
        Implementing logging for set account type functionality
        :param account_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set account type')
            self._ixreport_page.set_account_type(account_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set account type')
            return is_set

    def is_report_page_present_for_selected_account_type(self, account_type):
        """
        Returning is report page present for selected account type
        Implementing logging for is report page present for selected account type functionality
        :param account_type:
        :return: True/False
        """
        try:
            self.logger.info('Start: is report page present for selected account type')
            return self._ixreport_page.is_report_page_present_for_selected_account_type(account_type)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is report page present for selected account type')

    def set_fourth_level_summarize_by(self, option_text):
        """
        Returning set fourth level summarize by
        Implementing logging for set fourth level summarize by functionality
        :param option_text:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set fourth level summarize by')
            self._ixreport_page.set_fourth_level_summarize_by(option_text)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set fourth level summarize by')
            return is_set

    def set_fifth_level_summarize_by(self, option_text):
        """
        Returning set fifth level summarize by
        Implementing logging for set fifth level summarize by functionality
        :param option_text:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set fifth level summarize by')
            self._ixreport_page.set_fifth_level_summarize_by(option_text)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set fifth level summarize by')
            return is_set

    def set_begin_month(self):
        """
        Returning set begin month
        Implementing logging for set begin month functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin month')
            self._ixreport_page.set_begin_month()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin month')
            return is_set

    def click_submit_button_with_id(self):
        """
        Returning click submit button with id
        Implementing logging for click submit button with id functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submit button with id')
            self._ixreport_page.click_submit_button_with_id()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submit button with id')
            return is_clicked

    def click_new_save_my_report_button(self):
        """
        Returning click new save my report button
        Implementing logging for click new save my report button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new save my report button')
            self._ixreport_page.click_new_save_my_report_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new save my report button')
            return is_clicked

    def select_standard_tab(self):
        """
        Returning select standard tab
        Implementing logging for select standard tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select standard tab')
            self._ixreport_page.select_standard_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select standard tab')
            return is_selected

    def is_ppm_calculated_correctly(self):
        """
        Returning is ppm calculated correctly
        Implementing logging for is ppm calculated correctly functionality
        :return: True/False
        """
        calculated_correctly = None
        try:
            self.logger.info('Start: is ppm calculated correctly')
            calculated_correctly = self._ixreport_page.is_ppm_calculated_correctly()
        except WebDriverException as exp:
            calculated_correctly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is ppm calculated correctly')
            return calculated_correctly

    def click_extract_go_button(self):
        """
        Returning click extract go button
        Implementing logging for click extract go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract go button')
            self._ixreport_page.click_extract_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract go button')
            return is_clicked

    def set_report_group(self, report_group):
        """
        Returning set report group
        Implementing logging for set report group functionality
        :param report_group:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set report group')
            self._ixreport_page.set_report_group(report_group)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set report group')
            return is_set

    def set_report(self, report):
        """
        Returning set report
        Implementing logging for set report functionality
        :param report:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set report')
            self._ixreport_page.set_report_group(report)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set report')
            return is_set

    def get_my_report_title(self):
        """
        Returning get my report title
        Implementing logging for get my report title functionality
        :return: my_report_title
        """
        my_report_title = None
        try:
            self.logger.info('Start: get my report title')
            my_report_title = self._ixreport_page.get_my_report_title()
        except WebDriverException as exp:
            my_report_title = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get my report title')
            return my_report_title

    def expand_sub_report_item(self, sub_report_name):
        """
        Returning expand sub report item
        Implementing logging for expand sub report item functionality
        :param sub_report_name:
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand sub report item')
            self._ixreport_page.expand_sub_report_item(sub_report_name)
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand sub report item')
            return is_expanded

    def click_my_report_name(self, report_name):
        """
        Returning click my report name
        Implementing logging for click my report name functionality
        :param report_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click my report name')
            self._ixreport_page.click_my_report_name(report_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click my report name')
            return is_clicked

    def click_my_report_submit_button(self):
        """
        Returning click my report save button
        Implementing logging for click my report save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click my report save button')
            self._ixreport_page.click_my_report_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click my report save button')
            return is_clicked

    def expand_mor_layer_first_row(self):
        """
        Returning expand mor layer first row
        Implementing logging for expand mor layer first row functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand mor first layer first row')
            self._ixreport_page.expand_mor_layer_first_row()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand mor first layer first row')
            return is_expanded

    def switch_to_level_n_detail_frame(self):
        """
        Returning switch to level n detail frame
        Implementing logging for switch to level n detail frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to level n detail frame')
            self._ixreport_page.switch_to_level_n_detail_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to level n detail frame')
            return is_switched

    def is_sub_report_item_present(self, sub_report_name):
        """
        Returning is sub report item present
        Implementing logging for is sub report item present functionality
        :param sub_report_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is sub report item present')
            return self._ixreport_page.is_sub_report_item_present(sub_report_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is sub report item present')

    def set_select_date(self, select_date, current_date=False, future_date=False, previous_date=False):
        """
        Returning set select date
        Implementing logging for set select date functionality
        :param select_date:
        :param current_date:
        :param future_date:
        :param previous_date:
        :return: begin date
        """
        is_set = None
        try:
            self.logger.info('Start: set select date')
            self._ixreport_page.set_select_date(select_date, current_date, future_date, previous_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set select date')
            return is_set

    def set_service(self, service):
        """
        Returning set service
        Implementing logging for set service functionality
        :param service:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set service')
            self._ixreport_page.set_service(service)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set service')
            return is_set

    def get_first_row_rate_dimension_template(self):
        """
        Returning get first row rate dimension template
        Implementing logging for get first row rate dimension template functionality
        :return: True/False
        """
        rate_dimension_template = None
        try:
            self.logger.info('Start: get first row rate dimension template')
            rate_dimension_template = self._ixreport_page.get_first_row_rate_dimension_template()
        except WebDriverException as exp:
            rate_dimension_template = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row rate dimension template')
            return rate_dimension_template

    def click_rate_dimension_template_browse_button(self):
        """
        Returning click rate dimension template browse button
        Implementing logging for click rate dimension template browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rate dimension template browse button')
            self._ixreport_page.click_rate_dimension_template_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rate dimension template browse button')
            return is_clicked

    def get_second_row_account_name(self):
        """
        Returning get second row account name
        Implementing logging for get second row account name functionality
        :return: account_name
        """
        account_name = None
        try:
            self.logger.info('Start: get second row account name')
            account_name = self._ixreport_page.get_second_row_account_name()
        except WebDriverException as exp:
            account_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get second row account name')
            return account_name

    def get_second_row_parent_account_name(self):
        """
        Returning get second row parent account name
        Implementing logging for get second row parent account name functionality
        :return: account_name
        """
        account_name = None
        try:
            self.logger.info('Start: get second row parent account name')
            account_name = self._ixreport_page.get_second_row_parent_account_name()
        except WebDriverException as exp:
            account_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get second row parent account name')
            return account_name

    def click_parent_account_browse_button(self):
        """
        Returning click parent account browse button
        Implementing logging for click parent account browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click parent account browse button')
            self._ixreport_page.click_parent_account_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click parent account browse button')
            return is_clicked

    def switch_to_default_content(self):
        """
        Returning switch to default content
        Implementing logging for switch to default content functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to default content')
            self._ixreport_page.switch_to_default_content()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to default content')
            return is_switched

    def get_first_row_product_catalog(self):
        """
        Returning get first row product catalog
        Implementing logging for get first row product catalog functionality
        :return: product_catalog
        """
        product_catalog = None
        try:
            self.logger.info('Start: get first row product catalog')
            product_catalog = self._ixreport_page.get_first_row_product_catalog()
        except WebDriverException as exp:
            product_catalog = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row product catalog')
            return product_catalog

    def click_number_plan_browse_button(self):
        """
        Returning click number plan browse button
        Implementing logging for click number plan browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan browse button')
            self._ixreport_page.click_number_plan_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan browse button')
            return is_clicked

    def set_product_catalog(self, product_catalog):
        """
        Returning set product catalog
        Implementing logging for set product catalog functionality
        :param product_catalog:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set product catalog')
            self._ixreport_page.set_product_catalog(product_catalog)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set product catalog')
            return is_set

    def get_first_row_tariff_type(self):
        """
        Returning get first row tariff type
        Implementing logging for get first row tariff type functionality
        :return: tariff_type
        """
        tariff_type = None
        try:
            self.logger.info('Start: get first row tariff type')
            tariff_type = self._ixreport_page.get_first_row_tariff_type()
        except WebDriverException as exp:
            tariff_type = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row tariff type')
            return tariff_type

    def set_tariff_type(self, tariff_type):
        """
        Returning set tariff type
        Implementing logging for set tariff type functionality
        :param tariff_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set tariff type')
            self._ixreport_page.set_tariff_type(tariff_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tariff type')
            return is_set

    def get_first_row_routing_product(self):
        """
        Returning get first row routing product
        Implementing logging for get first row routing product functionality
        :return: routing_product
        """
        routing_product = None
        try:
            self.logger.info('Start: get first row routing product')
            routing_product = self._ixreport_page.get_first_row_routing_product()
        except WebDriverException as exp:
            routing_product = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row routing product')
            return routing_product

    def click_routing_product_browse_button(self):
        """
        Returning click routing product browse button
        Implementing logging for click routing product browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click routing product browse button')
            self._ixreport_page.click_routing_product_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click routing product browse button')
            return is_clicked

    def set_from_processing_date(self, from_processing_date, current_date=False, future_date=False, previous_date=False):
        """
        Returning set from processing date
        Implementing logging for set from processing date functionality
        :param from_processing_date:
        :param current_date:
        :param future_date:
        :param previous_date:
        :return: begin date
        """
        is_set = None
        try:
            self.logger.info('Start: set from processing date')
            self._ixreport_page.set_from_processing_date(from_processing_date, current_date, future_date, previous_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set from processing date')
            return is_set

    def set_switch(self, switch):
        """
        Returning set switch
        Implementing logging for set switch functionality
        :param switch:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set switch')
            self._ixreport_page.set_switch(switch)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set switch')
            return is_set

    def set_status(self, status):
        """
        Returning set status
        Implementing logging for set status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status')
            self._ixreport_page.set_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set status')
            return is_set

    def set_profile(self, profile):
        """
        Returning set profile
        Implementing logging for set profile functionality
        :param profile:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set profile')
            self._ixreport_page.set_profile(profile)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set profile')
            return is_set

    def get_first_row_status(self):
        """
        Returning get first row status
        Implementing logging for get first row status functionality
        :return: status
        """
        status = None
        try:
            self.logger.info('Start: get first row status')
            status = self._ixreport_page.get_first_row_status()
        except WebDriverException as exp:
            status = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row status')
            return status

    def get_second_row_contract_name(self):
        """
        Returning get second row contract name
        Implementing logging for get second row contract name functionality
        :return: contract_name
        """
        contract_name = None
        try:
            self.logger.info('Start: get second row contract name')
            contract_name = self._ixreport_page.get_second_row_contract_name()
        except WebDriverException as exp:
            contract_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get second row contract name')
            return contract_name

    def get_saved_contract_name(self):
        """
        Returning get saved contract name
        Implementing logging for get saved contract name functionality
        :return: contract_name
        """
        contract_name = None
        try:
            self.logger.info('Start: get saved contract name')
            contract_name = self._ixreport_page.get_saved_contract_name()
        except WebDriverException as exp:
            contract_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get saved contract name')
            return contract_name

    def get_saved_account_name(self):
        """
        Returning get saved account name
        Implementing logging for get saved account name functionality
        :return: account_name
        """
        account_name = None
        try:
            self.logger.info('Start: get saved account name')
            account_name = self._ixreport_page.get_saved_account_name()
        except WebDriverException as exp:
            account_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get saved account name')
            return account_name

    def click_contract_browse_button(self):
        """
        Returning click contract browse button
        Implementing logging for click contract browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract browse button')
            self._ixreport_page.click_contract_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract browse button')
            return is_clicked

    def click_contract_version_browse_button(self):
        """
        Returning click contract version browse button
        Implementing logging for click contract version browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract version browse button')
            self._ixreport_page.click_contract_version_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract version browse button')
            return is_clicked

    def click_country_browse_button(self, is_detail_extract_frame):
        """
        Returning click country browse button
        Implementing logging for click country browse button functionality
        :param is_detail_extract_frame:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country browse button')
            self._ixreport_page.click_country_browse_button(is_detail_extract_frame)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country browse button')
            return is_clicked

    def set_rate_type(self, rate_type):
        """
        Returning set rate type
        Implementing logging for set rate type functionality
        :param rate_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate type')
            self._ixreport_page.set_rate_type(rate_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate type')
            return is_set

    def get_second_row_credit_limit_status(self):
        """
        Returning get second row credit limit status
        Implementing logging for get second row credit limit status functionality
        :return: credit_limit_status
        """
        credit_limit_status = None
        try:
            self.logger.info('Start: get second row credit limit status')
            credit_limit_status = self._ixreport_page.get_second_row_credit_limit_status()
        except WebDriverException as exp:
            credit_limit_status = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get second row credit limit status')
            return credit_limit_status

    def click_credit_limit_status_browse_button(self):
        """
        Returning click credit limit status browse button
        Implementing logging for click credit limit status browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click credit limit status browse button')
            self._ixreport_page.click_credit_limit_status_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click credit limit status browse button')
            return is_clicked

    def get_second_row_in_account_name(self):
        """
        Returning get second row in account name
        Implementing logging for get second row in account name functionality
        :return: in_account_name
        """
        in_account_name = None
        try:
            self.logger.info('Start: get second row in account name')
            in_account_name = self._ixreport_page.get_second_row_in_account_name()
        except WebDriverException as exp:
            in_account_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get second row in account name')
            return in_account_name

    def get_second_row_out_account_name(self):
        """
        Returning get second row out account name
        Implementing logging for get second row out account name functionality
        :return: out_account_name
        """
        out_account_name = None
        try:
            self.logger.info('Start: get second row out account name')
            out_account_name = self._ixreport_page.get_second_row_out_account_name()
        except WebDriverException as exp:
            out_account_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get second row out account name')
            return out_account_name

    def get_second_row_routing_destination(self):
        """
        Returning get second row routing destination
        Implementing logging for get second row routing destination functionality
        :return: routing_destination
        """
        routing_destination = None
        try:
            self.logger.info('Start: get second row routing destination')
            routing_destination = self._ixreport_page.get_second_row_routing_destination()
        except WebDriverException as exp:
            routing_destination = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get second row routing destination')
            return routing_destination

    def click_out_account_browse_button(self):
        """
        Returning click out account browse button
        Implementing logging for click out account browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click out account browse button')
            self._ixreport_page.click_out_account_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click out account browse button')
            return is_clicked

    def click_routing_destination_browse_button(self):
        """
        Returning click routing destination browse button
        Implementing logging for click routing destination browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click routing destination browse button')
            self._ixreport_page.click_routing_destination_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click routing destination browse button')
            return is_clicked

    def set_created_date_from(self, created_date_from, current_date=False, future_date=False, previous_date=False, num_of_days_to_add=7):
        """
        Returning set created date from
        Implementing logging for set created date from functionality
        :param created_date_from:
        :param current_date:
        :param future_date:
        :param previous_date:
        :param num_of_days_to_add:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set created date from')
            self._ixreport_page.set_created_date_from(created_date_from, current_date, future_date, previous_date, num_of_days_to_add)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set created date from')
            return is_set

    def click_direction_browse_button(self):
        """
        Returning click direction browse button
        Implementing logging for click direction browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click direction browse button')
            self._ixreport_page.click_direction_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click direction browse button')
            return is_clicked

    def set_route_class(self, account_type):
        """
        Returning set route class
        Implementing logging for set route class functionality
        :param account_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class')
            self._ixreport_page.set_route_class(account_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class')
            return is_set

    def click_submit_button_to_verify_warning(self):
        """
        Returning click submit button to verify warning
        Implementing logging for click submit button to verify warning functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submit button to verify warning')
            self._ixreport_page.click_submit_button_to_verify_warning()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submit button to verify warning')
            return is_clicked

    def click_technical_trunk_browse_button(self):
        """
        Returning click technical trunk browse button
        Implementing logging for click technical trunk browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical trunk browse button')
            self._ixreport_page.click_technical_trunk_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical trunk browse button')
            return is_clicked

    def get_first_row_switch(self):
        """
        Returning get first row switch
        Implementing logging for get first row switch functionality
        :return: switch
        """
        switch = None
        try:
            self.logger.info('Start: get first row switch')
            switch = self._ixreport_page.get_first_row_switch()
        except WebDriverException as exp:
            switch = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row switch')
            return switch

    def get_first_row_technical_trunk(self):
        """
        Returning get first row technical trunk
        Implementing logging for get first row technical trunk functionality
        :return: technical_trunk
        """
        technical_trunk = None
        try:
            self.logger.info('Start: get first row technical trunk')
            technical_trunk = self._ixreport_page.get_first_row_technical_trunk()
        except WebDriverException as exp:
            technical_trunk = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row technical trunk')
            return technical_trunk

    def click_first_row_technical_trunk(self):
        """
        Returning click first row technical trunk
        Implementing logging for click first row technical trunk functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row technical trunk')
            self._ixreport_page.click_first_row_technical_trunk()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row technical trunk')
            return is_clicked

    def set_deal_name(self, created_deal_name):
        """
        Returning set deal Name
        Implementing logging for set deal name functionality
        :param created_deal_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set deal name')
            self._ixreport_page.set_deal_name(created_deal_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set deal name')
            return is_set

    def click_deal_browse_button(self):
        """
        Returning click deal browse button
        Implementing logging for click deal browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click deal browse button')
            self._ixreport_page.click_deal_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click deal browse button')
            return is_clicked

    def set_date_value_into_specific_date_field(self, text_field_name, created_date_from, current_date=False, future_date=False, previous_date=False, num_of_days_to_add=7):
        """
        Returning set date value into specific date field
        Implementing logging for set date value into specific date field functionality
        :param created_date_from:
        :param text_field_name:
        :param current_date:
        :param future_date:
        :param previous_date:
        :param num_of_days_to_add:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set date value into specific date field')
            self._ixreport_page.set_date_value_into_specific_date_field(text_field_name, created_date_from, current_date, future_date, previous_date, num_of_days_to_add)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set date value into specific date field')
            return is_set

    def click_customer_source_browse_button(self):
        """
        Returning click customer source browse button
        Implementing logging for click customer source browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer source browse button')
            self._ixreport_page.click_customer_source_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer source browse button')
            return is_clicked

    def move_customer_source_to_assigned(self):
        """
        Returning move customer source to assigned
        Implementing logging for move customer source to assigned functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move customer source to assigned')
            self._ixreport_page.move_customer_source_to_assigned()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move customer source to assigned')
            return is_moved

    def set_reference_price_list(self, price_policy):
        """
        Returning set reference price list
        Implementing logging for set reference price list functionality
        :param price_policy:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference price list')
            self._ixreport_page.set_reference_price_list(price_policy)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference price list')
            return is_set

    def set_currency(self, currency, first_item=False):
        """
        Returning set currency
        Implementing logging for set currency functionality
        :param currency:
        :param first_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set currency')
            self._ixreport_page.set_currency(currency, first_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency')
            return is_set

    def get_second_row_customer_source(self):
        """
        Returning get second row customer source
        Implementing logging for get second row customer source functionality
        :return: customer_source
        """
        customer_source = None
        try:
            self.logger.info('Start: get second row customer source')
            customer_source = self._ixreport_page.get_second_row_customer_source()
        except WebDriverException as exp:
            customer_source = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get second row customer source')
            return customer_source

    def click_account_browse_button_with_id(self):
        """
        Returning click account browse button with id
        Implementing logging for click account browse button with id functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click account browse button with id')
            self._ixreport_page.click_account_browse_button_with_id()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click account browse button with id')
            return is_clicked

    def get_cpe_traffic_report_second_row_account_name(self):
        """
        Returning get cpe traffic report second row account name
        Implementing logging for get cpe traffic report second row account name functionality
        :return: account_name
        """
        account_name = None
        try:
            self.logger.info('Start: get cpe traffic report second row account name')
            account_name = self._ixreport_page.get_cpe_traffic_report_second_row_account_name()
        except WebDriverException as exp:
            account_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cpe traffic report second row account name')
            return account_name

    def click_first_row_routing_product(self):
        """
        Returning click first row routing product
        Implementing logging for click first row routing product functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row routing product')
            self._ixreport_page.click_first_row_routing_product()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row routing product')
            return is_clicked

    def switch_to_route_guide_detail_frame(self):
        """
        Returning switch to route guide detail frame
        Implementing logging for switch to route guide detail frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to route guide detail frame')
            self._ixreport_page.switch_to_route_guide_detail_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to route guide detail frame')
            return is_switched

    def click_report_table_first_row(self):
        """
        Returning click report table first row
        Implementing logging for click report table first row functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click report table first row')
            self._ixreport_page.click_report_table_first_row()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click report table first row')
            return is_clicked

    def get_first_row_route_class(self):
        """
        Returning get first row route class
        Implementing logging for get first row route class functionality
        :return: route_class
        """
        route_class = None
        try:
            self.logger.info('Start: get first row route class')
            route_class = self._ixreport_page.get_first_row_route_class()
        except WebDriverException as exp:
            route_class = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row route class')
            return route_class

    def click_route_class_browse_button(self):
        """
        Returning click route class browse button
        Implementing logging for click route class browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route class browse button')
            self._ixreport_page.click_route_class_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route class browse button')
            return is_clicked

    def set_delta_report_item(self, item_name):
        """
        Returning set delta report item
        Implementing logging for set delta report item functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set delta report item')
            self._ixreport_page.set_delta_report_item(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set delta report item')
            return is_set

    def click_currency_browse_button(self):
        """
        Returning click currency browse button
        Implementing logging for click currency browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click currency browse button')
            self._ixreport_page.click_currency_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click currency browse button')
            return is_clicked

    def click_first_row_routing_product_for_crg(self):
        """
        Returning click first row routing product for crg
        Implementing logging for click first row routing product for crg functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row routing product for crg')
            self._ixreport_page.click_first_row_routing_product_for_crg()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row routing product for crg')
            return is_clicked

    def click_source_browse_button(self):
        """
        Returning click source browse button
        Implementing logging for click source browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click source browse button')
            self._ixreport_page.click_source_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click source browse button')
            return is_clicked

    def get_first_row_source_name(self):
        """
        Returning get first row source name
        Implementing logging for get first row source name functionality
        :return: source_name
        """
        source_name = None
        try:
            self.logger.info('Start: get first row source name')
            source_name = self._ixreport_page.get_first_row_source_name()
        except WebDriverException as exp:
            source_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row source name')
            return source_name

    def set_source_type(self, source_type):
        """
        Returning set source type
        Implementing logging for set source type functionality
        :param source_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set source type')
            self._ixreport_page.set_source_type(source_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set source type')
            return is_set

    def get_second_row_look_up_table_value(self):
        """
        Returning get second row look up table value
        Implementing logging for get second row look up table value functionality
        :return: route_class
        """
        route_class = None
        try:
            self.logger.info('Start: get second row look up table value')
            route_class = self._ixreport_page.get_second_row_look_up_table_value()
        except WebDriverException as exp:
            route_class = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get second row look up table value')
            return route_class

    def click_first_row_more_info_icon(self):
        """
        Returning click first row more info icon
        Implementing logging for click first row more info icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row more info icon')
            self._ixreport_page.click_first_row_more_info_icon()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row more info icon')
            return is_clicked

    def is_second_layer_displayed(self):
        """
        Returning is second layer displayed
        Implementing logging for is second layer displayed functionality
        :return: True/False
        """
        is_displayed = None
        try:
            self.logger.info('Start: is second layer displayed')
            is_displayed = self._ixreport_page.is_second_layer_displayed()
        except WebDriverException as exp:
            is_displayed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is second layer displayed')
            return is_displayed

    def click_offer_browse_button(self):
        """
        Returning click offer browse button
        Implementing logging for click offer browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click offer browse button')
            self._ixreport_page.click_offer_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click offer browse button')
            return is_clicked

    def set_offer_type(self, offer_type):
        """
        Returning set offer type
        Implementing logging for set offer type functionality
        :param offer_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set offer type')
            self._ixreport_page.set_offer_type(offer_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set offer type')
            return is_set

    def get_report_offer_details(self):
        """
        Returning get report offer details
        Implementing logging for get report offer details functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get report offer details')
            self._ixreport_page.get_report_offer_details()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get report offer details')
            return is_got

    def get_offer_details_from_database(self, server, database, user, password, customer_offer):
        """
        Returning get offer details from database
        Implementing logging for get offer details from database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :param customer_offer:
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get offer details from database')
            is_got = self._ixreport_page.get_offer_details_from_database(server, database, user, password, customer_offer)
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get offer details from database')
            return is_got

    def compare_report_and_database_offer_details(self):
        """
        Returning compare report and database offer details
        Implementing logging for compare report and database offer details functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare report and database offer details')
            is_compared = self._ixreport_page.compare_report_and_database_offer_details()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare report and database offer details')
            return is_compared

    def is_specific_report_displayed(self, report_name):
        """
        Returning is specific report displayed
        Implementing logging for is specific report displayed functionality
        :param report_name:
        :return: True/False
        """
        is_displayed = None
        try:
            self.logger.info('Start: is specific report displayed')
            is_displayed = self._ixreport_page.is_specific_report_displayed(report_name)
        except WebDriverException as exp:
            is_displayed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific report displayed')
            return is_displayed

    def is_specific_report_page_displayed(self, report_page_name):
        """
        Returning is specific report page displayed
        Implementing logging for is specific report page displayed functionality
        :param report_page_name:
        :return: True/False
        """
        is_displayed = None
        try:
            self.logger.info('Start: is specific report page displayed')
            is_displayed = self._ixreport_page.is_specific_report_page_displayed(report_page_name)
        except WebDriverException as exp:
            is_displayed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific report page displayed')
            return is_displayed

    def click_unified_number_plan_browse_button(self):
        """
        Returning click unified number plan browse button
        Implementing logging for click unified number plan browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click unified number plan browse button')
            self._ixreport_page.click_unified_number_plan_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click unified number plan browse button')
            return is_clicked

    def set_first_unified_number_plan_type(self):
        """
        Returning set first unified number plan type
        Implementing logging for set first unified number plan type functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first unified number plan type')
            self._ixreport_page.set_first_unified_number_plan_type()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first unified number plan type')
            return is_set

    def click_service_level_browse_button(self):
        """
        Returning click service level browse button
        Implementing logging for click service level browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click service level browse button')
            self._ixreport_page.click_service_level_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click service level browse button')
            return is_clicked

    def get_destination_from_productiXRoute_table(self, server, database, user, password):
        """
        Returning get destination from productiXRoute table
        Implementing logging for get destination from productiXRoute table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: destination
        """
        try:
            self.logger.info('Start: get destination from productiXRoute table')
            return self._ixreport_page.get_destination_from_productiXRoute_table(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destination from productiXRoute table')

    def click_destination_browse_button(self):
        """
        Returning click destination browse button
        Implementing logging for click destination browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click destination browse button')
            self._ixreport_page.click_destination_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click destination browse button')
            return is_clicked

    def is_selected_dates_are_out_of_range_warning_message_shown(self):
        """
        Returning is selected dates are out of range warning message shown
        Implementing logging for is selected dates are out of range warning message shown functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is selected dates are out of range warning message shown')
            return self._ixreport_page.is_selected_dates_are_out_of_range_warning_message_shown()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is selected dates are out of range warning message shown')

    def click_specific_view_button(self, extract_name):
        """
        Returning click specific view button
        Implementing logging for click specific view button functionality
        :param extract_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click specific view button')
            self._ixreport_page.click_specific_view_button(extract_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click specific view button')
            return is_clicked

    def click_extract_delete_button(self):
        """
        Returning click extract delete button
        Implementing logging for click extract delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract delete button')
            self._ixreport_page.click_extract_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract delete button')
            return is_clicked

    def set_extract_begin_date(self, begin_date, future_date=False, num_of_days_to_add=7, begin_date_with_upper_case_d=False):
        """
        Returning set extract begin date
        Implementing logging for set extract begin date functionality
        :param begin_date:
        :param future_date:
        :param num_of_days_to_add:
        :param begin_date_with_upper_case_d:
        :return: begin date
        """
        is_set = None
        try:
            self.logger.info('Start: set extract begin date')
            self._ixreport_page.set_extract_begin_date(begin_date, future_date, num_of_days_to_add, begin_date_with_upper_case_d)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract begin date')
            return is_set

    def click_extract_submit_button(self):
        """
        Returning click extract submit button
        Implementing logging for click extract submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract submit button')
            self._ixreport_page.click_extract_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract submit button')
            return is_clicked

    def click_accrual_check_extract_save_button(self):
        """
        Returning click accrual check extract save button
        Implementing logging for click accrual check extract save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click accrual check extract save button')
            self._ixreport_page.click_accrual_check_extract_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click accrual check extract save button')
            return is_clicked

    def click_save_button_to_verify_warning(self):
        """
        Returning click save button to verify warning
        Implementing logging for click save button to verify warning functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save button to verify warning')
            self._ixreport_page.click_save_button_to_verify_warning()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save button to verify warning')
            return is_clicked

    def click_specific_extract_name_button(self, extract_name):
        """
        Returning click specific extract name button
        Implementing logging for click specific extract name button functionality
        :param extract_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click specific extract name button')
            self._ixreport_page.click_specific_extract_name_button(extract_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click specific extract name button')
            return is_clicked

    def is_report_page_loaded_properly(self, report_title):
        """
        Returning is report page loaded properly
        Implementing logging for is report page loaded properly functionality
        :param report_title:
        :return: True/False
        """
        try:
            self.logger.info('Start: is report page loaded properly')
            return self._ixreport_page.is_report_page_loaded_properly(report_title)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is report page loaded properly')

    def is_specific_column_present_in_report_page(self, column_name):
        """
        Returning is specific column present in report page
        Implementing logging for is specific column present in report page functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column present in report page')
            return self._ixreport_page.is_specific_column_present_in_report_page(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column present in report page')

    def is_specific_column_not_present_in_report_page(self, column_name):
        """
        Returning is specific column not present in report page
        Implementing logging for is specific column not present in report page functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column not present in report page')
            return self._ixreport_page.is_specific_column_not_present_in_report_page(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column not present in report page')

    def click_specific_edit_icon(self, myreport_name):
        """
        Returning click specific edit icon
        Implementing logging for click specific edit icon functionality
        :param myreport_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click specific edit icon')
            self._ixreport_page.click_specific_edit_icon(myreport_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click specific edit icon')
            return is_clicked

    def click_myreport_edit_save_button(self):
        """
        Returning click myreport edit save button
        Implementing logging for click myreport edit save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click myreport edit save button')
            self._ixreport_page.click_myreport_edit_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click myreport edit save button')
            return is_clicked

    def click_myreport_delete_button(self):
        """
        Returning click myreport delete button
        Implementing logging for click myreport delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click myreport delete button')
            self._ixreport_page.click_myreport_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click myreport delete button')
            return is_clicked

    def is_specific_myreport_not_present(self, myreport_name):
        """
        Returning is specific myreport not present
        Implementing logging for is specific myreport not present functionality
        :param myreport_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific myreport not present')
            return self._ixreport_page.is_specific_myreport_not_present(myreport_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific myreport not present')

    def click_myreport_cancel_button(self):
        """
        Returning click myreport cancel button
        Implementing logging for click myreport cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click myreport cancel button')
            self._ixreport_page.click_myreport_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click myreport cancel button')
            return is_clicked

    def set_cdr_extract_title(self, title_prefix):
        """
        Returning set cdr extract title
        Implementing logging for set cdr extract title functionality
        :param title_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cdr extract title')
            self._ixreport_page.set_cdr_extract_title(title_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cdr extract title')
            return is_set

    def click_extract_customer_price_vs_current_cost_submit_button(self):
        """
        Returning click extract customer price vs current cost submit button
        Implementing logging for click extract customer price vs current cost submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract customer price vs current cost submit button')
            self._ixreport_page.click_extract_customer_price_vs_current_cost_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract customer price vs current cost submit button')
            return is_clicked

    def set_extract_begin_month(self):
        """
        Returning set extract begin month
        Implementing logging for set extract begin month functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set extract begin month')
            self._ixreport_page.set_extract_begin_month()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract begin month')
            return is_set

    def click_product_browse_button(self):
        """
        Returning click product browse button
        Implementing logging for click product browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click product browse button')
            self._ixreport_page.click_product_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click product browse button')
            return is_clicked

    def get_routing_product_from_productixroute_table(self, server, database, user, password, destination):
        """
        Returning get routing product from productixroute table
        Implementing logging for get routing product from productixroute table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :param destination:
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get routing product from productixroute table')
            self._ixreport_page.get_routing_product_from_productixroute_table(server, database, user, password, destination)
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get routing product from productixroute table')
            return is_got

    def compare_lookup_table_routing_product_with_database(self):
        """
        Returning compare lookup table routing product with database
        Implementing logging for compare lookup table routing product with database functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare lookup table routing product with database')
            is_compared = self._ixreport_page.compare_lookup_table_routing_product_with_database()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare lookup table routing product with database')
            return is_compared

    def is_extract_present(self, extract_name):
        """
        Returning is extract present
        Implementing logging for is extract present functionality
        :param extract_name:
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is extract present')
            is_present = self._ixreport_page.is_extract_present(extract_name)
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is extract present')
            return is_present

    def set_profit_symbol(self, symbol):
        """
        Returning set profit symbol
        Implementing logging for set profit symbol functionality
        :param symbol:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set profit symbol')
            self._ixreport_page.set_profit_symbol(symbol)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set profit symbol')
            return is_set

    def set_profit_value(self, profit_value):
        """
        Returning set profit value
        Implementing logging for set profit value functionality
        :param profit_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set profit value')
            self._ixreport_page.set_profit_value(profit_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set profit value')
            return is_set

    def click_specific_tab_on_report_page(self, tab_name):
        """
        Returning click specific tab on report page
        Implementing logging for click specific tab on report page functionality
        :param tab_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click specific tab on report page')
            self._ixreport_page.click_specific_tab_on_report_page(tab_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click specific tab on report page')
            return is_clicked

    def click_specific_download_button(self, extract_name):
        """
        Returning click specific download button
        Implementing logging for click specific download button functionality
        :param extract_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click specific download button')
            self._ixreport_page.click_specific_download_button(extract_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click specific download button')
            return is_clicked

    def get_extract_file_name(self):
        """
        Returning get extract file name
        Implementing logging for get extract file name functionality
        :return: extract_file_name
        """
        extract_file_name = None
        try:
            self.logger.info('Start: get extract file name')
            extract_file_name = self._ixreport_page.get_extract_file_name()
        except WebDriverException as exp:
            extract_file_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get extract file name')
            return extract_file_name

    def does_extract_file_exist_in_network_path(self, network_path, extract_file_name):
        """
        Returning does extract file exist in network path
        Implementing logging for does extract file exist in network path functionality
        :param network_path:
        :param extract_file_name:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: does extract file exist in network path')
            status = self._ixreport_page.does_extract_file_exist_in_network_path(network_path, extract_file_name)
        except:
            status = False
            raise
        finally:
            self.logger.info('End: does extract file exist in network path')
            return status

    def delete_extract_file_from_network_path(self, network_path, extract_file_name):
        """
        Returning delete extract file from network path
        Implementing logging for delete extract file from network path functionality
        :param network_path:
        :param extract_file_name:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: delete extract file from network path')
            self._ixreport_page.delete_extract_file_from_network_path(network_path, extract_file_name)
            status = True
        except:
            status = False
            raise
        finally:
            self.logger.info('End: delete extract file from network path')
            return status

    def click_extract_reference_set_browse_button(self):
        """
        Returning click extract reference set browse button
        Implementing logging for click extract reference set browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract reference set browse button')
            self._ixreport_page.click_extract_reference_set_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract reference set browse button')
            return is_clicked

    def click_extract_comparison_set_1_browse_button(self):
        """
        Returning click extract comparison set 1 browse button
        Implementing logging for click extract comparison set 1 browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click extract comparison set 1 browse button')
            self._ixreport_page.click_extract_comparison_set_1_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click extract comparison set 1 browse button')
            return is_clicked

    def get_first_row_effective_date(self):
        """
        Returning get first row effective date
        Implementing logging for get first row effective date functionality
        :return: effective_date
        """
        effective_date = None
        try:
            self.logger.info('Start: get first row effective date')
            effective_date = self._ixreport_page.get_first_row_effective_date()
        except WebDriverException as exp:
            effective_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row effective date')
            return effective_date

    def get_first_row_analyzed_rate(self):
        """
        Returning get first row analyzed rate
        Implementing logging for get first row analyzed rate functionality
        :return: analyzed_rate
        """
        analyzed_rate = None
        try:
            self.logger.info('Start: get first row analyzed rate')
            analyzed_rate = self._ixreport_page.get_first_row_analyzed_rate()
        except WebDriverException as exp:
            analyzed_rate = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row analyzed rate')
            return analyzed_rate

    def is_analyzed_rate_shown_up_to_six_decimal_points(self):
        """
        Returning is analyzed rate shown up to six decimal points
        Implementing logging for is analyzed rate shown up to six decimal points functionality
        :return: True/False
        """
        is_shown = None
        try:
            self.logger.info('Start: is analyzed rate shown up to six decimal points')
            is_shown = self._ixreport_page.is_analyzed_rate_shown_up_to_six_decimal_points()
        except WebDriverException as exp:
            is_shown = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is analyzed rate shown up to six decimal points')
            return is_shown

    def get_account_name_without_credit_limit(self):
        """
        Returning get account name without credit limit
        Implementing logging for get account name without credit limit functionality
        :return: account_name
        """
        account_name = None
        try:
            self.logger.info('Start: get account name without credit limit')
            account_name = self._ixreport_page.get_account_name_without_credit_limit()
        except WebDriverException as exp:
            account_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get account name without credit limit')
            return account_name

    def get_account_name_with_credit_limit_from_database(self, server, database, user, password):
        """
        Returning get account name with credit limit from database
        Implementing logging for get account name with credit limit from database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: account_name
        """
        account_name = None
        try:
            self.logger.info('Start: get account name with credit limit from database')
            account_name = self._ixreport_page.get_account_name_with_credit_limit_from_database(server, database, user, password)
        except WebDriverException as exp:
            account_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get account name with credit limit from database')
            return account_name

    def verify_row_exceed_warning_message(self):
        """
        Returning verify row exceed warning message
        Implementing logging for verify row exceed warning message functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify row exceed warning message')
            is_verified = self._ixreport_page.verify_row_exceed_warning_message()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify row exceed warning message')
            return is_verified

    def click_submit_button_with_wait(self):
        """
        Returning click submit button with wait
        Implementing logging for click submit button with wait functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submit button with wait')
            self._ixreport_page.click_submit_button_with_wait()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submit button with wait')
            return is_clicked

    def is_country_filter_available(self,):
        """
        Returning is country filter available
        Implementing logging for is country filter available functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country filter available')
            return self._ixreport_page.is_country_filter_available()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country filter available')

    def does_country_filter_have_countries(self,):
        """
        Returning does country filter have countries
        Implementing logging for does country filter have countries functionality
        :return: True/False
        """
        have_countries = None
        try:
            self.logger.info('Start: does country filter have countries')
            have_countries = self._ixreport_page.does_country_filter_have_countries()
        except WebDriverException as exp:
            have_countries = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: does country filter have countries')
            return have_countries

    def set_extract_first_level_summarize_by(self, option_text):
        """
        Returning set extract first level summarize by
        Implementing logging for set extract first level summarize by functionality
        :param option_text:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set extract first level summarize by')
            self._ixreport_page.set_extract_first_level_summarize_by(option_text)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract first level summarize by')
            return is_set

    def set_extract_second_level_summarize_by(self, option_text):
        """
        Returning set extract second level summarize by
        Implementing logging for set extract second level summarize by functionality
        :param option_text:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set extract second level summarize by')
            self._ixreport_page.set_extract_second_level_summarize_by(option_text)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set extract second level summarize by')
            return is_set

    def set_minutes(self, minutes):
        """
        Returning set minutes
        Implementing logging for set minutes functionality
        :param minutes:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set minutes')
            self._ixreport_page.set_minutes(minutes)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set minutes')
            return is_set

    def verify_first_row_actual_rate_change_in_rp_currency_column_value(self):
        """
        Returning verify first row actual rate change in rp currency column value
        Implementing logging for verify first row actual rate change in rp currency column value functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify first row actual rate change in rp currency column value')
            is_verified = self._ixreport_page.verify_first_row_actual_rate_change_in_rp_currency_column_value()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify first row actual rate change in rp currency column value')
            return is_verified

    def verify_first_row_exchange_rate_impact_column_value(self):
        """
        Returning verify first row exchange rate impact column value
        Implementing logging for verify first row exchange rate impact column value functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify first row exchange rate impact column value')
            is_verified = self._ixreport_page.verify_first_row_exchange_rate_impact_column_value()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify first row exchange rate impact column value')
            return is_verified

    def verify_first_row_rate_calculation_method_column_value(self):
        """
        Returning verify first row rate calculation method column value
        Implementing logging for verify first row rate calculation method column value functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify first row rate calculation method column value')
            is_verified = self._ixreport_page.verify_first_row_rate_calculation_method_column_value()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify first row rate calculation method column value')
            return is_verified
