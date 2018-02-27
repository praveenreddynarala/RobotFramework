"""Base Page implementations"""

import TestFramework.Libraries.Modules.browser as Browser
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException, TimeoutException, ElementNotVisibleException, WebDriverException
import datetime
import time
import random
import string
import win32com.client as client
from pywinauto.application import Application
from pywinauto import findwindows
import TestFramework.Libraries.Modules.excel_reader as Excel_reader
from babel import numbers


class BasePage:
    """
    Contain global level page implementations
    Class level variables
    Wait function
    Hover function
    Switch to window function
    Switch to default window function
    Number of open window function
    Maximize window function
    Refresh window function
    Close browser function
    Page title function
    Text contains on page source function
    Select submenu function
    Script executor click function
    Script executor function
    Is element present function
    Select static tab function
    Switch to default content function
    Wait for ajax spinner load function
    Click inline action button function
    Select grid row checkbox function
    Click row information button function
    Select inline action item function
    Single selection from kendo dropdown function
    Multiple items selection from kendo dropdown function
    Get current date function
    Get future date function
    Grid filter details function
    Accept alert pop up function
    Close current tab function
    Random string generator function
    Verify grid row details function
    Get grid row details function
    Clear all table filters function
    Clear filter function
    Verify page labelwise details function
    Close current pop up function
    Select the file to be uploaded function
    Get number of rows from grid function
    Clear multiselect kendo dropdown function
    Grid filter with textbox function
    Get grid row details with unique identifier function
    Set value in grid column function
    Move available items to destination function
    Single selection from kendo in grid function
    Set value into input field function
    Single selection from static kendo dropdown function
    Check uncheck checkbox function
    Click element function
    Drag and drop function
    Get grid row count function
    Get date function
    Read data from excel file function
    Get excel data dictionary function
    Switch to frame function
    Set existing handles function
    Get alert text function
    Switch to previous window function
    Get alert text function
    Clear existing handles function
    Validate date format function
    Validate currency format
    Get specific column value from grid function
    Get text from element function
    Get label wise text function
    Accept ssl certificate function
    Set grid settings function
    Sort grid column function
    Get all rows of specific column from grid function
    Drag grid column function
    Get grid column names by order function
    Click grid export to excel button function
    Go to specific url function
    Move destination items to source function
    Select option function
    Is element visible function
    Wait for legacy screen spinner load function
    Grid filter with checkbox function
    Select opened tab function
    Get current browser name function
    Kill all opened file browsing dialogs function
    Switch to window without maximize function
    Select tab function
    """
    # Start: Base page locators
    # Start: Filter option common locators
    filter_option_locator_string = "//div[contains(@class, 'k-column-menu k-popup k-group k-reset k-state-border')]/descendant::span[text()='Filter']/../../"
    filter_input_textbox_locator = (By.XPATH, "//div[contains(@class, 'k-column-menu k-popup k-group k-reset k-state-border')]/descendant::span[text()='Filter']/../descendant::input")
    filter_button_locator = (By.XPATH, "//div[contains(@class, 'k-column-menu k-popup k-group k-reset k-state-border')]/descendant::button[text()='Filter']")
    clear_all_table_filters_locator = (By.XPATH, "//div[contains(@class, 'k-column-menu k-popup k-group k-reset k-state-border')]/descendant::span[text()='Filter']/../../li[5]")
    sort_descending_locator = (By.XPATH, "//span[text()='Sort Descending']")
    sort_ascending_locator = (By.XPATH, "//span[text()='Sort Ascending']")
    # End: Filter option common locators
    # Start: Copy page common locators
    move_single_item_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveDest')]")
    move_single_item_to_source_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveSrc')]")
    # End: Copy page common locators
    # Start: Excel Data dictionary
    excel_data_dictionary = {}

    # End: Excel Data dictionary
    # End: Base page locators

    def wait(self, value=None):
        """
        Implementing wait functionality
        :param value: Seconds
        :return:WebDriver Wait instance
        """
        return Browser.wait(value)

    def hover(self, element):
        """
        Implementing hover functionality
        :param element: WebElement locator
        :return:Mouse hover on WebElement
        """
        Browser.hover(element)

    def switch_to_window(self):
        """
        Implementing switch to window functionality
        :return:Switch to Child screen/window
        """
        Browser.switch_to_window()

    def switch_to_default_window(self):
        """
        Implementing switch to default window functionality
        :return: Switch to default screen/window
        """
        Browser.switch_to_default_window()

    def number_of_open_window(self):
        """
        Implementing number of open window functionality
        :return: Number of open window
        """
        return Browser.number_of_open_window()

    def maximize_window(self):
        """
        Implementing maximize window functionality
        Maximizes the current window that webdriver is using
        :return: Window Maximize
        """
        Browser.maximize_window()

    def refresh_window(self):
        """
        Implementing refresh window functionality
        :return: Refreshes the current page.
        """
        Browser.refresh_window()

    def close_browser(self):
        """
        Implementing close browser functionality
        :return: Closes the current window.
        """
        Browser.close_browser()

    def page_title(self):
        """
        Implementing page title functionality
        Returns the title of the current page.
        :return: Current Page Title
        """
        return Browser.page_title()

    def text_contains_on_page_source(self, text):
        """
        Implementing text contains on page source functionality
        Returns True if text is present in page source. If not False
        :param text:
        :return: True/False
        """
        return Browser.text_contains_on_page_source(text)

    def select_submenu(self, home_menu_locator, submenu_locator, script_executor=False):
        """
        Implementing select submenu functionality.
        :param home_menu_locator:Targeted home menu locator, home_menu_locator will be treated as menu locator of legacy screen when script_executor is true.
        :param submenu_locator:Targeted sub menu locator, submenu_locator will be treated as a js function when script_executor is true.
        :return:
        """
        self.set_existing_handles()
        home_menu_element = self.wait().until(EC.visibility_of_element_located(home_menu_locator), 'home menu locator not found before specified time out')
        if script_executor is True:
            self.click_element(home_menu_locator)
            self.script_executor(submenu_locator)
        else:
            self.hover(home_menu_element)
            self.click_element(submenu_locator, True)

    def script_executor_click(self, element):
        """
        Implementing script executor click functionality
        :param element: WebElement locator
        :return: Click on WebElement using JavaScript Executor,
        """
        Browser.script_executor_click(element)

    def script_executor(self, element):
        """
        Implementing script executor functionality
        :param element: WebElement
        :return: Click on WebElement using JavaScript Executor
        """
        Browser.script_executor(element)

    def is_element_present(self, locator, time_out=30):
        """
        Implementing is element present functionality
        Verify WebElement locator in page/ui
        :param locator: WebElement locator
        :return: True/False
        """
        is_present = None
        try:
            self.wait(time_out).until(EC.presence_of_element_located(locator), 'locator not found before specified time out')
            is_present = True
        except:
            is_present = False

        return is_present

    def select_static_tab(self, locator, message):
        """
        Implementing select static tab functionality
        :param locator: Static Tab element locator
        :param message:
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.click_element(locator, script_executor=True, error_message=message)

    def switch_to_default_content(self):
        """
        Implementing switch to default content functionality
        :return:
        """
        Browser.switch_to_default_content()

    def wait_for_ajax_spinner_load(self, timeout=60, ajax_spinner_locator=None):
        """
        Implementing wait for ajax spinner load functionality
        Wait until Ajax Spinner exists on UI. Once it is disappear, exit from loop
        Default time out value up to 60 secs
        :param timeout:
        :param ajax_spinner_locator:
        :return:
        """
        try:
            if ajax_spinner_locator is not None:
                ajax_spinner_load_locator = ajax_spinner_locator
            else:
                ajax_spinner_load_locator = (By.CLASS_NAME, "k-loading-image")
            ajax_spinner_control = self.wait(5).until(EC.presence_of_all_elements_located(ajax_spinner_load_locator), 'ajax spinner load locator not found before specified time out')

            end_time = time.time() + timeout
            while len(ajax_spinner_control) > 0:
                ajax_spinner_control = self.wait(5).until(EC.presence_of_all_elements_located(ajax_spinner_load_locator), 'ajax spinner load locator not found before specified time out')
                if time.time() > end_time:
                    break

        except TimeoutException:
            pass
        except NoSuchElementException:
            pass
        except ElementNotVisibleException:
            pass
        except WebDriverException:
            pass

    def click_inline_action_button(self, div_id, row_identifier_text, column_number, first_row=None):
        """
        Implementing click inline action button functionality
        :param div_id:
        :param row_identifier_text:
        :param column_number:
        :param first_row:
        :return:
        """
        if first_row is True:
            inline_action_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::tbody[@role='rowgroup']/descendant::td[%s]/span" % (div_id, str(column_number)))
        else:
            inline_action_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[text()='%s']/../../td[%s]/span" % (div_id, row_identifier_text, str(column_number)))
        self.click_element(inline_action_button_locator, True, True)

    def select_grid_row_checkbox(self, div_id, row_identifier_text, column_number, first_row=None):
        """
        Implementing select grid row checkbox functionality
        :param div_id:
        :param row_identifier_text:
        :param column_number:
        :param first_row:
        :return:
        """
        if first_row is True:
            select_grid_row_checkbox_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::td[%s]/input" % (div_id, str(column_number)))
        else:
            select_grid_row_checkbox_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[text()='%s']/../../td[%s]/input" % (div_id, row_identifier_text, str(column_number)))
        self.click_element(select_grid_row_checkbox_locator, True)

    def click_row_information_button(self, div_id, row_identifier_text, column_number):
        """
        Implementing click row information button functionality
        :param div_id:
        :param row_identifier_text:
        :param column_number:
        :return:
        """
        row_information_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[text()='%s']/../../td[%s]/div" % (div_id, row_identifier_text, str(column_number)))
        self.click_element(row_information_button_locator, True)

    def select_inline_action_item(self, inline_item_name, module_name=None):
        """
        Implementing select inline action item functionality
        :param inline_item_name:
        :param module_name:
        :return:
        """
        inline_item_locator = None
        if module_name is None:
            inline_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='%s']" % inline_item_name)
        else:
            inline_item_locator = (By.XPATH, "//ul[@id='Action_listbox']/descendant::li[text()='%s']" % inline_item_name)
        self.click_element(inline_item_locator)

    def single_selection_from_kendo_dropdown(self, kendo_dropdown_locator, dropdown_item):
        """
        Implementing single item selection from kendo dropdown functionality
        :param kendo_dropdown_locator:
        :param dropdown_item:
        :return:
        """
        kendo_dropdown_element = self.wait().until(EC.presence_of_element_located(kendo_dropdown_locator), 'kendo dropdown locator not found before specified time out')
        kendo_dropdown_element_id = kendo_dropdown_element.get_attribute("id")
        self.script_executor("$('#%s').data('kendoDropDownList').text('%s')" % (kendo_dropdown_element_id, dropdown_item))

    def multiple_items_selection_from_kendo_dropdown(self, kendo_dropdown_locator, dropdown_items, script_executor=True, listbox_id=""):
        """
        Implementing multiple items selection from kendo dropdown functionality
        :param kendo_dropdown_locator:
        :param dropdown_items:
        :param script_executor:
        :param listbox_id:
        :return:
        """
        kendo_dropdown_element = self.wait().until(EC.element_to_be_clickable(kendo_dropdown_locator), 'kendo dropdown locator not found before specified time out')
        if script_executor:
            self.script_executor_click(kendo_dropdown_element)
        else:
            kendo_dropdown_element.click()
        self.wait_for_ajax_spinner_load()
        if listbox_id == "":
            for item in dropdown_items:
                dropdown_item_locator = (By.XPATH, "//li[text()='%s']" % item)
                self.click_element(dropdown_item_locator, True)
        else:
            dropdown_item_locator = (By.XPATH, "//ul[@id='%s']/li" % listbox_id)
            self.click_element(dropdown_item_locator, True)
        self.script_executor("var elements = document.getElementsByClassName('k-list-container k-popup k-group k-reset multiselect'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].style.display = 'none';}")
        self.script_executor("var elements = document.getElementsByClassName('k-list k-reset'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].setAttribute('aria-hidden', 'true');}")

    def get_current_date(self):
        """
        Implementing get current date functionality
        :return: Current date
        """
        return time.strftime("%m/%d/%Y")

    def get_future_date(self):
        """
        Implementing get future date functionality
        :return: future date
        """
        current_date = self.get_current_date()
        modified_date = datetime.datetime.strptime(current_date, "%m/%d/%Y")
        new_date = str(modified_date + datetime.timedelta(days=7))
        return new_date

    def grid_filter_details(self, column_name, filter_item_list, div_id=None, column_position=4):
        """
        Implementing grid filter details functionality
        :param column_name:
        :param filter_item_list:
        :param div_id:
        :param column_position:
        :return:
        """
        if div_id == None:
            column_name_locator = (By.XPATH, "//th[@data-title='%s']/a[1]" % column_name)
        else:
            column_name_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']/a[1]" % (div_id, column_name))
        column_name_element = self.wait().until(EC.presence_of_element_located(column_name_locator), 'column name locator not found before specified time out')
        self.hover(column_name_element)
        self.script_executor_click(column_name_element)
        filter_option_locator = (By.XPATH, self.filter_option_locator_string + "li[%s]" % column_position)
        filter_option_element = self.wait().until(EC.visibility_of_element_located(filter_option_locator), 'filter option locator not found before specified time out')
        self.wait_for_ajax_spinner_load()
        filter_option_element.click()
        filter_input_textbox_element = self.wait().until(EC.element_to_be_clickable(self.filter_input_textbox_locator), 'kendo dropdown locator not found before specified time out')
        self.script_executor_click(filter_input_textbox_element)
        self.wait_for_ajax_spinner_load()
        for item in filter_item_list:
            dropdown_item_locator = (By.XPATH, "//li[text()='%s']" % item)
            self.click_element(dropdown_item_locator, True)
        filter_button_element = self.wait().until(EC.presence_of_element_located(self.filter_button_locator), 'filter button locator not found before specified time out')
        self.wait_for_ajax_spinner_load()
        self.script_executor_click(filter_button_element)
        self.wait_for_ajax_spinner_load()

    def accept_alert_pop_up(self):
        """
        Implementing accept alert pop up functionality
        :return:
        """
        Browser.accept_alert_pop_up()

    def dismiss_alert_pop_up(self):
        """
        Implementing dismiss alert pop up functionality
        :return:
        """
        Browser.dismiss_alert_pop_up()

    def close_current_tab(self, tab_name):
        """
        Implementing close current tab functionality
        :param tab_name:
        :return:
        """
        close_tab_img_locator = (By.XPATH, "//ul[contains(@class, 'k-reset k-tabstrip-items')]/descendant::span[contains(text(),'%s')]/../img" % tab_name)
        self.click_element(close_tab_img_locator, True)
        try:
            self.accept_alert_pop_up()
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def random_string_generator(self, size=6, chars=string.ascii_uppercase + string.digits):
        """
        Implementing random string generator functionality
        :param size:
        :param chars:
        :return: random string
        """
        return ''.join(random.SystemRandom().choice(chars) for _ in range(size))

    def verify_grid_row_details(self, div_id, row_data):
        """
        Implementing verify grid row data functionality
        :param div_id:
        :param row_data:
        :return: True/False
        """
        for key in row_data.keys():
            column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (div_id, str(key)))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/span" % (div_id, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            column_value = column_value_element.text
            if (row_data[key] != column_value):
                return False
        return True

    def get_grid_row_details(self, div_id, row_data, data_grid_name=None):
        """
        Implementing verify grid row data functionality
        :param div_id:
        :param row_data:
        :param data_grid_name:
        :return: row_data, returns grid row details according to the keys of row_data
        """
        for key in row_data.keys():
            if data_grid_name is None:
                column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (div_id, str(key)))
            else:
                column_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::th[@data-title='%s']" % (div_id, data_grid_name, str(key)))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            if data_grid_name is None:
                column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/span" % (div_id, str(column_index)))
            else:
                column_value_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/span" % (div_id, data_grid_name, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value not found before specified time out')
            column_value = column_value_element.text
            row_data[key] = str(column_value)
        return row_data

    def clear_all_table_filters(self, column_name, div_id=None):
        """
        Implementing clear all table filters functionality
        :param column_name:
        :param div_id:
        :return:
        """
        if div_id is None:
            column_name_locator = (By.XPATH, "//th[@data-title='%s']/a[1]" % column_name)
        else:
            column_name_locator = (By.XPATH, "//div[contains(@id, '%s']/descendant::th[@data-title='%s']/a[1]" % (str(div_id), column_name))
        self.click_element(column_name_locator, True)
        clear_all_table_filters_element = self.wait().until(EC.visibility_of_element_located(self.clear_all_table_filters_locator), 'clear all table filters locator not found before specified time out')
        clear_all_table_filters_element.click()
        self.wait_for_ajax_spinner_load()

    def clear_filter(self, column_name, div_id=None):
        """
        Implementing clear filter functionality
        :param column_name:
        :param div_id:
        :return:
        """
        if div_id is None:
            clear_filter_icon_locator = (By.XPATH, "//th[@data-title='%s']/a[1]/span[@class='k-icon k-filter']" % column_name)
        else:
            clear_filter_icon_locator = (By.XPATH,"//div[contains(@id, '%s']/descendant::th[@data-title='%s']/a[1]/span[@class='k-icon k-filter']" % (str(div_id), column_name))
        if (self.is_element_present(clear_filter_icon_locator)):
            self.click_element(clear_filter_icon_locator, True)

    def verify_page_labelwise_details(self, details):
        """
        Implementing verify page labelwise details functionality
        :param details: label name as key and text as value
        :return: True/False
        """
        for key in details.keys():
            labelwise_details_locator = (By.XPATH, "//label[text()='%s']/../descendant::div[@class='field-wrapper']" % str(key))
            labelwise_details_element = self.wait().until(EC.presence_of_element_located(labelwise_details_locator), 'label wise details locator not found before specified time out')
            labelwise_details_value = labelwise_details_element.text
            if (details[key] != labelwise_details_value):
                return False
        return True

    def close_current_pop_up(self, pop_up_name):
        """
        Implementing close current pop up functionality
        :param pop_up_name:
        :return:
        """
        pop_up_close_button_locator = (By.XPATH, "//span[contains(text(), '%s')]/../descendant::span[text()='Close']" % pop_up_name)
        self.click_element(pop_up_close_button_locator, True)

    def select_the_file_to_be_uploaded(self, file_path):
        """
        Implementing select the file to be uploaded functionality
        :param file_path:
        :return:
        """
        # To Do: For chrome and firefox pyautowin should be used. For now, code has been written for ie only since current test execution is run only in IE.
        modified_file_path = file_path.replace('/', '\\')

        if self.get_current_browser_name().lower() == 'ie':
            try:
                upload_dialog = Application()
                findwindows.find_window(title_re=".*Upload")
                upload_dialog.connect(title="Choose File to Upload")
                upload_dialog.ChooseFiletoUpload.wait('ready')
                upload_dialog.ChooseFiletoUpload.edit1.set_text(modified_file_path)
                upload_dialog.ChooseFiletoUpload.wait('ready')
                upload_dialog.ChooseFiletoUpload.OpenButton.click()
                file_upload_window = client.Dispatch("WScript.Shell")
                file_upload_window.SendKeys("{ENTER}")
            except:
                raise
        else:
            try:
                file_upload_window = client.Dispatch("WScript.Shell")
                file_upload_window.SendKeys(modified_file_path)
                file_upload_window.SendKeys("{ENTER}")
            except:
                raise
        self.wait_for_ajax_spinner_load()

    def get_number_of_rows_from_grid(self, div_bar_id):
        """
        Implementing get number of rows functionality
        :param div_bar_id:
        :return: number of rows
        """
        row_count_locator = (By.XPATH, "//div[contains(@id ,'%s')]/span" % div_bar_id)
        row_count_element = self.wait().until(EC.visibility_of_element_located(row_count_locator), 'row count locator not found before specified time out')
        span_text = row_count_element.text
        splited_text = span_text.split()
        length_of_splited_text = len(splited_text)
        return splited_text[length_of_splited_text - 1]

    def clear_multiselect_kendo_dropdown(self, label):
        """
        Implementing delete current status filter functionality
        :param label:
        :return:
        """
        deselect_icon_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::span[text()='delete']" % label)
        multiselect_div_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::div[@class='field-wrapper']/div/div" % label)
        multiselect_div_element = self.wait().until(EC.presence_of_element_located(multiselect_div_locator), 'multiselect div locator not found before specified time out')
        dropdown_inputbox_text = multiselect_div_element.text
        try:
            while dropdown_inputbox_text != "":
                deselect_icon_element = self.wait(5).until(EC.element_to_be_clickable(deselect_icon_locator), 'deselect icon locator not found before specified time out')
                deselect_icon_element.click()
                dropdown_inputbox_text = multiselect_div_element.text
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def grid_filter_with_textbox(self, div_id, column_name, filter_item_text, column_position=4):
        """
        Implementing grid filter details via div functionality
        :param div_id:
        :param column_name:
        :param filter_item_text:
        :param column_position:
        :return:
        """
        column_name_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']/a[1]" % (div_id, column_name))
        column_name_element = self.wait().until(EC.presence_of_element_located(column_name_locator), 'column name locator not found before specified time out')
        self.hover(column_name_element)
        self.script_executor_click(column_name_element)
        self.wait_for_ajax_spinner_load()
        filter_option_locator = (By.XPATH, self.filter_option_locator_string + "li[%s]" % column_position)
        filter_option_element = self.wait().until(EC.presence_of_element_located(filter_option_locator), 'filter option locator not found before specified time out')
        filter_option_element.click()
        self.wait_for_ajax_spinner_load()
        filter_input_textbox_element = self.wait().until(EC.presence_of_element_located(self.filter_input_textbox_locator), 'filter input textbox locator not found before specified time out')
        filter_input_textbox_element.click()
        text_from_shell = client.Dispatch("WScript.Shell")
        text_from_shell.SendKeys(filter_item_text)
        self.wait_for_ajax_spinner_load()
        text_from_shell.SendKeys("{ENTER}")
        self.wait_for_ajax_spinner_load()

    def get_grid_row_details_with_unique_identifier(self, div_id, row_data, unique_identifier):
        """
        Implementing get grid row details with unique identifier functionality
        :param div_id:
        :param row_data:
        :param unique_identifier:
        :return: row_data, returns grid row details according to the keys of row_data
        """
        for key in row_data.keys():
            column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (div_id, str(key)))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::span[text()='%s']/../../td[%s]/span" % (div_id, unique_identifier, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            column_value = column_value_element.get_attribute('textContent')
            row_data[key] = str(column_value)
        return row_data

    def set_value_in_grid_column(self, div_id, column_name, column_value, script_executor=False):
        """
        Implementing set value in grid column functionality
        :param div_id:
        :param column_name:
        :param column_value:
        :param script_executor:
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % (div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.element_to_be_clickable(first_row_column_locator), 'first row column locator not found before specified time out')
        if script_executor:
            self.script_executor_click(first_row_column_element)
        else:
            first_row_column_element.click()
        self.wait_for_ajax_spinner_load()
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(str(column_value))

    def move_available_items_to_destination(self, source_id, item_list, move_button_locator=None):
        """
        Implementing move available items to destination functionality
        :param source_id:
        :param item_list:
        :param move_button_locator:
        :return:
        """
        for item in item_list:
            item_selection_locator = (By.XPATH, "//select[@id='%s']/descendant::option[text()='%s']" % (source_id, item))
            self.click_element(item_selection_locator)
            if move_button_locator is None:
                move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.move_single_item_button_locator), 'move single item button locator not found before specified time out')
            else:
                move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(move_button_locator), 'move single item button locator not found before specified time out')
            move_single_item_button_element.click()
        self.wait_for_ajax_spinner_load()

    def single_selection_from_kendo_in_grid(self, div_id, column_name, column_value, data_grid_name=None):
        """
        Implementing single selection from kendo in grid functionality
        :param div_id:
        :param column_name:
        :param column_value:
        :param column_value:
        :param data_grid_name:
        :return:
        """
        column_locator = (By.XPATH, "//th[@data-title='%s']" % column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        if data_grid_name is None:
            first_row_column_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::span[@class='k-grid-cell']" % (div_id, str(column_index)))
            kendo_dropdown_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::input" % (div_id, str(column_index)))
        else:
            first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::span[@class='k-grid-cell']" % (div_id, data_grid_name, str(column_index)))
            kendo_dropdown_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::input" % (div_id, data_grid_name, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        self.script_executor_click(first_row_column_element)
        self.single_selection_from_kendo_dropdown(kendo_dropdown_locator, column_value)
        self.wait_for_ajax_spinner_load()

    def set_value_into_input_field(self, input_field_locator, value, use_win32com=False, script_executor=False):
        """
        Implementing set value into input field functionality
        :param input_field_locator:
        :param value:
        :param use_win32com:
        :param script_executor:
        :return:
        """
        input_field_element = self.wait().until(EC.presence_of_element_located(input_field_locator), 'input field locator not found before specified time out')
        if use_win32com is True:
            if script_executor is True:
                self.script_executor_click(input_field_element)
            else:
                input_field_element.click()
            input_field = client.Dispatch("WScript.Shell")
            input_field.SendKeys("^a")
            input_field.SendKeys("{DEL}")
            input_field.SendKeys(str(value))
        else:
            input_field_element.clear()
            input_field_element.send_keys(value)
        self.wait_for_ajax_spinner_load()

    def single_selection_from_static_kendo_dropdown(self, dropdown_arrow_locator, item_name=None, find_locator_with_class=False, first_item=False):
        """
        Implementing single selection from static kendo dropdown functionality
        :param dropdown_arrow_locator:
        :param item_name:
        :param first_item:
        :param find_locator_with_class:
        :return:
        """
        self.click_element(dropdown_arrow_locator, True, True)
        if first_item is not True:
            if find_locator_with_class is True:
                dropdown_item_locator = (By.XPATH, "//ul[@class='rcbList']/descendant::li[text()='%s']" % item_name)
            else:
                dropdown_item_locator = (By.XPATH, "//ul[@aria-hidden='false' and @role='listbox']/descendant::li[text()='%s']" % item_name)
        else:
            if find_locator_with_class is True:
                dropdown_item_locator = (By.XPATH, "//ul[@class='rcbList']/li")
            else:
                dropdown_item_locator = (By.XPATH, "//ul[@aria-hidden='false' and @role='listbox']/li")
        self.click_element(dropdown_item_locator, script_executor=True)

    def click_element(self, locator, script_executor=False, hover=False, error_message=None, legacy_screen_loader=False):
        """
        Implementing click element functionality
        :param locator:
        :param script_executor:
        :param hover:
        :return:
        """
        custom_error_message = 'locator not found before specified time out'
        if error_message is not None:
            custom_error_message = error_message

        element = self.wait().until(EC.element_to_be_clickable(locator), custom_error_message)
        if hover is True:
            self.hover(element)
        if script_executor is True:
            self.script_executor_click(element)
        else:
            element.click()
        if legacy_screen_loader is True:
            self.wait_for_legacy_screen_spinner_load()
        else:
            self.wait_for_ajax_spinner_load()

    def check_uncheck_checkbox(self, label_name):
        """
        Implementing check uncheck checkbox functionality
        :param label_name:
        :return:
        """
        checkbox_locator = (By.XPATH, "//label[text()='%s']/../descendant::input[@type='checkbox']" % label_name)
        self.click_element(checkbox_locator, script_executor=True)

    def drag_and_drop(self, source, target):
        """
        Implementing drag and drop functionality
        :param source:
        :param target:
        :return:
        """
        Browser.drag_and_drop(source, target)

    def get_grid_row_count(self, count_span_locator, count_text_index):
        """
        Implementing get grid row count functionality
        :param count_span_locator:
        :param count_text_index: integer
        :return: row_count
        """
        row_count = 0
        try:
            count_span_element = self.wait().until(EC.presence_of_element_located(count_span_locator), 'count span locator not found before specified time out')
            count_span_text = count_span_element.text.split()
            row_count = int(count_span_text[count_text_index])
        except:
            pass
        finally:
            return row_count

    def get_date(self, given_date=None, current_date=False, future_date=False, past_date=False, number_of_days_to_add=7, number_of_days_to_back=7, first_day_of_last_month=False, last_day_of_last_month=False, first_day_of_current_month=False, last_day_of_current_month=False):
        """
        Implementing get date functionality.
            Current day is set to given_date if any date parameter is passed, Returns current date if current_date is True, future date if future_date is True, number_of_days_to_add indicates the number of day(s) to add with current date to get the future date,
            Returns first day of previous month if first_day_of_last_month is True, last day of previous month if last_day_of_last_month is True, first day of current month if first_day_of_current_month is True, last day of current month if last_day_of_current_month is True.
        :param given_date:
        :param current_date:
        :param future_date:
        :param past_date:
        :param number_of_days_to_add:
        :param number_of_days_to_back:
        :param first_day_of_last_month:
        :param last_day_of_last_month:
        :param first_day_of_current_month:
        :param last_day_of_current_month:
        :return: expected_date
        """
        if given_date is None:
            current_day = datetime.date.today()
        else:
            current_day = datetime.datetime.strptime(given_date, "%m/%d/%Y")
        expected_date = current_day
        if current_date is True:
            expected_date = "%d/%d/%d" % (current_day.month, current_day.day, current_day.year)
        elif future_date is True:
            future_day = current_day + datetime.timedelta(days=number_of_days_to_add)
            expected_date = "%d/%d/%d" % (future_day.month, future_day.day, future_day.year)
        elif past_date is True:
            past_day = current_day - datetime.timedelta(days=number_of_days_to_back)
            expected_date = "%d/%d/%d" % (past_day.month, past_day.day, past_day.year)
        elif last_day_of_current_month is True:
            next_month = current_day.replace(day=28) + datetime.timedelta(days=4)
            last_day_of_current_month = next_month - datetime.timedelta(days=next_month.day)
            expected_date = "%d/%d/%d" % (
            last_day_of_current_month.month, last_day_of_current_month.day, last_day_of_current_month.year)
        elif first_day_of_current_month is True:
            first_day_of_current_month = current_day.replace(day=1)
            expected_date = "%d/%d/%d" % (
            first_day_of_current_month.month, first_day_of_current_month.day, first_day_of_current_month.year)
        elif last_day_of_last_month is True:
            last_day_of_last_month = current_day - datetime.timedelta(days=current_day.day)
            expected_date = "%d/%d/%d" % (
            last_day_of_last_month.month, last_day_of_last_month.day, last_day_of_last_month.year)
        elif first_day_of_last_month is True:
            last_month = current_day - datetime.timedelta(days=current_day.day)
            last_month_first_day = last_month.replace(day=1)
            expected_date = "%d/%d/%d" % (
            last_month_first_day.month, last_month_first_day.day, last_month_first_day.year)
        return expected_date

    def read_data_from_excel_file(self, file_path):
        """
        Implementing read data from excel file functionality
        :param file_path:
        :return:
        """
        self.excel_data_dictionary = Excel_reader.read_data_from_excel_file(file_path)

    def get_excel_data_dictionary(self):
        """
        Implementing get excel data dictionary functionality
        :return: excel_data_dictionary
        """
        return self.excel_data_dictionary

    def switch_to_frame(self, frame_locator):
        """
        Implementing switch to frame functionality
        :param frame_locator:
        :return:
        """
        frame_element = self.wait().until(EC.frame_to_be_available_and_switch_to_it(frame_locator), 'frame locator not found before specified timeout')
        Browser.switch_to_frame(frame_element)

    def set_existing_handles(self):
        """
        Implementing set existing handles functionality
        :return:
        """
        Browser.set_existing_handles()

    def clear_existing_handles(self):
        """
        Implementing clear existing handles functionality
        :return:
        """
        Browser.clear_existing_handles()

    def get_alert_text(self):
        """
        Implementing get alert text functionality
        :return: alert text
        """
        return Browser.get_alert_text()

    def switch_to_previous_window(self):
        """
        Implementing switch to previous window functionality
        :return:
        """
        Browser.switch_to_previous_window()
        self.wait_for_ajax_spinner_load()

    def get_specific_column_value_from_grid(self, div_id, grid_row_count, column_name, data_grid_name=None):
        """
        Implementing get specific column value from grid functionality
        :param div_id:
        :param grid_row_count:
        :param column_name:
        :param data_grid_name:
        :return:
        """
        column_value = ""

        if data_grid_name is None:
            column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (div_id, column_name))
        else:
            column_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::th[@data-title='%s']" % (div_id, data_grid_name, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        try:
            if grid_row_count > 0:
                if grid_row_count > 10:
                    grid_row_count = 10
                for row in range(0, grid_row_count):
                    if data_grid_name is None:
                        column_value_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/span)[%s]" % (div_id, str(column_index), (row + 1)))
                    else:
                        column_value_locator = (By.XPATH, "(//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::tbody/descendant::tr/td[%s]/span)[%s]" % (div_id, data_grid_name, str(column_index), (row + 1)))
                    column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                    column_value = str(column_value_element.text)
                    if column_value is not "":
                        break
            else:
                column_value = "The grid is empty"
        except:
            pass
        finally:
            return column_value

    def validate_date_format(self, actual_date, expected_date_format):
        """
        Implementing validate date format functionality
        :param actual_date:
        :param expected_date_format:
        :return: True/False
        """
        try:
            datetime.datetime.strptime(actual_date.strip(), expected_date_format.strip())
            is_a_valid_format = True
        except:
            is_a_valid_format = False
        return is_a_valid_format

    def validate_currency_format(self, actual_currency_format, expected_locale):
        """
        Implementing validate currency format functionality
        :param actual_currency_format:
        :param expected_locale:
        :return: True/False
        """
        try:
            numbers.parse_decimal(actual_currency_format.strip(), locale=expected_locale.strip())
            is_a_valid_format = True
        except:
            is_a_valid_format = False
        return is_a_valid_format

    def get_text_from_element(self, locator, is_a_input_field=False):
        """
        Implementing get text from element functionality
        :return: element's text
        :param locator:
        :param is_a_input_field:
        """
        element = self.wait().until(EC.presence_of_element_located(locator), 'locator not found before specified time out')
        if is_a_input_field is True:
            text = str(element.get_attribute("value")).strip()
        else:
            text = str(element.text).strip()
        return text

    def get_label_wise_text(self, label_name):
        """
        Implementing get label wise text functionality
        :param label_name:
        :return: label text
        """
        labels_text_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::div[@class='field-wrapper']" % label_name)
        labels_text_element = self.wait().until(EC.presence_of_element_located(labels_text_locator), 'labels text locator not found before specified time out')
        return labels_text_element.text

    def accept_ssl_certificate(self):
        """
        Implementing accept ssl certificate functionality
        :return:
        """
        Browser.accept_ssl_certificate()

    def set_grid_settings(self, div_id, grid_setting):
        """
        Implementing set grid settings functionality
        :return:
        """
        grid_settings_menu_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::li[@role='menuitem']/descendant::span[@class='k-icon k-i-arrow-s']" % div_id)
        grid_settings_menu_element = self.wait().until(EC.presence_of_element_located(grid_settings_menu_locator), 'grid settings menu locator not found before specified time out')
        grid_settings_menu_element.click()
        self.wait_for_ajax_spinner_load()
        grid_setting_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[text()='%s']" % (div_id, grid_setting))
        self.click_element(grid_setting_locator)

    def sort_grid_column(self, div_id, column_name, sort_descending=False):
        """
        Implementing sort grid column functionality
        :param div_id:
        :param column_name:
        :param sort_descending:
        :return:
        """
        column_name_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']/a[1]" % (div_id, column_name))
        column_name_element = self.wait().until(EC.presence_of_element_located(column_name_locator), 'column name locator not found before specified time out')
        self.hover(column_name_element)
        self.script_executor_click(column_name_element)
        self.wait_for_ajax_spinner_load()
        if sort_descending:
            self.click_element(self.sort_descending_locator, True)
        else:
            self.click_element(self.sort_ascending_locator, True)

    def get_all_rows_of_specific_column_from_grid(self, div_id, column_name, row_count=1000):
        """
        Implementing get all rows of specific column from grid functionality
        :return: all_row_data
        """
        all_row_data = []
        last_iteration_row_data = []
        next_page = False
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        row = 1
        try:
            while row < row_count+1:
                column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tbody[@role='rowgroup']/tr[%s]/td[%s]/descendant::span" % (div_id, row, str(column_index)))
                column_value_element = self.wait(10).until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = str(column_value_element.get_attribute("innerHTML"))
                if column_value not in all_row_data:
                    all_row_data.append(column_value)
                else:
                    row_count += 1
                if row % 50 == 0:
                    if last_iteration_row_data == all_row_data:
                        break
                    else:
                        last_iteration_row_data = list(all_row_data)
                    next_page = True
                    next_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-arrow-e']" % div_id)
                    self.click_element(next_page_button_locator, True)
                    row = 0
                    row_count -= 50
                row += 1
        except WebDriverException:
            pass
        if next_page is True:
            first_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-seek-w']" % div_id)
            self.click_element(first_page_button_locator, True)
        return all_row_data

    def drag_grid_column(self, div_id, source_column, destination_column):
        """
        Implementing drag grid column functionality
        :param div_id:
        :param source_column:
        :param destination_column:
        :return:
        """
        source_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (div_id, source_column))
        source_column_element = self.wait().until(EC.presence_of_element_located(source_column_locator), 'source column locator not found before specified time out')
        destination_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (div_id, destination_column))
        destination_column_element = self.wait().until(EC.presence_of_element_located(destination_column_locator), 'destination column locator not found before specified time out')
        self.drag_and_drop(source_column_element, destination_column_element)

    def get_grid_column_names_by_order(self, div_id):
        """
        Implementing get grid column names by order functionality
        :return: grid_column_name_list
        """
        grid_column_name_list = []
        iterate = True
        column_no = 1
        while iterate:
            try:
                column_name_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[%s]" % (div_id, str(column_no)))
                column_name_element = self.wait(10).until(EC.presence_of_element_located(column_name_locator), 'column name locator not found before specified time out')
                grid_column_name_list.append(str(column_name_element.get_attribute("data-title")))
                column_no += 1
            except:
                iterate = False
                pass
        return grid_column_name_list

    def click_grid_export_to_excel_button(self, div_id):
        """
        Implementing set grid settings functionality
        :return:
        """
        grid_settings_menu_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::li[@role='menuitem']/descendant::span[@class='k-icon k-i-arrow-s']" % div_id)
        self.click_element(grid_settings_menu_locator)

    def goto_specific_url(self, value):
        """
        Implementing go to specific url functionality
        :param value:
        :return:
        """
        Browser.goto_specific_url(value)

    def move_destination_items_to_source(self, destination_id, item_list, move_button_locator=None):
        """
        Implementing move destination items to source functionality
        :param destination_id:
        :param item_list:
        :param move_button_locator:
        :return:
        """
        for item in item_list:
            item_selection_locator = (By.XPATH, "//select[@id='%s']/descendant::option[text()='%s']" % (destination_id, item))
            self.click_element(item_selection_locator)
            if move_button_locator is None:
                move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.move_single_item_to_source_button_locator), 'move single item to source button locator not found before specified time out')
            else:
                move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(move_button_locator), 'move button locator not found before specified time out')
            move_single_item_button_element.click()
        self.wait_for_ajax_spinner_load()

    def select_option(self, select_locator, option_text, select_id=None, first_item=False):
        """
        Implementing select option functionality
        :param select_locator:
        :param option_text:
        :param select_id:
        :param first_item:
        :return:
        """
        self.click_element(select_locator, legacy_screen_loader=True)
        if first_item is False:
            if select_id is not None:
                option_locator = (By.XPATH, "//select[@id='%s']/option[text()='%s']" % (select_id, option_text))
            else:
                option_locator = (By.XPATH, "//option[text()='%s']" % option_text)
        else:
            option_locator = (By.XPATH, "//select[contains(@id, '%s')]/option[2]" % select_id)
        self.click_element(option_locator, legacy_screen_loader=True)

    def get_current_browser_name(self):
        """
        Implementing get current browser name functionality
        :return: _current_browser_name
        """
        return Browser.get_current_browser_name()

    def kill_all_opened_file_browsing_dialogs(self):
        """
        Implementing kill all opened file browsing dialogs functionality
        :return:
        """
        # To Do: For chrome and firefox pyautowin should be used. For now, code has been written for ie only since current test execution is run only in IE.
        if self.get_current_browser_name().lower() == 'ie':
            try:
                file_upload_dialogs = findwindows.find_windows(title_re=".*Upload")
                if len(file_upload_dialogs) > 0:
                    for dialog in file_upload_dialogs:
                        Application().connect(handle=dialog).kill()
            except:
                pass

    def is_element_visible(self, locator):
        """
        Implementing is element visible functionality
        Verify WebElement locator is visible in page/ui
        :param locator: WebElement locator
        :return: True/False
        """
        is_visible = None
        try:
            self.wait(30).until(EC.visibility_of_element_located(locator), 'locator not found before specified time out')
            is_visible = True
        except:
            is_visible = False
        return is_visible

    def wait_for_legacy_screen_spinner_load(self, timeout=60, spinner_locator=None):
        """
        Implementing wait for legacy screen spinner load
        Wait until Legacy Screen Spinner exists on UI. Once it is disappear, exit from loop
        Default time out value up to 60 secs
        :param timeout:
        :param spinner_locator:
        :return:
        """
        try:
            if spinner_locator is None:
                legacy_screen_spinner_load_locator = (By.ID, "BlockScreenImg")
            else:
                legacy_screen_spinner_load_locator = spinner_locator
            legacy_screen_spinner_control = self.wait(5).until(EC.visibility_of_any_elements_located(legacy_screen_spinner_load_locator), 'legacy screen spinner load locator not found before specified time out')

            end_time = time.time() + timeout
            while len(legacy_screen_spinner_control) > 0:
                legacy_screen_spinner_control = self.wait(5).until(EC.visibility_of_any_elements_located(legacy_screen_spinner_load_locator), 'legacy screen spinner load locator not found before specified time out')
                if time.time() > end_time:
                    break
        except TimeoutException:
            pass
        except NoSuchElementException:
            pass
        except ElementNotVisibleException:
            pass
        except WebDriverException:
            pass

    def grid_filter_with_checkbox(self, div_id, column_name, checked_status, column_position=4):
        """
        Implementing grid filter with checkbox functionality
        :param div_id:
        :param column_name:
        :param checked_status:
        :param column_position:
        :return:
        """
        column_name_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']/a[1]" % (div_id, column_name))
        column_name_element = self.wait().until(EC.presence_of_element_located(column_name_locator), 'column name locator not found before specified time out')
        self.hover(column_name_element)
        self.script_executor_click(column_name_element)
        self.wait_for_ajax_spinner_load()
        filter_option_locator = (By.XPATH, self.filter_option_locator_string + "li[%s]" % column_position)
        filter_option_element = self.wait().until(EC.presence_of_element_located(filter_option_locator), 'filter option locator not found before specified time out')
        filter_option_element.click()
        self.wait_for_ajax_spinner_load()
        if checked_status is True:
            filter_item_locator = (By.XPATH, "//label[text()='is true']/input[@type='radio' and @value='true']")
        else:
            filter_item_locator = (By.XPATH, "//label[text()='is false']/input[@type='radio' and @value='false']")
        filter_item_element = self.wait().until(EC.presence_of_element_located(filter_item_locator), 'filter item locator not found before specified time out')
        self.script_executor_click(filter_item_element)
        filter_button_element = self.wait().until(EC.presence_of_element_located(self.filter_button_locator), 'filter button locator not found before specified time out')
        self.wait_for_ajax_spinner_load()
        self.script_executor_click(filter_button_element)
        self.wait_for_ajax_spinner_load()

    def select_opened_tab(self, tab_name):
        """
        Implementing select opened tab functionality
        :param tab_name:
        :return:
        """
        tab_locator = (By.XPATH, "//ul[contains(@class, 'k-reset k-tabstrip-items')]/descendant::span[@class='k-link' and contains(text(), '%s')]" % tab_name)
        self.click_element(tab_locator, True)

    def select_tab(self, tab_name):
        """
        Implementing select tab functionality
        :param tab_name:
        :return:
        """
        tab_img_locator = (By.XPATH, "//ul[contains(@class, 'k-reset k-tabstrip-items')]/descendant::span[contains(text(),'%s')]" % tab_name)
        self.click_element(tab_img_locator, True)

    def switch_to_window_without_maximize(self):
        """
        Implementing switch to window without maximize functionality
        :return:Switch to Child screen/window
        """
        Browser.switch_to_window(maximize=False)
