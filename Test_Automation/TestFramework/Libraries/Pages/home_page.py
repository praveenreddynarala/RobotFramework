"""Implementing Home screen page objects repository"""

from TestFramework.Libraries.Pages.base_page import BasePage
from TestFramework.Libraries.Pages.login_page import LoginPage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class HomePage(BasePage):
    """
    Contains SaaS Home UI/Page control locators
    Is login successful function
    Sign out function
    Handle multiple sessions function
    Select sell submenu function
    Select price submenu function
    Select buy submenu function
    Select carrier submenu function
    Select route submenu function
    Select translate submenu function
    Select network submenu function
    Select contracts submenu function
    Select business admin submenu function
    Select system admin submenu function
    Select job maintenance submenu function
    Select report submenu function
    Select alert submenu function
    Select audit submenu function
    Select bill submenu function
    Select bill and audit submenu function
    """
    # Start: Home page locators
    home_menu_locator = (By.ID, "menu_opener")
    home_dashboard_locator = (By.XPATH, "//div[@id='HomeTabStrip']/descendant::a[@class='k-link']")
    user_menu_locator = (By.XPATH, "//div[@id='mnuAccounts']/descendant::a[@id='menu_opener']")
    sign_out_locator = (By.ID, "lnkSignout")

    # Start: Multiple session error message locators
    multiple_sessions_error_message = "Multiple Sessions found. All older session(s) will be logged off automatically."
    confirm_popup_ok_buttton_locator = (By.ID, "btnOk")
    # End: Multiple session error message locators

    # Start: Submenu Locators
    sell_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Sell']")
    price_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Price']")
    buy_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Buy']")
    carrier_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Carrier']")
    route_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Route']")
    network_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Network']")
    business_admin_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Business Admin']")
    contracts_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Contracts']")
    translate_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Translate']")
    system_admin_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='System Admin']")
    job_maintenance_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Job Maintenance']")
    report_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Report']")
    alert_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Alert']")
    audit_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Audit']")
    bill_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Bill']")
    bill_and_audit_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Bill & Audit']")
    # End: Submenu Locators
    # End: Home page locators

    def is_login_successful(self):
        """
        Implementing is login successful functionality
        :return: True/False
        """
        self.clear_existing_handles()
        is_successful = None
        try:
            self.wait(30).until(EC.visibility_of_element_located(self.home_dashboard_locator))
            is_successful = True
        except:
            is_successful = False
        return is_successful

    def sign_out(self):
        """
        Implementing sign out functionality
        :return:
        """
        self.click_element(self.user_menu_locator, script_executor=True, hover=True, error_message='Sign out failed, User menu locator not found')
        self.click_element(self.sign_out_locator, script_executor=True, error_message='Sign out failed, Sign out locator not found')

        login = LoginPage()
        self.wait(120).until(EC.visibility_of_element_located(login.login_locator), 'element in login page not found before specified time')
        if self.number_of_open_window() > 1:
            self.close_browser()
            self.switch_to_default_window()
            self.refresh_window()
            self.wait(120).until(EC.visibility_of_element_located(login.login_locator), 'element in login page not found before specified time')
        else:
            self.refresh_window()
            self.close_browser()

    def handle_multiple_sessions(self):
        """
        Implementing handle multiple sessions functionality
        :return:
        """
        if self.text_contains_on_page_source(self.multiple_sessions_error_message):
            confirm_popup = self.wait().until(EC.visibility_of_element_located(self.confirm_popup_ok_buttton_locator), 'confirm popup not found before specified time')
            confirm_popup.click()
        else:
            pass

    def select_sell_submenu(self):
        """
        Implementing select sell submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.sell_submenu_locator)

    def select_price_submenu(self):
        """
        Implementing select price submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.price_submenu_locator)

    def select_buy_submenu(self):
        """
        Implementing select buy submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.buy_submenu_locator)

    def select_carrier_submenu(self):
        """
        Implementing select carrier submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.carrier_submenu_locator)

    def select_route_submenu(self):
        """
        Implementing select route submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.route_submenu_locator)

    def select_translate_submenu(self):
        """
        Implementing select translate submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.translate_submenu_locator)

    def select_network_submenu(self):
        """
        Implementing select network submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.network_submenu_locator)

    def select_contracts_submenu(self):
        """
        Implementing select contracts submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.contracts_submenu_locator)

    def select_business_admin_submenu(self):
        """
        Implementing select business admin submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.business_admin_submenu_locator)

    def select_system_admin_submenu(self):
        """
        Implementing select system admin submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.system_admin_submenu_locator)

    def select_job_maintenance_submenu(self):
        """
        Implementing select job maintenance submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.job_maintenance_submenu_locator)

    def select_report_submenu(self):
        """
        Implementing select report submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.report_submenu_locator)

    def select_alert_submenu(self):
        """
        Implementing select alert submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.alert_submenu_locator)

    def select_audit_submenu(self):
        """
        Implementing select audit submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.audit_submenu_locator)

    def select_bill_submenu(self):
        """
        Implementing select bill submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.bill_submenu_locator)

    def select_bill_and_audit_submenu(self):
        """
        Implementing select bill and audit submenu functionality
        :return:
        """
        self.select_submenu(self.home_menu_locator, self.bill_and_audit_submenu_locator)
