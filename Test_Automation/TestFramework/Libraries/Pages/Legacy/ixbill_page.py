"""Implementing iXBill screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import Select
import time
import string


class IXBillPage(BasePage):
    """
    Contains iXBill UI page locators
    Switch to ixbill function
    Switch to dot net page frame function
    Click new cycle template button function
    Set cycle template name function
    Set cycle template type function
    Set recurrence pattern period length function
    Set recurrence pattern period type function
    Set recurrence pattern starting date function
    Click new cycle template save button function
    Is template added successfully function
    Click cycle templates grid first page button function
    Is created cycle loaded in grid function
    Set template letters function
    Click cycle template search button function
    Switch to list frame function
    Switch to detail frame function
    Click new button function
    Set statement numbering template function
    Set begin number function
    Set end number function
    Set increment function
    Set numbering length function
    Set prefix function
    Click save button function
    Click cycle and settlement management submenu function
    Get created cycle template name function
    Click exit button function
    Click cover letter templates submenu function
    Set cover letter template name function
    Get created cover letter template name function
    Click accounting codes submenu function
    Set accounting code function
    Get created accounting code function
    Click detail frame save button function
    Click tax templates submenu function
    Set tax template name function
    Get created tax templates name function
    Set tax percentage function
    Click accounting code browse button function
    Set first letter function
    Click go button function
    Select row from look up table function
    Set tax template begin date function
    Set tax template end date function
    Click charge categories submenu function
    Set charge categories name function
    Get charge categories name function
    Set charge categories abbreviation function
    Click recurring charge products submenu
    Set charge product name function
    Get charge product name function
    Set charge product abbreviation function
    Select dropdown item from select tag function
    Select Charge product category dropdown item function
    Set recurrence pattern function
    Click bulk user assignments submenu function
    Is user with selected profile present function
    Click statements submenu function
    Set ixtools account letter function
    Set billing account letter function
    Click ixbill statements go button function
    Click first company plus button function
    Click first inner carrier plus button function
    Is specific bill account present function
    Click inner bill account plus button function
    Is first statement number present function
    Is second statement number present function
    Click outbound statements submenu function
    Set outbound statements worklist begin date function
    Set outbound statements worklist end date function
    Select billing account function
    Click outbound statements worklist go button function
    Get outbound statements worklist grid first row amount value function
    Click on specific statement date function
    Compare moved non traffic charge function
    Click on specific statement date function
    Click on specific cover template function
    Set cover letter body function
    Click save button with passing two confirmation message function
    """
    # Start: iXBill page locators
    header_frame_locator = (By.NAME, "Header")
    admin_menu_locator = (By.ID, "C1_mAdmin")
    cycle_and_settlement_management_submenu_js_function = "Admin_Click(8,'Admin8');"
    cover_letter_templates_submenu_js_function = "Admin_Click(6,'Admin6');"
    exit_header_locator = (By.ID, "C1_mExit")
    dot_net_page_frame_locator = (By.NAME, "DotNetPage")
    new_cycle_template_button_locator = (By.XPATH, "//span[text()='New Cycle Template']")
    cycle_template_name_textbox_locator = (By.ID, "CycleTemplateNameTextBox_text")
    cycle_template_type_combobox_locator = (By.ID, "CycleTypeComboBox_Input")
    recurrence_pattern_period_length_textbox_locator = (By.ID, "PeriodMultipleTextBox_text")
    recurrence_pattern_period_type_combobox_locator = (By.ID, "NewBasePeriodComboBox_Input")
    recurrence_pattern_starting_on_textbox_locator = (By.ID, "RecurrencePatternDatePicker_dateInput_text")
    new_cycle_template_save_button_locator = (By.ID, "SaveNewCycleTemplate_input")
    template_added_success_message_locator = (By.XPATH, "//ul[@class='infoList']/li[@class='info']/div[@id='null' and text()='Template Added Successfully']")
    cycle_templates_grid_first_page_button_locator = (By.XPATH, "//table[contains(@id, 'CycleTemplatesGrid')]/descendant::input[@class='rgPageFirst']")
    template_letters_textbox_locator = (By.ID, "TemplateLettersTextBox_text")
    cycle_template_search_button_locator = (By.ID, "SearchCycleTemplates_input")
    list_frame_locator = (By.NAME, "List")
    detail_frame_locator = (By.NAME, "Detail")
    new_button_locator = (By.ID, "btnNew")
    statement_numbering_template_textbox_locator = (By.ID, "rStatementNumberingTemplate_NumberingTemplate")
    statement_numbering_template = ""
    begin_number_textbox_locator = (By.ID, "rBeginNumber_BeginNumber")
    end_number_textbox_locator = (By.ID, "rEndNumber_EndNumber")
    increment_textbox_locator = (By.ID, "rIncrement_Increment")
    numbering_length_textbox_locator = (By.ID, "rNumberLength_NumberLength")
    prefix_textbox_locator = (By.ID, "rPrefix_Prefix")
    save_button_locator = (By.ID, "bSave")
    save_success_message = "Data has been saved successfully."
    new_cycle_template_pop_up_label_locator = (By.ID, "Label1")
    accounting_codes_submenu_js_function = "Admin_Click(0,'Admin0');"
    tax_templates_submenu_js_function = "Admin_Click(15,'Admin15');"
    charge_categories_submenu_js_function = "Admin_Click(5,'Admin5');"
    recurring_charge_products_submenu_js_function = "Admin_Click(10,'Admin10');"
    bulk_user_assignments_submenu_js_function = "Admin_Click(4,'Admin4');"
    operation_menu_locator = (By.ID, "C1_mOperation")
    statements_submenu_js_function = "Operation_Click(0,'Operation0');"
    worklists_menu_locator = (By.ID, "C1_mWorklists")
    outbound_statements_submenu_js_function = "Worklist_Click(0,'Worklist0');"

    # Start: Cover letter templates page locators
    cover_letter_template_textbox_locator = (By.ID, "rCoverLetterTemplate_CoverLetterTemplate")
    cover_letter_body_textbox_locator = (By.ID, "rCoverLetterBody_CoverLetterBody")
    # End: Cover letter templates page locators

    # Start: Accounting Codes page locators
    accounting_code_textbox_locator = (By.ID, "rAccountingCode_AccountingCode")
    detail_frame_save_button_locator = (By.ID, "btnSave")
    # End: Accounting Codes page locators

    # Start: Tax Templates page locators
    tax_template_textbox_locator = (By.ID, "rTaxCode_TaxTemplate")
    tax_percentage_textbox_locator = (By.ID, "rTaxValue_TaxValue")
    accounting_code_browse_textbox_locator = (By.ID, "rAccountingCode_imgAccountingCode")
    first_letter_textbox_locator = (By.XPATH, "//div[@id='R1']/descendant::input[@id='R1_FirstLetter']")
    go_button_locator = (By.CLASS_NAME, "lgxGoButton")
    tax_template_begin_date_textbox_locator = (By.ID, "rBeginDate_BeginDate")
    tax_template_end_date_textbox_locator = (By.ID, "rEndDate_EndDate")
    # End: Tax Templates page locators

    # Start: Charge categories page locators
    charge_categories_input_textbox_locator = (By.ID, "rChargeCategory_ChargeCategory")
    charge_categories_abbreviation_input_textbox_locator = (By.ID, "rChargeCategoryAbbrv_ChargeCategoryAbbrv")
    # End: Charge categories page locators

    # Start: Recurring Charge Product Page Locators
    charge_product_name_input_textbox_locator = (By.ID, "rRecurProduct_RecurringChargeProduct")
    charge_product_abbreviation_input_textbox_locator = (By.ID, "rRecurringChargeAbbrv_RecurringChargeProductAbbrv")
    charge_product_category_dropdown_select_tag_locator = (By.ID, "rRecurringChargeProductCategory_RecurringChargeProductCategoryID")
    recurrence_charge_period_input_field_locator = (By.ID, "rRecurrence_PeriodMultiple")
    recurrence_charge_period_select_tag_locator = (By.ID, "rRecurrence_BasePeriodID")
    recurrence_charge_period_starting_on_date_locator = (By.ID, "rRecurrence_ReferenceBeginDate")
    # End: Recurring Charge Product  Page Locators

    # Start: Bulk User Assignments page locators
    billing_manager_dropdown_locator = (By.ID, "ResultContentID_ddlBillManager1_Input")
    ixtools_account_letters_textbox_locator = (By.ID, "riXToolsAccountLetters_ToolsLetters")
    bill_account_letters_textbox_locator = (By.ID, "rBillAccountLetters_BillLetters")
    statements_go_button_locator = (By.CLASS_NAME, "fltGoButton")
    first_plus_button_next_to_company_locator = (By.ID, "IMG_lCompany1")
    first_inner_carrier_plus_button_locator = (By.ID, "IMG_lCompany1_lToolsAcct1")
    inner_bill_account_plus_button_locator = (By.ID, "IMG_lCompany1_lToolsAcct1_lBillAccount1")
    first_statement_number_locator = (By.ID, "_lCompany1_lToolsAcct1_lBillAccount1__lStmt1__lblStmt")
    second_statement_number_locator = (By.ID, "_lCompany1_lToolsAcct1_lBillAccount1__lStmt2__lblStmt")
    billing_currency_locator = (By.ID, "dCharge_cAmount1_lblCAmount")
    view_test_statement_link_locator = (By.ID, "rBlank_lblViewTestGeneratedStatement")
    # End: Bulk USer Assignments page locators

    # Start: Outbound statement worklist page locators
    outbound_statements_worklist_begin_date_input_box_locator = (By.XPATH, "//div[@id='FiltersContentID_txtStatementBeginDate_wrapper']/descendant::input[@id='FiltersContentID_txtStatementBeginDate_dateInput_text']")
    outbound_statements_worklist_end_date_input_box_locator = (By.XPATH, "//div[@id='FiltersContentID_txtStatementEndDate_wrapper']/descendant::input[@id='FiltersContentID_txtStatementEndDate_dateInput_text']")
    billing_account_multiselection_rad_button_locator = (By.XPATH, "//div[@id='FiltersContentID_BillingAccountMultiSelectionUserControl_MultiSelectionTextBoxPanel']/descendant::a[@id='FiltersContentID_BillingAccountMultiSelectionUserControl_MultiSelectionRadButton']")
    assign_billing_account_search_textbox_locator = (By.ID, "FiltersContentID_BillingAccountMultiSelectionUserControl_MultiSelectionRadWindow_C_MultiSelectionListBoxControl_SearchRadTextBox_text")
    billing_account_search_button_locator = (By.ID, "ctl00$FiltersContentID$BillingAccountMultiSelectionUserControl$MultiSelectionRadWindow$C$MultiSelectionListBoxControl$SearchRadButton_input")
    assign_billing_account_window_title_locator = (By.XPATH, "//em[text()='Assign Billing Account']")
    check_all_checkbox_locator = (By.ID, "FiltersContentID_BillingAccountMultiSelectionUserControl_MultiSelectionRadWindow_C_MultiSelectionListBoxControl_CheckAllItemsCheckBox")
    rad_ajax_spinner_locator = (By.XPATH, "//div[@class='raDiv']")
    move_account_arrow_button_locator = (By.XPATH, "//div[@id='FiltersContentID_BillingAccountMultiSelectionUserControl_MultiSelectionRadWindow_C_MultiSelectionListBoxControl_AvailableItemsRadListBox']/descendant::span[@class='rlbButtonText']")
    assign_billing_account_done_button_locator = (By.ID, "ctl00$FiltersContentID$BillingAccountMultiSelectionUserControl$MultiSelectionRadWindow$C$MultiSelectionListBoxControl$DoneRadButton_input")
    outbound_statements_worklist_go_button_locator = (By.ID, "ctl00$FiltersContentID$btnGo_input")
    outbound_statements_worklist_grid_first_row_amount_column_locator = (By.XPATH, "//div[@id='ResultContentID_ResultControl']/descendant::tr/td[13]")
    # End: Outbound statement worklist page locators

    # End: iXBill page locators

    def switch_to_ixbill(self):
        """
        Implementing switch to ixbill functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def switch_to_dot_net_page_frame(self):
        """
        Implementing switch to dot net page frame functionality
        :return:
        """
        self.switch_to_frame(self.dot_net_page_frame_locator)

    def click_new_cycle_template_button(self):
        """
        Implementing click new cycle template button functionality
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            end_time = time.time() + 300
            while end_time > time.time():
                if self.is_element_visible(self.new_cycle_template_button_locator):
                    self.click_element(self.new_cycle_template_button_locator)
                    break
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_cycle_template_name(self, cycle_template_name_prefix):
        """
        Implementing set cycle template name functionality
        :param cycle_template_name_prefix:
        :return: cycle_template_name
        """
        global cycle_template_name
        self.switch_to_dot_net_page_frame()
        try:
            cycle_template_name = cycle_template_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.cycle_template_name_textbox_locator, cycle_template_name)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return cycle_template_name

    def set_cycle_template_type(self, cycle_template_type):
        """
        Implementing set cycle template type functionality
        :param cycle_template_type:
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.click_element(self.cycle_template_type_combobox_locator)
            dropdown_item_locator = (By.XPATH, "//ul[@class='rcbList']/descendant::li[text()='%s']" % cycle_template_type)
            self.click_element(dropdown_item_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_recurrence_pattern_period_length(self, period_length):
        """
        Implementing set recurrence pattern period length functionality
        :param period_length:
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.set_value_into_input_field(self.recurrence_pattern_period_length_textbox_locator, period_length)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_recurrence_pattern_period_type(self, period_type):
        """
        Implementing set recurrence pattern period type functionality
        :param period_type:
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.click_element(self.recurrence_pattern_period_type_combobox_locator)
            dropdown_item_locator = (By.XPATH, "//ul[@class='rcbList']/descendant::li[text()='%s']" % period_type)
            self.click_element(dropdown_item_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_recurrence_pattern_starting_date(self, starting_date):
        """
        Implementing set recurrence pattern starting date functionality
        :param starting_date:
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.set_value_into_input_field(self.recurrence_pattern_starting_on_textbox_locator, starting_date)
            self.click_element(self.new_cycle_template_pop_up_label_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_new_cycle_template_save_button(self):
        """
        Implementing set cycle template save button functionality
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.click_element(self.new_cycle_template_save_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_template_added_successfully(self):
        """
        Implementing is template added successfully functionality
        :return: True/False
        """
        is_present = None
        self.switch_to_dot_net_page_frame()
        try:
            is_present = self.is_element_present(self.template_added_success_message_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def click_cycle_templates_grid_first_page_button(self):
        """
        Implementing click cycle templates grid first page button functionality
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.click_element(self.cycle_templates_grid_first_page_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_created_cycle_loaded_in_grid(self):
        """
        Implementing is created cycle loaded in grid functionality
        :return: True/False
        """
        global cycle_template_name
        created_cycle_template_name_in_grid_locator = (By.XPATH, "//a[@class='link templateName' and text()='%s']" % cycle_template_name)
        is_loaded = False
        self.switch_to_dot_net_page_frame()
        try:
            if self.is_element_present(created_cycle_template_name_in_grid_locator) is True:
                is_loaded = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_loaded

    def set_template_letters(self, template_letters):
        """
        Implementing set template letters functionality
        :param template_letters:
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.set_value_into_input_field(self.template_letters_textbox_locator, template_letters)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_cycle_template_search_button(self):
        """
        Implementing click cycle template search button functionality
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.click_element(self.cycle_template_search_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def switch_to_list_frame(self):
        """
        Implementing switch to list frame functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)

    def switch_to_detail_frame(self):
        """
        Implementing switch to detail frame functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)

    def click_new_button(self):
        """
        Implementing click new button functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_list_frame()
        try:
            self.wait().until(EC.visibility_of_element_located(self.new_button_locator), 'new button locator not visible before specified time out')
            self.click_element(self.new_button_locator, script_executor=True, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_statement_numbering_template(self, statement_numbering_template_prefix):
        """
        Implementing set statement numbering template functionality
        :param statement_numbering_template_prefix:
        :return: statement_numbering_template
        """
        self.statement_numbering_template = statement_numbering_template_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.statement_numbering_template_textbox_locator, self.statement_numbering_template)
        return self.statement_numbering_template

    def set_begin_number(self, begin_number):
        """
        Implementing set begin number functionality
        :param begin_number:
        :return:
        """
        self.set_value_into_input_field(self.begin_number_textbox_locator, begin_number)

    def set_end_number(self, end_number):
        """
        Implementing set end number functionality
        :param end_number:
        :return:
        """
        self.set_value_into_input_field(self.end_number_textbox_locator, end_number)

    def set_increment(self, increment):
        """
        Implementing set increment functionality
        :param increment:
        :return:
        """
        self.set_value_into_input_field(self.increment_textbox_locator, increment)

    def set_numbering_length(self, numbering_length):
        """
        Implementing set numbering length functionality
        :param numbering_length:
        :return:
        """
        self.set_value_into_input_field(self.numbering_length_textbox_locator, numbering_length)

    def set_prefix(self, prefix):
        """
        Implementing set prefix functionality
        :param prefix:
        :return:
        """
        self.set_value_into_input_field(self.prefix_textbox_locator, prefix)

    def click_save_button(self):
        """
        Implementing click save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            save_button_element = self.wait().until(EC.element_to_be_clickable(self.save_button_locator))
            save_button_element.click()
            # To Do: Web driver explicit wait is not working. Need to enhance this method to apply explicit wait.
            time.sleep(10)
            alert_text = self.get_alert_text()
            if alert_text == self.save_success_message:
                self.accept_alert_pop_up()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_cycle_and_settlement_management_submenu(self):
        """
        Implementing click cycle and settlement management submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.cycle_and_settlement_management_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_created_cycle_template_name(self):
        """
        Implementing get created cycle template name functionality
        :return: cycle_template_name
        """
        global cycle_template_name
        return cycle_template_name

    def click_exit_button(self):
        """
        Implementing click exit button functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.click_element(self.exit_header_locator)
        except:
            raise
        finally:
            self.switch_to_default_window()

    def click_cover_letter_templates_submenu(self):
        """
        Implementing click cover letter templates submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.cover_letter_templates_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_cover_letter_template_name(self, cover_letter_template_name_prefix):
        """
        Implementing set cover letter template name functionality
        :param cover_letter_template_name_prefix:
        :return: cover_letter_template_name
        """
        global cover_letter_template_name
        self.switch_to_detail_frame()
        try:
            cover_letter_template_name = cover_letter_template_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.cover_letter_template_textbox_locator, cover_letter_template_name)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return cover_letter_template_name

    def get_created_cover_letter_template_name(self):
        """
        Implementing get created cover letter template name functionality
        :return: cover_letter_template_name
        """
        global cover_letter_template_name
        return cover_letter_template_name

    def click_accounting_codes_submenu(self):
        """
        Implementing click accounting codes submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.accounting_codes_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_accounting_code(self):
        """
        Implementing set accounting code functionality
        :return:
        """
        global accounting_code
        accounting_code =  self.random_string_generator(6, string.digits)
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.accounting_code_textbox_locator, accounting_code)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_created_accounting_code(self):
        """
        Implementing get created accounting code functionality
        :return:
        """
        global accounting_code
        return accounting_code

    def click_detail_frame_save_button(self):
        """
        Implementing click detail frame save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            save_button_element = self.wait().until(EC.presence_of_element_located(self.detail_frame_save_button_locator), 'save button locator not found before specified time out')
            save_button_element.click()
            # To Do: Find a way to work without time.sleep
            time.sleep(5)
            self.accept_alert_pop_up()
            self.wait_for_legacy_screen_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_tax_templates_submenu(self):
        """
        Implementing click tax templates submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.tax_templates_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_tax_template_name(self, template_prefix):
        """
        Implementing set tax template name functionality
        :param template_prefix:
        :return:
        """
        global tax_template_name
        tax_template_name = template_prefix + self.random_string_generator(size=4)
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.tax_template_textbox_locator, tax_template_name)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_created_tax_templates_name(self):
        """
        Implementing get created tax templates name functionality
        :return:
        """
        global tax_template_name
        return tax_template_name

    def set_tax_percentage(self, percentage):
        """
        Implementing set percentage functionality
        :param percentage:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.tax_percentage_textbox_locator, percentage)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_accounting_code_browse_button(self):
        """
        Implementing click accounting code browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            self.click_element(self.accounting_code_browse_textbox_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def set_first_letter(self, first_letter):
        """
        Implementing set first letter functionality
        :param first_letter:
        :return:
        """
        self.click_element(self.first_letter_textbox_locator, legacy_screen_loader=True)
        if first_letter == "":
            self.set_value_into_input_field(self.first_letter_textbox_locator, self.random_string_generator(size=5))
        else:
            self.set_value_into_input_field(self.first_letter_textbox_locator, first_letter)

    def click_go_button(self):
        """
        Implementing click go button functionality
        :return:
        """
        self.click_element(self.go_button_locator, legacy_screen_loader=True)

    def select_row_from_look_up_table(self, row_text, first_row, second_row):
        """
        Implementing select row from look up table functionality
        :param row_text:
        :param first_row:
        :param second_row:
        :return:
        """
        if first_row is True:
            look_up_table_row_locator = (By.XPATH, "//table[@id='tLookup']/descendant::span[@LineNo='1']")
        elif second_row is True:
            look_up_table_row_locator = (By.XPATH, "//table[@id='tLookup']/descendant::span[@LineNo='2']")
        else:
            look_up_table_row_locator = (By.XPATH, "//table[@id='tLookup']/descendant::span[text()='%s']" % row_text)
        self.click_element(look_up_table_row_locator)
        self.switch_to_previous_window()

    def set_tax_template_begin_date(self, begin_date, current_date, future_date):
        """
        Implementing set tax template begin date functionality
        :param begin_date:
        :param current_date:
        :param future_date:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if future_date is True:
                self.set_value_into_input_field(self.tax_template_begin_date_textbox_locator, self.get_date(future_date=True, number_of_days_to_add=6))
            elif current_date is True:
                self.set_value_into_input_field(self.tax_template_begin_date_textbox_locator, self.get_date(current_date=True))
            else:
                self.set_value_into_input_field(self.tax_template_begin_date_textbox_locator, begin_date)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_tax_template_end_date(self, end_date, future_date):
        """
        Implementing set tax template end date functionality
        :param end_date:
        :param future_date:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if future_date is True:
                self.set_value_into_input_field(self.tax_template_end_date_textbox_locator, self.get_date(future_date=True, number_of_days_to_add=8))
            else:
                self.set_value_into_input_field(self.tax_template_end_date_textbox_locator, end_date)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_charge_categories_submenu(self):
        """
        Implementing click charge categories submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.charge_categories_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_charge_categories_name(self, prefix):
        """
        Implementing set charge categories name functionality
        :param prefix:
        :return:
        """
        global charge_cateogry

        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.detail_frame_locator)
        try:
            charge_cateogry = prefix + self.random_string_generator(size=4)
            self.set_value_into_input_field(self.charge_categories_input_textbox_locator, charge_cateogry)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_charge_categories_name(self):
        """
        Implementing get charge categories name functionality
        :return:
        """
        global charge_cateogry
        return charge_cateogry

    def set_charge_categories_abbreviation(self, prefix):
        """
        Implementing set charge categories abbreviation functionality
        :param prefix:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.set_value_into_input_field(self.charge_categories_abbreviation_input_textbox_locator, (prefix + self.random_string_generator(size=4)))
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_recurring_charge_products_submenu(self):
        """
        Implementing click recurring charge products submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.recurring_charge_products_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_charge_product_name(self, prefix):
        """
        Implementing set charge product name functionality
        :param prefix:
        :return:
        """
        global charge_product

        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.detail_frame_locator)
        try:
            charge_product = prefix + self.random_string_generator(size=4)
            self.set_value_into_input_field(self.charge_product_name_input_textbox_locator, charge_product)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_charge_product_name(self):
        """
        Implementing get charge product name functionality
        :return:
        """
        global charge_product
        return charge_product

    def set_charge_product_abbreviation(self, prefix):
        """
        Implementing set charge product abbreviation functionality
        :param prefix:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.set_value_into_input_field(self.charge_product_abbreviation_input_textbox_locator, (prefix + self.random_string_generator(size=4)))
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_dropdown_item_from_select_tag(self, select_tag_locator, value):
        """
        Implementing select dropdown item from select tag functionality
        :param select_tag_locator:
        :param value:
        :return:
        """
        try:
            select = Select(self.wait().until(EC.presence_of_element_located(select_tag_locator)))
            select.select_by_visible_text(value)
        except:
            raise

    def select_charge_product_category_dropdown_item(self, category):
        """
        Implementing select charge product category dropdown item functionality
        :param category:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_dropdown_item_from_select_tag(self.charge_product_category_dropdown_select_tag_locator, category)
        self.switch_to_default_content()

    def set_recurrence_pattern(self, recurrence_value, period, starting_date):
        """
        Implementing set recurrence pattern functionality
        :param recurrence_value:
        :param period:
        :param starting_date:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.set_value_into_input_field(self.recurrence_charge_period_input_field_locator, value=recurrence_value)
            self.select_dropdown_item_from_select_tag(self.recurrence_charge_period_select_tag_locator, period)
            self.set_value_into_input_field(self.recurrence_charge_period_starting_on_date_locator, starting_date)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_bulk_user_assignments_submenu(self):
        """
        Implementing click bulk user assignments submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.bulk_user_assignments_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_user_with_selected_profile_present(self, users_first_name):
        """
        Implementing is user with selected profile present functionality
        :param users_first_name:
        :return: True/False
        """
        is_present = None
        self.switch_to_dot_net_page_frame()
        specific_user_locator = (By.XPATH, "//div[@id='ResultContentID_ddlBillManager1_DropDown']/descendant::ul/li[contains(text(), '%s')]" % users_first_name)
        try:
            self.click_element(self.billing_manager_dropdown_locator)
            is_present = self.is_element_present(specific_user_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def click_statements_submenu(self):
        """
        Implementing click statements submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.operation_menu_locator, self.statements_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_ixtools_account_letter(self, ixtools_account_name):
        """
        Implementing set ixtools account letter functionality
        :param ixtools_account_name:
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.set_value_into_input_field(self.ixtools_account_letters_textbox_locator, ixtools_account_name)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_billing_account_letter(self, bill_account_name):
        """
        Implementing set billing account letter functionality
        :param bill_account_name:
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.set_value_into_input_field(self.bill_account_letters_textbox_locator, bill_account_name)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_ixbill_statements_go_button(self):
        """
        Implementing click ixbill statements go button functionality
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.click_element(self.statements_go_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_first_company_plus_button(self):
        """
        Implementing click first company plus button functionality
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.click_element(self.first_plus_button_next_to_company_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_first_inner_carrier_plus_button(self):
        """
        Implementing click first inner carrier plus button functionality
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.click_element(self.first_inner_carrier_plus_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_specific_bill_account_present(self, bill_account_name):
        """
        Implementing is specific bill account present functionality
        :param bill_account_name:
        :return: True/False
        """
        is_present = None
        self.switch_to_list_frame()
        specific_bill_account_locator = (By.XPATH, "//span[text()='%s']" % bill_account_name)
        try:
            is_present = self.is_element_present(specific_bill_account_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def click_inner_bill_account_plus_button(self):
        """
        Implementing click inner bill account plus button functionality
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.click_element(self.inner_bill_account_plus_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_first_statement_number_present(self):
        """
        Implementing is first statement number present functionality
        :return: True/False
        """
        is_present = None
        self.switch_to_list_frame()
        try:
            is_present = self.is_element_present(self.first_statement_number_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def is_second_statement_number_present(self):
        """
        Implementing is second statement number present functionality
        :return: True/False
        """
        is_present = None
        self.switch_to_list_frame()
        try:
            is_present = self.is_element_present(self.second_statement_number_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def click_outbound_statements_submenu(self):
        """
        Implementing click outbound statements submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.worklists_menu_locator, self.outbound_statements_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_outbound_statements_worklist_begin_date(self, begin_date):
        """
        Implementing set outbound statements worklist begin date functionality
        :param begin_date:
        :return:
        """
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_dot_net_page_frame()
        try:
            if begin_date is None:
                self.set_value_into_input_field(self.outbound_statements_worklist_begin_date_input_box_locator, value=self.get_date(current_date=True))
            else:
                self.set_value_into_input_field(self.outbound_statements_worklist_begin_date_input_box_locator, value=begin_date)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_outbound_statements_worklist_end_date(self, end_date):
        """
        Implementing set outbound statements worklist end date functionality
        :param end_date:
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            if end_date is None:
                self.set_value_into_input_field(self.outbound_statements_worklist_end_date_input_box_locator, value=self.get_date(future_date=True, number_of_days_to_add=30))
            else:
                self.set_value_into_input_field(self.outbound_statements_worklist_end_date_input_box_locator, value=end_date)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_billing_account(self, billing_account):
        """
        Implementing select billing account functionality
        :param billing_account:
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.click_element(self.billing_account_multiselection_rad_button_locator)
            self.wait_for_legacy_screen_spinner_load()
            try:
                self.wait().until(EC.visibility_of_element_located(self.assign_billing_account_window_title_locator))
            except:
                pass
            try:
                check_all_checkbox_element = self.wait().until(EC.presence_of_element_located(self.check_all_checkbox_locator))
                checked_attribute = check_all_checkbox_element.get_attribute("CHECKED")
                if checked_attribute.strip().lower()== 'true':
                    self.click_element(self.check_all_checkbox_locator, script_executor=True)
                    self.wait_for_legacy_screen_spinner_load(spinner_locator=self.rad_ajax_spinner_locator)
            except:
                pass
            self.set_value_into_input_field(self.assign_billing_account_search_textbox_locator, value=billing_account)
            self.click_element(self.billing_account_search_button_locator, script_executor=True)
            self.wait_for_legacy_screen_spinner_load(spinner_locator=self.rad_ajax_spinner_locator)
            available_billing_account_locator = (By.XPATH, "//div[@id='FiltersContentID_BillingAccountMultiSelectionUserControl_MultiSelectionRadWindow_C_MultiSelectionListBoxControl_AvailableItemsRadListBox']/descendant::ul[@class='rlbList']/descendant::span[text()='%s']" %(billing_account))
            self.click_element(available_billing_account_locator, script_executor=True)
            self.click_element(self.move_account_arrow_button_locator)
            self.click_element(self.assign_billing_account_done_button_locator)
            self.wait_for_legacy_screen_spinner_load(spinner_locator=self.rad_ajax_spinner_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_outbound_statements_worklist_go_button(self):
        """
        Implementing click outbound statements worklist go button functionality
        :return:
        """
        self.switch_to_dot_net_page_frame()
        try:
            self.click_element(self.outbound_statements_worklist_go_button_locator)
            self.wait_for_legacy_screen_spinner_load(spinner_locator=self.rad_ajax_spinner_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_outbound_statements_worklist_grid_first_row_amount_value(self):
        """
        Implementing get outbound statements worklist grid first row amount value functionality
        :return:
        """
        amount = None
        self.switch_to_dot_net_page_frame()
        try:
            first_row_amount_column_element = self.wait().until(EC.presence_of_element_located(self.outbound_statements_worklist_grid_first_row_amount_column_locator))
            amount = first_row_amount_column_element.text
        except:
            raise
        finally:
            self.switch_to_default_content()
            return amount

    def click_on_specific_statement_date(self, statement_date):
        """
        Implementing click on specific statement date functionality
        :param statement_date: 
        :return: 
        """
        self.switch_to_list_frame()
        statement_date_locator = (By.XPATH, "//span[contains(text(), '%s')]" % statement_date)
        try:
            self.click_element(statement_date_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def compare_moved_non_traffic_charge(self, expected_value):
        """
        Implemented compare moved non traffic charge functionality
        :param expected_value: 
        :return: 
        """
        is_matched = False
        self.switch_to_detail_frame()
        try:
            billing_currency_element = self.wait().until(EC.presence_of_element_located(self.billing_currency_locator), 'billing currency locator not found before specified time out')
            actual_value = int(billing_currency_element.text)
            if int(expected_value) == actual_value:
                is_matched = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_matched

    def click_on_view_test_statement_link(self):
        """
        Implementing click on specific statement date functionality
        :return: 
        """
        self.switch_to_detail_frame()
        self.click_element(self.view_test_statement_link_locator)
        try:
            self.accept_alert_pop_up()
        except:
            pass
        finally:
            self.switch_to_default_content()

    def click_on_specific_cover_template(self, cover_template_name):
        """
        Implementing click on specific cover template functionality
        :param cover_template_name:
        :return:
        """
        self.switch_to_list_frame()
        cover_template_name_locator = (By.XPATH, "//span[text()='%s']" % cover_template_name)
        try:
            self.click_element(cover_template_name_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_cover_letter_body(self, body_text):
        """
        Implementing set cover letter body functionality
        :param body_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.cover_letter_body_textbox_locator, body_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_save_button_with_passing_two_confirmation(self):
        """
        Implementing click save button with passing two confirmation message functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            save_button_element = self.wait().until(EC.element_to_be_clickable(self.save_button_locator))
            save_button_element.click()
            time.sleep(5)
            self.accept_alert_pop_up()
            time.sleep(5)
            self.accept_alert_pop_up()
        except:
            raise
        finally:
            self.switch_to_default_content()
