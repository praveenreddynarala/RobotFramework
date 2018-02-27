"""Implementing Network screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from TestFramework.Libraries.Pages.carrier_page import CarrierPage
import TestFramework.Libraries.Modules.database as Database
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class NetworkPage(BasePage):
    """
    Contains Network UI page locators
    Switch to network function
    Get network page title function
    Is network dashboard tab present function
    Is network technical trunks tab present function
    Is network commercial trunks tab present function
    Select technical trunks tab function
    Get technical trunks tab header function
    Select commercial trunks tab function
    Get commercial trunks tab header function
    Is technical trunks tab loaded properly function
    Set technical trunk for search function
    Set status for search function
    Set date for search function
    Click technical trunks tab search button function
    Data loading status in the grid function
    Click create new technical trunk button function
    Set technical trunk for create technical trunk function
    Set trunk type for create technical trunk function
    Set switch for create technical trunk function
    Set carrier for create technical trunk function
    Set cdr match for create technical trunk function
    Click technical trunk attributes tab function
    Set effective date for create technical trunk function
    Set status for create technical trunk function
    Set activated ports for create technical trunk function
    Set commercial trunk for create technical trunk function
    Set direction for create technical trunk function
    Create new technical trunk save button function
    Filter technical trunks grid function
    Get technical trunks grid row data function
    Select technical trunks grid row function
    Set note in technical trunks grid function
    Set clli in technical trunks grid function
    Click save changes button function
    Click create new commercial trunk button function
    Set trunk for create commercial trunk function
    Set account for create commercial trunk function
    Set effective date for create commercial trunk function
    Set status for create commercial trunk function
    Set direction for create commercial trunk function
    Click create commercial trunk save button function
    Set commercial trunk function
    Click commercial trunk search button function
    Get commercial trunks grid row data function
    Set commercial trunk select date function
    Set commercial trunk for search function
    Click commercial trunks search button function
    Set status for edit commercial trunk function
    Set direction for edit commercial trunk function
    Set effective date for edit commercial trunk function
    Set clli for edit commercial trunk function
    Set note for edit commercial trunk function
    Get commercial trunks grid row data function
    Get technical trunk select date function
    Click technical trunk grid first row inline action button function
    Get technical trunk attributes grid begin date column value function
    Get technical trunk attributes grid end date column value function
    Select technical trunk inline action item function
    Get technical trunk attributes grid modified date column value function
    Get commercial trunk select date function
    Get commercial trunk grid effective date column value function
    Get commercial trunk grid modified date column value function
    Get created account function
    Get created commercial trunk function
    Get commercial trunk effective date function
    Create new switch function
    Delete created switch function
    Get created switch function
    Get created technical trunk function
    Set transmission type for create technical trunk function
    Compare sorted data function
    Compare grid column position after altering function
    Set technical trunks grid settings function
    Sort technical trunks grid column function
    Get all rows of specific column from technical trunks grid function
    Drag technical trunks grid column function
    Get technical trunks grid column names by order function
    Click technical trunks grid export to excel button function
    Click rg adjuster button function
    Is technical route guide adjuster loaded properly function
    Is technical trunk attributes grid column present function
    Select technical trunk details tab function
    Is technical trunk details field present function
    Click technical trunk attributes grid first row inline action button function
    Get technical trunk name function
    Get technical trunk cdr match  function
    Click create new technical trunk save button with validation function
    Set note function
    """
    carrier_page = CarrierPage()
    # Start: Network page locators
    default_tab_header_locator = (By.XPATH, "//div[@id='NetworkTabStrip-1']/descendant::h3")
    network_dashboard_tab_locator = (By.XPATH, "//div[@id='NetworkTabStrip']/descendant::li[@aria-controls='NetworkTabStrip-1']/descendant::a")
    network_module_name = "Network"
    all_row_data = []
    column_name_list = []

    # Start: Technical Trunks tab locators
    technical_trunks_grid_checkbox_column_number = 2
    technical_trunks_tab_locator = (By.XPATH, "//div[@id='NetworkTabStrip']/descendant::li[@aria-controls='NetworkTabStrip-2']/descendant::a")
    technical_trunks_tab_header_locator = (By.XPATH, "//div[@id='divNTTMain']/descendant::h3")
    technical_trunk_textbox_locator = (By.XPATH, "//input[@id='txtNTTTrunk']")
    status_kendo_dropdown_locator = (By.XPATH, "//span[@id='selCountNTTStatus']/../../descendant::input")
    select_date_locator = (By.XPATH, "//input[@id='dtpNTTSelectDate']")
    technical_trunks_tab_search_button_locator = (By.ID, "btnNTTSearch")
    no_records_found_locator = (By.XPATH, "//span[text()='No records found.']")
    status_kendo_dropdown_label = "Status"
    create_new_technical_trunk_button_locator = (By.XPATH, "//a[text()='Create New Technical Trunk']")
    save_changes_button_locator = (By.XPATH, "//a[text()='Save changes']")
    technical_trunks_attributes_grid_div_id = "divNTTEdAttrGrid"
    technical_trunks_grid_inline_action_column_number = 3
    rg_adjuster_button_locator = (By.ID, "btnNTTAdjuster")
    technical_route_guide_adjuster_header_locator = (By.XPATH, "//div[contains(@id, 'divTechnicalRouteGuideAdjuster_')]/descendant::h3")
    technical_trunk_details_tab_locator = (By.XPATH, "//a[text()='Technical Trunk Details']")
    # End: Technical Trunks tab locators

    # Start: Commercial Trunks tab locators
    commercial_trunks_grid_div_id = "divNCTGrid"
    commercial_trunks_grid_row_data = {"Trunk": "", "Account": "", "Status": "", "Direction": "", "Effective Date": ""}
    commercial_trunks_tab_locator = (By.XPATH, "//div[@id='NetworkTabStrip']/descendant::li[@aria-controls='NetworkTabStrip-3']/descendant::a")
    commercial_trunks_tab_header_locator = (By.XPATH, "//div[@id='divNCTMain']/descendant::h3")
    create_new_commercial_trunk_button_locator = (By.ID, "btnNewCommercialTrunk")
    commercial_trunk_textbox_locator = (By.ID, "txtNCTTrunk")
    trunk_input_field_locator = (By.ID, "txtNCTCrTrunk")
    commercial_trunk_account_kendo_dropdown_locator_for_create = (By.ID, "ddlNCTCrAccount")
    commercial_trunk_effective_date_input_field_locator = (By.ID, "dpNCTCrEffDate")
    commercial_trunk_effective_date = ""
    commercial_trunk_status_kendo_dropdown_locator_for_create = (By.ID, "ddlNCTCrStatus")
    commercial_trunk_direction_kendo_dropdown_locator = (By.ID, "ddlNCTCrDirection")
    create_commercial_trunk_save_button_locator = (By.ID, "btnNCTCrSave")
    commercial_trunk_input_field_locator = (By.XPATH, "//label[text()='Commercial Trunk']/../descendant::input")
    commercial_trunk_search_button_locator = (By.ID, "btnNCTSearch")
    commercial_trunk_select_date_inputbox_locator = (By.ID, "dtpNCTSelectDate")
    trunk_column_name = "Trunk"
    account_column_name = "Account"
    status_column_name = "Status"
    direction_column_name = "Direction"
    clli_column_name = "CLLI"
    note_column_name = "Note"
    commercial_trunks_grid_row_data_for_edit = {"Trunk": "", "Account": "", "Status": "", "Direction": "", "Note": "", "CLLI": ""}
    commercial_trunk_grid_row_count_span_locator = (By.XPATH, "//div[@id='divNCTBar']/descendant::span")
    create_new_commercial_trunk_effective_date_input_field_locator = (By.ID, "dpNCTCrEffDate")
    commercial_trunk_effective_date_column_name = "Effective Date"
    commercial_trunk_modified_date_column_name = "Modified Date"
    commercial_trunk_grid_row_count = 0
    commercial_trunk_note_locator = "txtNCTCrDescription"
    # End: Commercial Trunks tab locators

    # Start: Create New Technical Trunk page locators
    technical_trunk_input_field_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='Technical Trunk']/../descendant::input")
    trunk_type_kendo_dropdown_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='Trunk Type']/../descendant::input")
    switch_input_field_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[contains (text(), 'Switch')]/../descendant::input")
    account_input_field_dropdown_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='Account']/../descendant::span")
    cdr_match_input_field_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='CDR Match']/../descendant::input")
    technical_trunk_attributes_tab_locator = (By.XPATH, "//a[text()='Technical Trunk Attributes']")
    effective_date_input_field_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='Effective Date']/../descendant::input")
    status_kendo_dropdown_locator_for_create = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='Status']/../descendant::input")
    commercial_trunk_kendo_dropdown_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='Commercial Trunk']/../descendant::input")
    direction_kendo_dropdown_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='Direction']/../descendant::input")
    activated_ports_inputbox_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='Activated Ports ']/../descendant::input")
    create_new_technical_trunk_save_button_locator = (By.ID, "btnNTTEdOK")
    filter_item_column_position = 6
    success_message_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    ok_button_locator = (By.ID, "btnOk")
    technical_trunks_grid_row_data = {"Technical Trunk": "", "Trunk Type": "", "Account": "", "Commercial Trunk": "", "Status": "", "Direction": "", "Activated Ports": "", "Begin Date": "", "Note": "", "CLLI": ""}
    technical_trunks_grid_div_id = "divNTTGrid"
    technical_trunk_attributes_grid_row_count_span_locator = (By.XPATH, "//div[@id='divNTTEdAttrBar']/descendant::span")
    technical_trunk_attributes_grid_div_id = "divNTTEdAttrGrid"
    begin_date_column_name = "Begin Date"
    end_date_column_name = "End Date"
    modified_date_column_name = "Modified Date"
    technical_trunk_attributes_grid_row_count = 0
    transmission_type_kendo_dropdown_locator = (By.XPATH, "//div[@id='divNTTEdMain']/descendant::label[text()='Transmission Type']/../descendant::input")
    validation_message_locator = (By.XPATH, "//p[text()='Several fields on this screen have been left blank or populated with invalid values. Please revisit these fields and resubmit.']")
    note_textarea_locator = (By.XPATH, "//label[text()='Note']/../descendant::textarea")
    # Start: Create New Technical Trunk page locators
    # End: Network page locators

    def switch_to_network(self):
        """
        Implementing switch to network functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_network_page_title(self):
        """
        Implementing get network page title functionality
        :return: network page title
        """
        self.wait().until(EC.visibility_of_element_located(self.default_tab_header_locator), 'default tab header not found before specified time')
        return self.page_title()

    def is_network_dashboard_tab_present(self):
        """
        Implementing is network dashboard tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.network_dashboard_tab_locator)

    def is_technical_trunks_tab_present(self):
        """
        Implementing is technical trunks tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.technical_trunks_tab_locator)

    def is_commercial_trunks_tab_present(self):
        """
        Implementing is commercial trunks tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.commercial_trunks_tab_locator)

    def select_technical_trunks_tab(self):
        """
        Implementing select technical trunks tab functionality
        :return:
        """
        self.select_static_tab(self.technical_trunks_tab_locator, 'technical trunks tab not found before specified time')

    def get_technical_trunks_tab_header(self):
        """
        Implementing get technical trunks tab header functionality
        :return: Technical Trunks tab header
        """
        technical_trunks_tab_header_element = self.wait().until(EC.visibility_of_element_located(self.technical_trunks_tab_header_locator), 'technical trunks tab header not selected before specified time')
        return technical_trunks_tab_header_element.text

    def select_commercial_trunks_tab(self):
        """
        Implementing select commercial trunks tab functionality
        :return:
        """
        self.select_static_tab(self.commercial_trunks_tab_locator, 'commercial trunks tab not found before specified time')

    def get_commercial_trunks_tab_header(self):
        """
        Implementing get commercial trunks tab header functionality
        :return: Commercial Trunks tab header
        """
        commercial_trunks_tab_header_element = self.wait().until(EC.visibility_of_element_located(self.commercial_trunks_tab_header_locator), 'commercial trunks tab header not selected before specified time')
        return commercial_trunks_tab_header_element.text

    def is_technical_trunks_tab_loaded_properly(self):
        """
        Implementing is technical trunks tab loaded properly functionality
        :return: True/False
        """
        is_loaded = self.is_element_present(self.technical_trunks_tab_header_locator)
        return is_loaded

    def set_technical_trunk_for_search(self):
        """
        Implementing set technical trunk for search functionality
        :return:
        """
        global technical_trunk_name
        self.set_value_into_input_field(self.technical_trunk_textbox_locator, technical_trunk_name)

    def set_status_for_search(self, status):
        """
        Implementing set status for search functionality
        :param status:
        :return:
        """
        self.clear_multiselect_kendo_dropdown(self.status_kendo_dropdown_label)
        header_element = self.wait().until(EC.visibility_of_element_located(self.technical_trunks_tab_header_locator), 'technical trunks tab header not found before specified time out')
        header_element.click()
        self.wait_for_ajax_spinner_load()
        self.multiple_items_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, status)
        self.wait_for_ajax_spinner_load()

    def set_date_for_search(self):
        """
        Implementing set date for search functionality
        :return:
        """
        self.set_value_into_input_field(self.select_date_locator, self.get_current_date())

    def click_technical_trunks_tab_search_button(self):
        """
        Implementing click technical trunks tab search button functionality
        :return:
        """
        search_button_element = self.wait().until(EC.element_to_be_clickable(self.technical_trunks_tab_search_button_locator), 'technical trunks tab search button locator not found before specified time')
        search_button_element.click()
        self.wait_for_ajax_spinner_load()

    def is_data_loaded_in_the_grid(self):
        """
        Implementing is data loaded in the grid functionality
        :return: True/False
        """
        data_found = None
        try:
            self.wait(10).until(EC.presence_of_element_located(self.no_records_found_locator), 'no records found locator not found before specified time out')
            data_found = False
        except:
            data_found = True
        finally:
            return data_found

    def click_create_new_technical_trunk_button(self):
        """
        Implementing click create new technical trunk button functionality
        :return:
        """
        create_new_technical_trunk_button_element = self.wait().until(EC.element_to_be_clickable(self.create_new_technical_trunk_button_locator), 'create new technical trunk button locator not found before specified time')
        self.script_executor_click(create_new_technical_trunk_button_element)
        self.wait_for_ajax_spinner_load()

    def set_technical_trunk_for_create_technical_trunk(self, technical_trunk_prefix, is_static_value, static_value):
        """
        Implementing set technical trunk for create technical trunk functionality
        :param technical_trunk_prefix:
        :param is_static_value:
        :param static_value:
        :return: technical trunk name
        """
        global technical_trunk_name
        if is_static_value is True:
            technical_trunk_name = static_value
        else:
            technical_trunk_name = technical_trunk_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.technical_trunk_input_field_locator, technical_trunk_name)
        return technical_trunk_name

    def set_trunk_type_for_create_technical_trunk(self, trunk_type):
        """
        Implementing set trunk type for create technical trunk functionality
        :param trunk_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.trunk_type_kendo_dropdown_locator, trunk_type)
        self.wait_for_ajax_spinner_load()

    def set_switch_for_create_technical_trunk(self, switch):
        """
        Implementing set switch for create technical trunk functionality
        :param switch:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.switch_input_field_locator, switch)
        self.wait_for_ajax_spinner_load()

    def set_carrier_for_create_technical_trunk(self, carrier):
        """
        Implementing set carrier for create technical trunk functionality
        :param carrier:
        :return:
        """
        account_input_field_dropdown_element = self.wait().until(EC.element_to_be_clickable(self.account_input_field_dropdown_locator), 'carrier input field dropdown locator not found before specified time out')
        dropdown_id = account_input_field_dropdown_element.get_attribute("aria-activedescendant")
        account_input_field_dropdown_element.click()
        dropdown_item_locator = (By.XPATH, "//div[@id='%s']/../descendant::li[text()='%s']" % (str(dropdown_id), carrier))
        dropdown_item_element = self.wait().until(EC.element_to_be_clickable(dropdown_item_locator), 'dropdown item locator not found before specified time out')
        self.script_executor_click(dropdown_item_element)

    def set_cdr_match_for_create_technical_trunk(self, cdr_match_prefix, is_static_value, static_value):
        """
        Implementing set cdr match for create technical trunk functionality
        :param cdr_match_prefix:
        :param is_static_value:
        :param static_value:
        :return: cdr match
        """
        if is_static_value is True:
            cdr_match = static_value
        else:
            cdr_match = cdr_match_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.cdr_match_input_field_locator, cdr_match)
        return cdr_match

    def click_technical_trunk_attributes_tab(self):
        """
        Implementing click technical trunk attributes tab functionality
        :return:
        """
        technical_trunk_attributes_tab_element = self.wait().until(EC.element_to_be_clickable(self.technical_trunk_attributes_tab_locator), 'technical trunk attributes tab locator not found before specified time')
        technical_trunk_attributes_tab_element.click()
        self.wait_for_ajax_spinner_load()

    def set_effective_date_for_create_technical_trunk(self):
        """
        Implementing set effective date for create technical trunk functionality
        :return:
        """
        effective_date_input_field_element = self.wait().until(EC.visibility_of_element_located(self.effective_date_input_field_locator), 'effective date input field locator not found before specified time')
        effective_date_input_field_element.clear()
        effective_date_input_field_element.send_keys(self.get_current_date())
        self.wait_for_ajax_spinner_load()

    def set_status_for_create_technical_trunk(self, status):
        """
        Implementing set status for create technical trunk functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator_for_create, status)
        self.wait_for_ajax_spinner_load()

    def set_activated_ports_for_create_technical_trunk(self, activated_port):
        """
        Implementing set activated ports for create technical trunk functionality
        :param activated_port:
        :return:
        """
        self.set_value_into_input_field(self.activated_ports_inputbox_locator, str(activated_port), True)

    def set_commercial_trunk_for_create_technical_trunk(self, commercial_trunk):
        """
        Implementing set commercial trunk for create technical trunk functionality
        :param commercial_trunk:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.commercial_trunk_kendo_dropdown_locator, commercial_trunk)
        self.wait_for_ajax_spinner_load()

    def set_direction_for_create_technical_trunk(self, direction):
        """
        Implementing set direction for create technical trunk functionality
        :param direction:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.direction_kendo_dropdown_locator, direction)
        self.wait_for_ajax_spinner_load()

    def click_create_new_technical_trunk_save_button(self):
        """
        Implementing create new technical trunk save button functionality
        :return:
        """
        create_new_technical_trunk_save_button_element = self.wait().until(EC.element_to_be_clickable(self.create_new_technical_trunk_save_button_locator), 'create new technical trunk save button locator not found before specified time')
        create_new_technical_trunk_save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_technical_trunks_grid(self, column_name, item_list):
        """
        Implementing filter technical trunks grid functionality
        :param column_name:
        :param item_list:
        :return:
        """
        self.grid_filter_details(column_name, item_list, None, self.filter_item_column_position)
        self.wait_for_ajax_spinner_load()

    def get_technical_trunks_grid_row_data(self):
        """
        Implementing get technical trunks grid row data functionality
        :return: grid row data
        """
        return self.get_grid_row_details(self.technical_trunks_grid_div_id, self.technical_trunks_grid_row_data)

    def select_technical_trunks_grid_row(self, trunk_name):
        """
        Implementing select technical trunks grid row functionality
        :param trunk_name:
        :return:
        """
        self.select_grid_row_checkbox(self.technical_trunks_grid_div_id, trunk_name, self.technical_trunks_grid_checkbox_column_number)

    def set_note_in_technical_trunks_grid(self, note_prefix):
        """
        Implementing set note in technical trunks grid functionality
        :param note_prefix:
        :return: note
        """
        note = note_prefix+self.random_string_generator()
        self.set_value_in_grid_column(self.technical_trunks_grid_div_id, self.note_column_name, note, True)
        self.wait_for_ajax_spinner_load()
        return note

    def set_clli_in_technical_trunks_grid(self, clli):
        """
        Implementing set clli in technical trunks grid functionality
        :param clli:
        :return:
        """
        self.set_value_in_grid_column(self.technical_trunks_grid_div_id, self.clli_column_name, clli)

    def click_save_changes_button(self):
        """
        Implementing click save changes button functionality
        :return:
        """
        save_changes_button_element = self.wait().until(EC.element_to_be_clickable(self.save_changes_button_locator), 'save changes button locator not found before specified time')
        save_changes_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_create_new_commercial_trunk_button(self):
        """
        Implementing click create new commercial trunk button functionality
        :return:
        """
        create_new_commercial_trunk_button_element = self.wait().until(EC.element_to_be_clickable(self.create_new_commercial_trunk_button_locator), 'create new commercial trunk button locator not found before specified time out')
        self.script_executor_click(create_new_commercial_trunk_button_element)
        self.wait_for_ajax_spinner_load()

    def set_trunk_for_create_commercial_trunk(self, trunk_prefix):
        """
        Implementing set trunk for create commercial trunk functionality
        :param trunk_prefix:
        :return: commercial trunk name
        """
        global trunk_name
        trunk_name = trunk_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.trunk_input_field_locator, trunk_name)

    def get_created_commercial_trunk(self):
        """
        Implementing get created commercial trunk functionality
        :return: commercial trunk
        """
        global trunk_name
        return trunk_name

    def set_account_for_create_commercial_trunk(self, account):
        """
        Implementing set account for create commercial trunk functionality
        :param account:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.commercial_trunk_account_kendo_dropdown_locator_for_create, account)
        self.wait_for_ajax_spinner_load()

    def set_effective_date_for_create_commercial_trunk(self):
        """
        Implementing set effective date for create commercial trunk functionality
        """
        commercial_trunk_effective_date_input_field_element = self.wait().until(EC.visibility_of_element_located(self.commercial_trunk_effective_date_input_field_locator), 'commercial trunk effective date input field locator not found before specified time')
        commercial_trunk_effective_date_input_field_element.clear()
        commercial_trunk_effective_date_input_field_element.send_keys(self.get_current_date())
        self.wait_for_ajax_spinner_load()

    def set_status_for_create_commercial_trunk(self, status):
        """
        Implementing set status for create commercial trunk functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.commercial_trunk_status_kendo_dropdown_locator_for_create, status)
        self.wait_for_ajax_spinner_load()

    def set_direction_for_create_commercial_trunk(self, direction):
        """
        Implementing set direction for create commercial trunk functionality
        :param direction:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.commercial_trunk_direction_kendo_dropdown_locator, direction)
        self.wait_for_ajax_spinner_load()

    def click_create_commercial_trunk_save_button(self):
        """
        Implementing create commercial trunk save button functionality
        :return:
        """
        create_commercial_trunk_save_button_element = self.wait().until(EC.element_to_be_clickable(self.create_commercial_trunk_save_button_locator), 'create commercial trunk save button locator not found before specified time out')
        create_commercial_trunk_save_button_element.click()
        self.wait_for_ajax_spinner_load()
        self.commercial_trunk_effective_date = self.get_text_from_element(self.commercial_trunk_effective_date_input_field_locator, is_a_input_field=True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_commercial_trunk(self, commercial_trunk):
        """
        Implementing set commercial trunk functionality
        :param commercial_trunk:
        :return:
        """
        self.set_value_into_input_field(self.commercial_trunk_textbox_locator, commercial_trunk)

    def click_commercial_trunk_search_button(self):
        """
        Implementing click commercial trunk search button functionality
        :return:
        """
        commercial_trunk_search_button_element = self.wait().until(EC.element_to_be_clickable(self.commercial_trunk_search_button_locator), 'commercial trunk search button locator not found before specified time out')
        commercial_trunk_search_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_commercial_trunk_for_search(self, commercial_trunk):
        """
        Implementing set commercial trunk for search functionality
        :param commercial_trunk:
        :return:
        """
        self.set_value_into_input_field(self.commercial_trunk_input_field_locator, commercial_trunk)

    def click_commercial_trunks_search_button(self):
        """
        Implementing click commercial trunks search button functionality
        :return:
        """
        search_button_element = self.wait().until(EC.element_to_be_clickable(self.commercial_trunk_search_button_locator), 'commercial trunk search button locator not found before specified time')
        search_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_status_for_edit_commercial_trunk(self, status):
        """
        Implementing set status for edit commercial trunk functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.commercial_trunks_grid_div_id, self.status_column_name, status)
        self.wait_for_ajax_spinner_load()

    def set_direction_for_edit_commercial_trunk(self, direction):
        """
        Implementing set direction for edit commercial trunk functionality
        :param direction:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.commercial_trunks_grid_div_id, self.direction_column_name, direction)
        self.wait_for_ajax_spinner_load()

    def set_clli_for_edit_commercial_trunk(self, clli):
        """
        Implementing set clli for edit commercial trunk functionality
        :param clli:
        :return:
        """
        self.set_value_in_grid_column(self.commercial_trunks_grid_div_id, self.clli_column_name, clli)
        self.wait_for_ajax_spinner_load()

    def set_note_for_edit_commercial_trunk(self):
        """
        Implementing set note for edit commercial trunk functionality
        :return: unique note
        """
        unique_note = self.random_string_generator(6)
        self.set_value_in_grid_column(self.commercial_trunks_grid_div_id, self.note_column_name, unique_note)
        self.wait_for_ajax_spinner_load()
        return unique_note

    def get_commercial_trunks_grid_row_data(self):
        """
        Implementing get commercial trunks grid row data functionality
        :return: grid row data
        """
        return self.get_grid_row_details(self.commercial_trunks_grid_div_id, self.commercial_trunks_grid_row_data)

    def get_commercial_trunks_grid_row_data_for_edit(self):
        """
        Implementing get commercial trunks grid row data functionality
        :return: grid row data
        """
        return self.get_grid_row_details(self.commercial_trunks_grid_div_id, self.commercial_trunks_grid_row_data_for_edit)

    def set_commercial_trunk_select_date(self):
        """
        Implementing set commercial trunk select date functionality
        :return:
        """
        self.set_value_into_input_field(self.commercial_trunk_select_date_inputbox_locator, self.get_current_date())

    def get_technical_trunk_select_date(self):
        """
        Implementing get technical trunk select date 
        :return: select date 
        """
        return self.get_text_from_element(self.select_date_locator, True)

    def click_technical_trunk_grid_first_row_inline_action_button(self):
        """
        Implementing click technical trunk grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.technical_trunks_grid_div_id, None, self.technical_trunks_grid_inline_action_column_number, True)

    def get_technical_trunk_attributes_grid_begin_date_column_value(self):
        """
        Implementing get technical trunk attributes grid begin date column value functionality
        :return: begin date column value
        """
        self.technical_trunk_attributes_grid_row_count = self.get_grid_row_count(self.technical_trunk_attributes_grid_row_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.technical_trunk_attributes_grid_div_id, self.technical_trunk_attributes_grid_row_count, self.begin_date_column_name)

    def get_technical_trunk_attributes_grid_end_date_column_value(self):
        """
        Implementing get technical trunk attributes grid end date column value functionality
        :return: end date column value 
        """
        return self.get_specific_column_value_from_grid(self.technical_trunk_attributes_grid_div_id, self.technical_trunk_attributes_grid_row_count, self.end_date_column_name)

    def select_technical_trunk_inline_action_item(self, item_name):
        """
        Implementing technical trunk inline action item functionality
        :return: 
        """
        self.select_inline_action_item(item_name, self.network_module_name)
        self.wait_for_ajax_spinner_load()

    def get_technical_trunk_attributes_grid_modified_date_column_value(self):
        """
        Implementing get technical trunk attributes grid modified date column value functionality
        :return: modified date column value
        """
        return self.get_specific_column_value_from_grid(self.technical_trunk_attributes_grid_div_id, self.technical_trunk_attributes_grid_row_count, self.modified_date_column_name)

    def get_commercial_trunk_select_date(self):
        """
        Implementing get commercial trunk select date functionality
        :return:select date  
        """
        return self.get_text_from_element(self.commercial_trunk_select_date_inputbox_locator, True)

    def get_commercial_trunk_grid_effective_date_column_value(self):
        """
        Implementing get commercial trunk grid effective date column value functionality
        :return: effective date column value
        """
        self.commercial_trunk_grid_row_count = self.get_grid_row_count(self.commercial_trunk_grid_row_count_span_locator, 1)
        return self.get_specific_column_value_from_grid(self.commercial_trunks_grid_div_id, self.commercial_trunk_grid_row_count, self.commercial_trunk_effective_date_column_name)

    def get_commercial_trunk_grid_modified_date_column_value(self):
        """
        Implementing get commercial trunk grid modified date column value functionality
        :return: modified date column value
        """
        return self.get_specific_column_value_from_grid(self.commercial_trunks_grid_div_id, self.commercial_trunk_grid_row_count, self.commercial_trunk_modified_date_column_name)

    def get_create_new_commercial_trunk_effective_date(self):
        """
        Implementing get create new commercial trunk effective date functionality
        :return: effective date 
        """
        return self.get_text_from_element(self.create_new_commercial_trunk_effective_date_input_field_locator, True)

    def get_created_account(self):
        """
        Implementing get created account functionality
        :return: created_account
        """
        return self.carrier_page.get_created_carrier_name()

    def get_commercial_trunk_effective_date(self):
        """
        Implementing get commercial trunk effective date functionality
        :return:
        """
        return self.commercial_trunk_effective_date

    def create_new_switch(self, server, database, user, password, switch_prefix):
        """
        Implementing create new switch functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :param switch_prefix:
        :return:
        """
        global switch
        try:
            switch = switch_prefix + self.random_string_generator(4)
            switch_abbreviation = self.random_string_generator(2)
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
            INSERT INTO iXCore_Main.dbo.tbSwitch(Switch, SwitchAbbrv, CLLI, SwitchTypeID, SubNetID, ExternalCode, UseForLCR, UseForRG, UseForCostAllocation, ModifiedByID)
            VALUES (?, ?, 'H1', 3, 1, 'H1', 1, 1, 1, -3)
            """)
            cursor = Database.get_cursor(sql, [switch, switch_abbreviation])
            cursor.commit()
            Database.close()
        except:
            raise

    def delete_created_switch(self, server, database, user, password):
        """
        Implementing delete created switch functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return:
        """
        global switch
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
            ALTER TABLE iXCore_Main.dbo.tbTrunk DROP CONSTRAINT FK_tbTrunk_tbSwitch;
            DELETE FROM iXCore_Main.dbo.tbSwitch
            WHERE Switch=?
            ALTER TABLE iXCore_Main.dbo.tbTrunk WITH NOCHECK ADD CONSTRAINT FK_tbTrunk_tbSwitch FOREIGN KEY (SwitchID) REFERENCES iXCore_Main.dbo.tbSwitch(SwitchID) ON DELETE CASCADE;
            """)
            cursor = Database.get_cursor(sql, [switch])
            cursor.commit()
            Database.close()
        except:
            raise

    def get_created_switch(self):
        """
        Implementing get created switch functionality
        :return:
        """
        global switch
        return switch

    def get_created_technical_trunk(self):
        """
        Implementing get created technical trunk functionality
        :return: 
        """
        global technical_trunk_name
        return technical_trunk_name

    def set_transmission_type_for_create_technical_trunk(self, transmission_type):
        """
        Implementing set transmission type for create technical trunk functionality
        :param transmission_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.transmission_type_kendo_dropdown_locator, transmission_type)
        self.wait_for_ajax_spinner_load()

    def compare_sorted_data(self, unsorted_data, descending_order):
        """
        Implementing compare sorted data functionality
        :param unsorted_data:
        :param descending_order:
        :return: True/False
        """
        sorted_data = []
        self.all_row_data = [x.lower() for x in self.all_row_data]
        if descending_order:
            sorted_data = sorted([x.lower() for x in unsorted_data], reverse=True)
        else:
            sorted_data = sorted([x.lower() for x in unsorted_data])
        if sorted_data == self.all_row_data:
            return True
        else:
            return False

    def compare_grid_column_position_after_altering(self, source_column, destination_column, previous_column_name_list):
        """
        Implementing compare grid column position after altering functionality
        :param source_column:
        :param destination_column:
        :param previous_column_name_list:
        :return: True/False
        """
        destination_column_position = 0
        for i in range(len(previous_column_name_list)):
            if previous_column_name_list[i] == destination_column:
                destination_column_position = i
                break
        if self.column_name_list[destination_column_position] == source_column:
            return True
        else:
            return False

    def set_technical_trunks_grid_settings(self, grid_settings):
        """
        Implementing set technical trunks grid settings functionality
        :param grid_settings:
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.set_grid_settings(self.technical_trunks_grid_div_id, grid_settings)

    def sort_technical_trunks_grid_column(self, column_name, descending_order):
        """
        Implementing sort technical trunks grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.sort_grid_column(self.technical_trunks_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_technical_trunks_grid(self, column_name):
        """
        Implementing get all rows of specific column from technical trunks grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.wait_for_ajax_spinner_load()
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.technical_trunks_grid_div_id, column_name)
        return self.all_row_data

    def drag_technical_trunks_grid_column(self, source_column, destination_column):
        """
        Implementing drag technical trunks grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.drag_grid_column(self.technical_trunks_grid_div_id, source_column, destination_column)

    def get_technical_trunks_grid_column_names_by_order(self):
        """
        Implementing get technical trunks grid column names by order functionality
        :return: column_name_list
        """
        self.wait_for_ajax_spinner_load()
        self.column_name_list = self.get_grid_column_names_by_order(self.technical_trunks_grid_div_id)
        return self.column_name_list

    def click_technical_trunks_grid_export_to_excel_button(self):
        """
        Implementing click technical trunks grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.technical_trunks_grid_div_id)

    def click_rg_adjuster_button(self):
        """
        Implementing click rg adjuster button functionality
        :return:
        """
        self.click_element(self.rg_adjuster_button_locator)

    def is_technical_route_guide_adjuster_loaded_properly(self):
        """
        Implementing is technical route guide adjuster loaded properly functionality
        :return: True/False
        """
        is_loaded = self.is_element_present(self.technical_route_guide_adjuster_header_locator)
        return is_loaded

    def is_technical_trunk_attributes_grid_column_present(self, column_name):
        """
        Implementing is technical trunk attributes grid column present functionality
        :param column_name:
        :return: True/False
        """
        column_name_locator = (By.XPATH, "//div[@id='divNTTEdAttrGrid']/descendant::th[@data-title='%s']" % column_name)
        return self.is_element_present(column_name_locator)

    def select_technical_trunk_details_tab(self):
        """
        Implementing select technical trunk details tab functionality
        :return:
        """
        self.click_element(self.technical_trunk_details_tab_locator)

    def is_technical_trunk_details_field_present(self, field_name):
        """
        Implementing is technical trunk attributes grid column is present functionality
        :param field_name:
        :return: True/False
        """
        field_locator = (By.XPATH, "//label[contains(text(),'%s')]/../descendant::input" % field_name)
        return self.is_element_present(field_locator)

    def click_technical_trunk_attributes_grid_first_row_inline_action_button(self):
        """
        Implementing click technical trunk attributes grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.technical_trunks_attributes_grid_div_id, None, self.technical_trunks_grid_inline_action_column_number, True)

    def get_technical_trunk_name(self):
        """
        Implementing get technical trunk name functionality
        :return: technical_trunk_name
        """
        return self.get_text_from_element(self.technical_trunk_input_field_locator, is_a_input_field=True)

    def get_technical_trunk_cdr_match(self):
        """
        Implementing get technical trunk cdr match functionality
        :return: technical_trunk_cdr_match
        """
        return self.get_text_from_element(self.cdr_match_input_field_locator, is_a_input_field=True)

    def click_create_new_technical_trunk_save_button_with_validation(self):
        """
        Implementing create new technical trunk save button with validation functionality
        :return:
        """
        self.click_element(self.create_new_technical_trunk_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.validation_message_locator), 'validation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_note(self, note_prefix):
        """
        Implementing set note functionality
        :param note_prefix:
        :return:
        """
        note = note_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.note_textarea_locator, note)
