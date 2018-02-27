"""Implements Test Startup settings"""

import TestFramework.Libraries.Modules.browser as Browser


class TestFixture:
    """
    Set of objects used as a baseline for running tests.
    Navigating to System Under Test
    Closing browser instance
    Set Webdriver time out value function
    Set ssl certificate flag functionality
    """
    def setup(self, browser_name):
        browser = None
        if (browser_name.lower() == 'chrome'):
            browser = Browser.open_chrome()
        elif (browser_name.lower() == 'firefox'):
            browser = Browser.open_firefox()
        elif (browser_name.lower() == 'ie'):
            browser = Browser.open_ie()
        else:
            browser = Browser.open_ie() # Set IE as default browser

        return browser

    def set_time_out_value(self, value):
        """
        Implementing set webdriver time out value functionality
        :param value: time out value in seconds
        :return:
        """
        try:
            Browser.set_time_out_value(60)
            if value is not None and value is not "":
                time_out_value = int(value)
                if time_out_value > 0:
                    Browser.set_time_out_value(time_out_value)
        except:
            Browser.set_time_out_value(60)

    def goto(self, value):
        """Launching/Navigating System Under Test"""
        return Browser.goto(value)

    def teardown(self):
        """Closing browser instance"""
        return Browser.quit()

    def capture_screenshot(self, directory):
        """ Implement capture screenshot """
        return Browser.capture_screenshot(directory)

    def set_ssl_certificate_flag(self, flag):
        """
        Implementing set ssl certificate flag functionality
        :param flag:
        :return:
        """
        if flag is not None and flag is not "":
            if flag.lower() == "true":
                Browser.set_ssl_certificate_flag(True)