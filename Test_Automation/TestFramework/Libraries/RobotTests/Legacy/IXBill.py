"""
Implementing iXBill UI page actions
Implementing Logging mechanism for iXBill UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.Legacy.ixbill_page import IXBillPage


class IXBill:
    """
    Returning switch to ixbill page
    Returning switch to dot net page frame
    Returning click new cycle template button
    Returning set cycle template name
    Returning set cycle template type
    Returning set recurrence pattern period length
    Returning set recurrence pattern period type
    Returning set recurrence pattern starting date
    Returning click new cycle template save button
    Returning is template added successfully
    Returning click cycle templates grid first page button
    Returning is created cycle loaded in grid
    Returning set template letters
    Returning click cycle template search button
    Returning close ixbill window
    Returning switch to list frame
    Returning switch to detail frame
    Returning switch to default content
    Returning click new button
    Returning set statement numbering template
    Returning set begin number
    Returning set end number
    Returning set increment
    Returning set numbering length
    Returning set prefix
    Returning click save button
    Returning click cycle and settlement management submenu
    Returning get created cycle template name
    Returning click exit button
    Returning click cover letter templates submenu
    Returning set cover letter template name
    Returning get created cover letter template name
    Returning click accounting codes submenu
    Returning set accounting code
    Returning get created accounting code
    Returning click detail frame save button
    Returning click tax templates submenu
    Returning set tax template name
    Returning get created tax templates name
    Returning set tax percentage
    Returning click accounting code browse button
    Returning set first letter
    Returning click go button
    Returning select row from look up table
    Returning set tax template begin date
    Returning set tax template end date
    Returning click charge categories submenu
    Returning set charge categories name
    Returning get charge categories name
    Returning set charge categories abbreviation
    Returning click recurring charge products submenu
    Returning set charge product name
    Returning get charge product name
    Returning select charge product category dropdown item
    Returning set recurrence pattern
    Returning click bulk user assignments submenu
    Returning is user with selected profile present
    Returning click statements submenu
    Returning set ixtools account letter
    Returning set billing account letter
    Returning click ixbill statements go button
    Returning click first company plus button
    Returning click first inner carrier plus button
    Returning is specific bill account present
    Returning click inner bill account plus button
    Returning is first statement number present
    Returning is second statement number present
    Returning click outbound statements submenu
    Returning set outbound statements worklist begin date
    Returning set outbound statements worklist end date
    Returning select billing account
    Returning click outbound statements worklist go button
    Returning get outbound statements worklist grid first row amount value
    Returning click on specific statement date
    Returning compare moved non traffic charge
    Returning click on specific statement date
    Returning click on specific cover template
    Returning set cover letter body
    Returning click save button with passing two confirmation message
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('IXBill')

    def __init__(self):
        self._ixbill_page = IXBillPage()

    def switch_to_ixbill(self):
        """
        Returning switch to ixbill
        Implementing logging for switch to ixbill functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to ixbill method')
            self._ixbill_page.switch_to_ixbill()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to ixbill method')
            return is_switched

    def switch_to_dot_net_page_frame(self):
        """
        Returning switch to dot net page frame
        Implementing logging for switch to dot net page frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to dot net page frame')
            self._ixbill_page.switch_to_dot_net_page_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to dot net page frame')
            return is_switched

    def click_new_cycle_template_button(self):
        """
        Returning click new cycle template button
        Implementing logging for click new cycle template button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new cycle template button')
            self._ixbill_page.click_new_cycle_template_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new cycle template button')
            return is_clicked

    def set_cycle_template_name(self, cycle_template_name_prefix):
        """
        Returning set cycle template name
        Implementing logging for set cycle template name functionality
        :param cycle_template_name_prefix:
        :return: cycle_template_name
        """
        cycle_template_name = None
        try:
            self.logger.info('Start: set cycle template name')
            cycle_template_name = self._ixbill_page.set_cycle_template_name(cycle_template_name_prefix)
        except WebDriverException as exp:
            cycle_template_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cycle template name')
            return cycle_template_name

    def set_cycle_template_type(self, cycle_template_type):
        """
        Returning set cycle template type
        Implementing logging for set cycle template type functionality
        :param cycle_template_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cycle template type')
            self._ixbill_page.set_cycle_template_type(cycle_template_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cycle template type')
            return is_set

    def set_recurrence_pattern_period_length(self, period_length):
        """
        Returning set recurrence pattern period length
        Implementing logging for set recurrence pattern period length functionality
        :param period_length:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set recurrence pattern period length')
            self._ixbill_page.set_recurrence_pattern_period_length(period_length)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set recurrence pattern period length')
            return is_set

    def set_recurrence_pattern_period_type(self, period_type):
        """
        Returning set recurrence pattern period type
        Implementing logging for set recurrence pattern period type functionality
        :param period_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set recurrence pattern period type')
            self._ixbill_page.set_recurrence_pattern_period_type(period_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set recurrence pattern period type')
            return is_set

    def set_recurrence_pattern_starting_date(self, starting_date):
        """
        Returning set recurrence pattern starting date
        Implementing logging for set recurrence pattern starting date functionality
        :param starting_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set recurrence pattern starting date')
            self._ixbill_page.set_recurrence_pattern_starting_date(starting_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set recurrence pattern starting date')
            return is_set

    def click_new_cycle_template_save_button(self):
        """
        Returning click new cycle template save button
        Implementing logging for click new cycle template save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new cycle template save button')
            self._ixbill_page.click_new_cycle_template_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new cycle template save button')
            return is_clicked

    def is_template_added_successfully(self):
        """
        Returning is template added successfully
        Implementing logging for is template added successfully functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is template added successfully')
            return self._ixbill_page.is_template_added_successfully()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is template added successfully')

    def click_cycle_templates_grid_first_page_button(self):
        """
        Returning click cycle templates grid first page button
        Implementing logging for click cycle templates grid first page button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cycle templates grid first page button')
            self._ixbill_page.click_cycle_templates_grid_first_page_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cycle templates grid first page button')
            return is_clicked

    def is_created_cycle_loaded_in_grid(self):
        """
        Returning is created cycle loaded in grid
        Implementing logging for is created cycle loaded in grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is created cycle loaded in grid')
            return self._ixbill_page.is_created_cycle_loaded_in_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is created cycle loaded in grid')

    def set_template_letters(self, template_letters):
        """
        Returning set template letters
        Implementing logging for set template letters functionality
        :param template_letters:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set template letters')
            self._ixbill_page.set_template_letters(template_letters)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set template letters')
            return is_set

    def click_cycle_template_search_button(self):
        """
        Returning click cycle template search button
        Implementing logging for click cycle template search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cycle template search button')
            self._ixbill_page.click_cycle_template_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cycle template search button')
            return is_clicked

    def close_ixbill_window(self):
        """
        Returning close ixbill window
        Implementing logging for close ixbill window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close ixbill window')
            self._ixbill_page.close_browser()
            self._ixbill_page.switch_to_previous_window()
            self._ixbill_page.switch_to_default_content()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close ixbill window')
            return is_closed

    def switch_to_list_frame(self):
        """
        Returning switch to list frame
        Implementing logging for switch to list frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to list frame')
            self._ixbill_page.switch_to_list_frame()
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
            self._ixbill_page.switch_to_detail_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to detail frame')
            return is_switched

    def switch_to_default_content(self):
        """
        Returning switch to default content
        Implementing logging for switch to default content functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to default content')
            self._ixbill_page.switch_to_default_content()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to default content')
            return is_switched

    def click_new_button(self):
        """
        Returning click new button
        Implementing logging for click new button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new button')
            self._ixbill_page.click_new_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new button')
            return is_clicked

    def set_statement_numbering_template(self, statement_numbering_template_prefix):
        """
        Returning set statement numbering template
        Implementing logging for set statement numbering template functionality
        :param statement_numbering_template_prefix:
        :return: statement_numbering_template
        """
        statement_numbering_template = None
        try:
            self.logger.info('Start: set statement numbering template')
            statement_numbering_template = self._ixbill_page.set_statement_numbering_template(statement_numbering_template_prefix)
        except WebDriverException as exp:
            statement_numbering_template = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement numbering template')
            return statement_numbering_template

    def set_begin_number(self, begin_number):
        """
        Returning set begin number
        Implementing logging for set begin number functionality
        :param begin_number:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin number')
            self._ixbill_page.set_begin_number(begin_number)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin number')
            return is_set

    def set_end_number(self, end_number):
        """
        Returning set end number
        Implementing logging for set end number functionality
        :param end_number:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set end number')
            if end_number != "":
                self._ixbill_page.set_end_number(end_number)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end number')
            return is_set

    def set_increment(self, increment):
        """
        Returning set increment
        Implementing logging for set increment functionality
        :param increment:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set increment')
            self._ixbill_page.set_increment(increment)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set increment')
            return is_set

    def set_numbering_length(self, numbering_length):
        """
        Returning set numbering length
        Implementing logging for set numbering length functionality
        :param numbering_length:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set numbering length')
            self._ixbill_page.set_numbering_length(numbering_length)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set numbering length')
            return is_set

    def set_prefix(self, prefix):
        """
        Returning set prefix
        Implementing logging for set prefix functionality
        :param prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set prefix')
            self._ixbill_page.set_prefix(prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set prefix')
            return is_set

    def click_save_button(self):
        """
        Returning click save button
        Implementing logging for click save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save button')
            self._ixbill_page.click_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save button')
            return is_clicked

    def click_cycle_and_settlement_management_submenu(self):
        """
        Returning click cycle and settlement management submenu
        Implementing logging for cclick cycle and settlement management submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cycle and settlement management submenu')
            self._ixbill_page.click_cycle_and_settlement_management_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cycle and settlement management submenu')
            return is_clicked

    def get_created_cycle_template_name(self):
        """
        Returning get created cycle template name
        Implementing logging for get created cycle template name functionality
        :return: cycle_template_name
        """
        cycle_template_name = None
        try:
            self.logger.info('Start: get created cycle template name')
            cycle_template_name = self._ixbill_page.get_created_cycle_template_name()
        except:
            cycle_template_name = ""
            raise
        finally:
            self.logger.info('End: get created cycle template name')
            return cycle_template_name

    def click_exit_button(self):
        """
        Returning click exit button
        Implementing logging for click exit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exit button')
            self._ixbill_page.click_exit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exit button')
            return is_clicked

    def click_cover_letter_templates_submenu(self):
        """
        Returning click cover letter templates submenu
        Implementing logging for click cover letter templates submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cover letter templates submenu')
            self._ixbill_page.click_cover_letter_templates_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cover letter templates submenu')
            return is_clicked

    def set_cover_letter_template_name(self, cover_letter_template_name_prefix):
        """
        Returning set cover letter template name
        Implementing logging for set cover letter template name functionality
        :param cover_letter_template_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cover letter template name')
            self._ixbill_page.set_cover_letter_template_name(cover_letter_template_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cover letter template name')
            return is_set

    def get_created_cover_letter_template_name(self):
        """
        Returning get created cover letter template name
        Implementing logging for get created cover letter template name functionality
        :return: cover_letter_template_name
        """
        cover_letter_template_name = None
        try:
            self.logger.info('Start: get created cover letter template name')
            cover_letter_template_name = self._ixbill_page.get_created_cover_letter_template_name()
        except:
            cover_letter_template_name = ""
            raise
        finally:
            self.logger.info('End: get created cover letter template name')
            return cover_letter_template_name

    def click_accounting_codes_submenu(self):
        """
        Returning click accounting codes submenu
        Implementing logging for click accounting codes submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click accounting codes submenu')
            self._ixbill_page.click_accounting_codes_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click accounting codes submenu')
            return is_clicked

    def set_accounting_code(self):
        """
        Returning set accounting code
        Implementing logging for set accounting code functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set accounting code')
            self._ixbill_page.set_accounting_code()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set accounting code')
            return is_set

    def get_created_accounting_code(self):
        """
        Returning get created accounting code
        Implementing logging for get created accounting code functionality
        :return: created destination
        """
        try:
            self.logger.info('Start: get created accounting code')
            return self._ixbill_page.get_created_accounting_code()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created accounting code')

    def click_detail_frame_save_button(self):
        """
        Returning click detail frame save button
        Implementing logging for click detail frame save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click detail frame save button')
            self._ixbill_page.click_detail_frame_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click detail frame save button')
            return is_clicked

    def click_tax_templates_submenu(self):
        """
        Returning click tax templates submenu
        Implementing logging for click tax templates submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click tax templates submenu')
            self._ixbill_page.click_tax_templates_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click tax templates submenu')
            return is_clicked

    def set_tax_template_name(self, template_prefix):
        """
        Returning set tax template name
        Implementing logging for set tax template name functionality
        :param template_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set tax template name')
            self._ixbill_page.set_tax_template_name(template_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tax template name')
            return is_set

    def get_created_tax_templates_name(self):
        """
        Returning get created tax templates name
        Implementing logging for get created tax templates name functionality
        :return: created destination
        """
        try:
            self.logger.info('Start: get created tax templates name')
            return self._ixbill_page.get_created_tax_templates_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created tax templates name')

    def set_tax_percentage(self, percentage):
        """
        Returning set tax percentage
        Implementing logging for set tax percentage functionality
        :param percentage:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set tax percentage')
            self._ixbill_page.set_tax_percentage(percentage)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tax percentage')
            return is_set

    def click_accounting_code_browse_button(self):
        """
        Returning click accounting code browse button
        Implementing logging for click accounting code browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click accounting code browse button')
            self._ixbill_page.click_accounting_code_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click accounting code browse button')
            return is_clicked

    def set_first_letter(self, first_letter=""):
        """
        Returning set first letter
        Implementing logging for set routing destination functionality
        :param first_letter:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set routing destination')
            self._ixbill_page.set_first_letter(first_letter)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set routing destination')
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
            self._ixbill_page.click_go_button()
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
            self._ixbill_page.select_row_from_look_up_table(row_text, first_row, second_row)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select row from look up table')
            return is_set

    def set_tax_template_begin_date(self, begin_date, current_date=False, future_date=False):
        """
        Returning set tax template begin date
        Implementing logging for set tax template begin date functionality
        :param begin_date:
        :param current_date:
        :param future_date:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set tax template begin date')
            self._ixbill_page.set_tax_template_begin_date(begin_date, current_date, future_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tax template begin date')
            return is_set

    def set_tax_template_end_date(self, end_date, future_date=False):
        """
        Returning set tax template end date
        Implementing logging for set tax template end date functionality
        :param end_date:
        :param future_date:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set tax template end date')
            self._ixbill_page.set_tax_template_end_date(end_date, future_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tax template end date')
            return is_set

    def click_charge_categories_submenu(self):
        """
        Returning click charge categories submenu
        Implementing logging for click charge categories submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click charge categories submenu')
            self._ixbill_page.click_charge_categories_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click charge categories submenu')
            return is_clicked

    def get_charge_categories_name(self):
        """
        Returning get charge categories name
        Implementing logging for get charge categories name functionality
        :return: charge categories name
        """
        try:
            self.logger.info('Start: get charge categories name')
            return self._ixbill_page.get_charge_categories_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get charge categories name')

    def set_charge_categories_name(self, prefix):
        """
        Returning set charge categories name
        Implementing logging for set charge categories name functionality
        :param prefix:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set charge categories name')
            self._ixbill_page.set_charge_categories_name(prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charge categories name')
            return is_set

    def set_charge_categories_abbreviation(self, prefix):
        """
        Returning set charge categories abbreviation
        Implementing logging for set charge categories abbreviation functionality
        :param prefix:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set charge categories abbreviation')
            self._ixbill_page.set_charge_categories_abbreviation(prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charge categories abbreviation')
            return is_set

    def click_recurring_charge_products_submenu(self):
        """
        Returning click recurring charge products submenu
        Implementing logging for click recurring charge products submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click recurring charge products submenu')
            self._ixbill_page.click_recurring_charge_products_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click recurring charge products submenu')
            return is_clicked

    def set_charge_product_name(self, prefix):
        """
        Returning set charge product name
        Implementing logging for set charge product name functionality
        :param prefix:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set charge product name')
            self._ixbill_page.set_charge_product_name(prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charge product name')
            return is_set

    def get_charge_product_name(self):
        """
        Returning get charge product name
        Implementing logging for get charge product name functionality
        :return: charge product name
        """
        try:
            self.logger.info('Start: get charge product name')
            return self._ixbill_page.get_charge_product_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get charge product name')

    def set_charge_product_abbreviation(self, prefix):
        """
        Returning set charge product abbreviation
        Implementing logging for set charge product abbreviation functionality
        :param prefix:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set charge product abbreviation')
            self._ixbill_page.set_charge_product_abbreviation(prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charge product abbreviation')
            return is_set

    def select_charge_product_category_dropdown_item(self, category):
        """
        Returning select charge product category dropdown item
        Implementing logging for select charge product category dropdown item functionality
        :param category:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: select charge product category dropdown item')
            self._ixbill_page.select_charge_product_category_dropdown_item(category)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select charge product category dropdown item')
            return is_set

    def set_recurrence_pattern(self, recurrence_value=1, period="Month(s)", starting_date="1/1/2017"):
        """
        Returning set recurrence pattern
        Implementing logging for set recurrence pattern functionality
        :param recurrence_value:
        :param period:
        :param starting_date:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set recurrence pattern')
            self._ixbill_page.set_recurrence_pattern(recurrence_value, period, starting_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set recurrence pattern')
            return is_set

    def click_bulk_user_assignments_submenu(self):
        """
        Returning click bulk user assignments submenu
        Implementing logging for click bulk user assignments submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk user assignments submenu')
            self._ixbill_page.click_bulk_user_assignments_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk user assignments submenu')
            return is_clicked

    def is_user_with_selected_profile_present(self, users_first_name):
        """
        Returning is user with selected profile present
        Implementing logging for is user with selected profile present functionality
        :param users_first_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is user with selected profile present')
            return self._ixbill_page.is_user_with_selected_profile_present(users_first_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is user with selected profile present')

    def click_statements_submenu(self):
        """
        Returning click statements submenu
        Implementing logging for click statements submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statements submenu')
            self._ixbill_page.click_statements_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statements submenu')
            return is_clicked

    def set_ixtools_account_letter(self, ixtools_account_name):
        """
        Returning set ixtools account letter
        Implementing logging for set ixtools account letter functionality
        :param ixtools_account_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set ixtools account letter')
            self._ixbill_page.set_ixtools_account_letter(ixtools_account_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set ixtools account letter')
            return is_set

    def set_billing_account_letter(self, bill_account_name):
        """
        Returning set billing account letter
        Implementing logging for set ixtools account letter functionality
        :param bill_account_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set billing account letter')
            self._ixbill_page.set_billing_account_letter(bill_account_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing account letter')
            return is_set

    def click_ixbill_statements_go_button(self):
        """
        Returning click ixbill statements go button
        Implementing logging for click ixbill statements go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click ixbill statements go button')
            self._ixbill_page.click_ixbill_statements_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click ixbill statements go button')
            return is_clicked

    def click_first_company_plus_button(self):
        """
        Returning click first company plus button
        Implementing logging for click first company plus button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first company plus button')
            self._ixbill_page.click_first_company_plus_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first company plus button')
            return is_clicked

    def click_first_inner_carrier_plus_button(self):
        """
        Returning click first inner carrier plus button
        Implementing logging for click first company plus button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first inner carrier plus button')
            self._ixbill_page.click_first_inner_carrier_plus_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first inner carrier plus button')
            return is_clicked

    def is_specific_bill_account_present(self, bill_account_name):
        """
        Returning is specific bill account present
        Implementing logging for is specific bill account present functionality
        :param bill_account_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific bill account present')
            return self._ixbill_page.is_specific_bill_account_present(bill_account_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific bill account present')

    def click_inner_bill_account_plus_button(self):
        """
        Returning click inner bill account plus button
        Implementing logging for click inner bill account plus button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inner bill account plus button')
            self._ixbill_page.click_inner_bill_account_plus_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inner bill account plus button')
            return is_clicked

    def is_first_statement_number_present(self):
        """
        Returning is first statement number present
        Implementing logging for is first statement number present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is first statement number present')
            return self._ixbill_page.is_first_statement_number_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific bill account present')

    def is_second_statement_number_present(self):
        """
        Returning is second statement number present
        Implementing logging for is second statement number present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is second statement number present')
            return self._ixbill_page.is_second_statement_number_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is second bill account present')

    def click_outbound_statements_submenu(self):
        """
        Returning click outbound statements submenu
        Implementing logging for click outbound statements submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click outbound statements submenu')
            self._ixbill_page.click_outbound_statements_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click outbound statements submenu')
            return is_clicked

    def set_outbound_statements_worklist_begin_date(self, begin_date=None):
        """
        Returning set outbound statements worklist begin date
        Implementing logging for set outbound statements worklist begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set outbound statements worklist begin date')
            self._ixbill_page.set_outbound_statements_worklist_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set outbound statements worklist begin date')
            return is_set

    def set_outbound_statements_worklist_end_date(self, end_date=None):
        """
        Returning set outbound statements worklist end date
        Implementing logging for set outbound statements worklist end date functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set outbound statements worklist end date')
            self._ixbill_page.set_outbound_statements_worklist_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set outbound statements worklist end date')
            return is_set

    def select_billing_account(self, billing_account):
        """
        Returning select billing account
        Implementing logging for select billing account functionality
        :param billing_account:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select billing account')
            self._ixbill_page.select_billing_account(billing_account)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select billing account')
            return is_selected

    def click_outbound_statements_worklist_go_button(self):
        """
        Returning click outbound statements worklist go button
        Implementing logging for click outbound statements worklist go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click outbound statements worklist go button')
            self._ixbill_page.click_outbound_statements_worklist_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click outbound statements worklist go button')
            return is_clicked

    def get_outbound_statements_worklist_grid_first_row_amount_value(self):
        """
        Returning get outbound statements worklist grid first row amount value
        Implementing logging for get outbound statements worklist grid first row amount value functionality
        :return: amount
        """
        try:
            self.logger.info('Start: get outbound statements worklist grid first row amount value')
            return self._ixbill_page.get_outbound_statements_worklist_grid_first_row_amount_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statements worklist grid first row amount value')

    def click_on_specific_statement_date(self, statement_date):
        """
        Returning click on specific statement date
        Implementing logging for click on specific statement date functionality
        :param statement_date:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on specific statement date')
            self._ixbill_page.click_on_specific_statement_date(statement_date)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on specific statement date')
            return is_clicked

    def compare_moved_non_traffic_charge(self, expected_value):
        """
        Returning compare moved non traffic charge
        Implementing logging for compare moved non traffic charge functionality
        :param expected_value:
        :return: True/False
        """
        try:
            self.logger.info('Start: compare moved non traffic charge')
            return self._ixbill_page.compare_moved_non_traffic_charge(expected_value)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare moved non traffic charge')

    def click_on_view_test_statement_link(self):
        """
        Returning click on specific statement date
        Implementing logging for click on specific statement date functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on specific statement date')
            self._ixbill_page.click_on_view_test_statement_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on specific statement date')
            return is_clicked

    def click_on_specific_cover_template(self, cover_template_name):
        """
        Returning click on specific cover template
        Implementing logging for click on specific cover template functionality
        :param cover_template_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on specific cover template')
            self._ixbill_page.click_on_specific_cover_template(cover_template_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on specific cover template')
            return is_clicked

    def set_cover_letter_body(self, body_text):
        """
        Returning set cover letter body
        Implementing logging for set cover letter body functionality
        :param body_text:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cover letter body')
            self._ixbill_page.set_cover_letter_body(body_text)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cover letter body')
            return is_set

    def click_save_button_with_passing_two_confirmation(self):
        """
        Returning click save button with passing two confirmation message
        Implementing logging for click save button with passing two confirmation message functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save button with passing two confirmation message')
            self._ixbill_page.click_save_button_with_passing_two_confirmation()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save button with passing two confirmation message')
            return is_clicked
