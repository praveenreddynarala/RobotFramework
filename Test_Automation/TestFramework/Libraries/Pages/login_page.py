"""Implementing Login screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class LoginPage(BasePage):
    """
    Contains Login UI page locators
    Login function
    """
    # Start: Login page locators
    user_name_locator = (By.ID, "UserName")
    password_locator = (By.ID, "Password")
    login_locator = (By.XPATH, "//div[@class='login-form']/descendant::input[@type='submit' and @value='Login']")
    # End: Login page locators

    def is_user_loggedin(self):
        """
        Check if the user is already logged in or not
        :return: True/False
        """
        try:
            self.wait(5).until(EC.presence_of_element_located(self.login_locator))
            user_is_loggedin = False
        except:
            user_is_loggedin = True

        return user_is_loggedin

    def perform_login(self, user_name, password):
        """
        Implementing Login functionality
        :param user_name:
        :param password:
        :return:
        """
        if (self.is_user_loggedin() != True):
            user_name_element = self.wait().until(EC.visibility_of_element_located(self.user_name_locator), 'user name locator not found before specified time out')
            password_element = self.wait().until(EC.visibility_of_element_located(self.password_locator), 'password locator not found before specified time out')
            user_name_element.clear()
            password_element.clear()

            user_name_element.send_keys(user_name)
            password_element.send_keys(password)

            login_element = self.wait().until(EC.visibility_of_element_located(self.login_locator), 'login locator not found before specified time out')
            login_element.click()
        else:
            pass
