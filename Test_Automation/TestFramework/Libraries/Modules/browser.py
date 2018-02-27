"""
WebDriver implementation.
Controls a browser by sending commands to a remote server.
Dictionary of effective capabilities of this browser session as returned by the remote server.
WebDriver Wait implementation
Hover on web element implementation
Switch to default window implementation
Switch to child window implementation
Get number of open window implementation
Maximize browser window implementation
Delete cookies implementation
Refresh current page implementation
Get current page title implementation
Script executor click implementation
Script executor implementation
Close current window implementation
Quit browser implementation
Switch to default content implementation
Capture page screen-shot implementation
Accept alert pop-up implementation
Dismiss alert pop up functionality
Drag and drop functionality
Set time out value function
Switch to frame function
Get alert text function
Switch to previous window function
Clear existing handles function
Accept ssl certificate function
Set ssl certificate flag function
Goto specific url function
Get current browser name function
"""
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.common.exceptions import WebDriverException
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.alert import Alert
import datetime

_driver = None
_existing_handles = []
_screenshot_count = 0
_time_out_value = 60
_is_ssl_certificate_present = False
_current_browser = None

@property
def driver():
    """
    Global variable of WebDriver
    :return: WebDriver instance
    """
    global _driver
    return _driver

def open_chrome():
    """
    Implementing launch Chrome browser functionality
    Create a new Chrome Driver instance by a dictionary of capabilities to request when
             starting the browser session.
    :return: driver instance
    """
    global _driver
    global _current_browser

    _current_browser = 'chrome'
    caps = DesiredCapabilities.CHROME
    caps['javascriptEnabled'] = True
    caps['acceptSslCerts'] = True

    from selenium.webdriver.chrome.options import Options
    options = Options()
    options.add_argument("--disable-extensions")
    _driver = webdriver.Chrome(desired_capabilities=caps, chrome_options=options)

def open_firefox():
    """
    Implementing launch Firefox browser functionality
    Create a new Firefox Driver instance by a dictionary of capabilities to request when
             starting the browser session.
    :return: driver instance
    """
    global _driver
    global _current_browser

    _current_browser = 'firefox'
    caps = DesiredCapabilities.FIREFOX
    caps['javascriptEnabled'] = True
    caps['acceptSslCerts'] = True
    _driver = webdriver.Firefox(capabilities=caps)

def open_ie():
    """
    Implementing launch IE browser functionality
    Create a new Internext Explorer Driver instance by a dictionary of capabilities to request when
             starting the browser session.
    :return: driver instance
    """
    global _driver
    global _current_browser

    _current_browser = 'ie'
    caps = DesiredCapabilities.INTERNETEXPLORER
    caps['ignoreProtectedModeSettings'] = True
    caps['ignoreZoomSetting'] = True
    caps['initialBrowserUrl'] = ""
    caps['ensureCleanSession'] = True  # Cleanup session in IE Browser
    caps['enableElementCacheCleanup'] = True  # Clear WebElement Cache from IE
    #caps['requireWindowFocus'] = True
    _driver = webdriver.Ie(capabilities=caps)

def goto(value):
    """
    Implementing load web page functionality
    Loads a web page in the current browser session.
    :param value: URL
    :return:
    """
    global _driver
    maximize_window()
    delete_cookies()
    _driver.get(value)
    accept_ssl_certificate()

def goto_specific_url(value):
    """
    Implementing goto specific url functionality
    :param value:
    :return:
    """
    global _driver
    _driver.get(value)

def set_time_out_value(value):
    """
    Implementing set time out value functionality
    :param value: time in seconds
    :return:
    """
    global _time_out_value
    _time_out_value = value

def wait(value):
    """
    Implementing web driver wait functionality
    WebDriver Wait instance
    :param value: Seconds
    :return:
    """
    global _driver, _time_out_value
    if value is not None:
        return WebDriverWait(_driver, value)
    else:
        return WebDriverWait(_driver, _time_out_value)

def set_ssl_certificate_flag(flag):
    """
    Implementing set ssl certificate flag functionality
    :return:
    """
    global _is_ssl_certificate_present
    _is_ssl_certificate_present = flag

def accept_ssl_certificate():
    """
    Implementing accept ssl certificate functionality
    :return:
    """
    global _is_ssl_certificate_present
    override_link_locator = (By.ID, "overridelink")

    if _is_ssl_certificate_present is True:
        try:
            override_link_element = wait(30).until(EC.presence_of_element_located(override_link_locator), 'override link locator not found before specified time out')
            script_executor_click(override_link_element)
        except:
            raise
    else:
        pass

def hover(element):
    """
    Implementing mouse hover functionality
    Mouse hover on WebElement
    :param element: WebElement locator
    """
    global _driver
    ActionChains(_driver).move_to_element(element).perform()

def clear_existing_handles():
    """
    Implementing clear existing handles functionality
    Clear _existing_handles
    :return:
    """
    global _existing_handles
    del _existing_handles[:]

def set_existing_handles():
    """
    Implementing set existing handles functionality
    Store current window handle into _existing_handles
    :return:
    """
    global _driver
    global _existing_handles

    _existing_handles.append(_driver.current_window_handle)

def switch_to_window(iteration=1, maximize=True):
    """
    Implementing switch to child window functionality
    Switch to Child screen/window
    """
    global _driver
    global _existing_handles

    dummy_locator = (By.ID, "ThisIsDummyLocator")

    wait(10).until(lambda driver: len(driver.window_handles) > 1, 'New window not found before specified time.')
    found_handle = None
    while found_handle is None and iteration <= 5:
        iteration += 1
        current_handles = set(_driver.window_handles)
        if len(current_handles) != len(_existing_handles):
            for current_handle in current_handles:
                if current_handle not in _existing_handles:
                    found_handle = current_handle
                    break
                else:
                    pass
        else:
            pass

        try:
            wait(5).until(EC.visibility_of_element_located(dummy_locator))
        except:
            pass

    if found_handle is not None:
        _driver.switch_to_window(found_handle)
        if maximize is True:
            maximize_window()
    else:
        raise WebDriverException(msg='Switch to new window failed.')

def switch_to_default_window():
    """
    Implementing switch to default window functionality
    Switch to default screen/window
    :return:
    """
    global _driver
    if len(_driver.window_handles) == 1:
        _driver.switch_to_window(_driver.window_handles[0])
    else:
        pass

def number_of_open_window():
    """
    Implementing get number of open window functionality
    Returns the number of open window
    :return: Number of open window
    """
    global _driver
    return len(_driver.window_handles)

def maximize_window():
    """
    Implementing maximize browser window functionality
    Maximizes the current window that webdriver is using
    """
    global _driver
    _driver.maximize_window()

def delete_cookies():
    """
    Delete all cookies of browser
    Implementing delete cookies functionality
    """
    global _driver
    _driver.delete_all_cookies()
    _driver.refresh()

def refresh_window():
    """
    Implementing refresh current page functionality
    Refreshes the current page.
    """
    global _driver
    _driver.refresh()

def page_title():
    """
    Implementing get page title functionality
    Returns the title of the current page.
    """
    global _driver
    return _driver.title

def text_contains_on_page_source(text):
    """
    Implementing check text contains in html source functionality
    Returns True if text is present in page source. If not False
    :param text:
    :return: True/False
    """
    global _driver
    return text in _driver.page_source

def script_executor_click(element):
    """
    Implementing executor click functionality
    Using JavaScript Executor, click on WebElement
    :param element: WebElement locator
    """
    global _driver
    _driver.execute_script("arguments[0].click()", element)

def script_executor(element):
    """
    Implementing script executor functionality
    Using JavaScript Executor
    :param element: WebElement
    """
    global _driver
    _driver.execute_script(element)

def close_browser():
    """
    Implementing close current window functionality
    Closes the current window.
    :return:
    """
    global _driver
    _driver.close()

def quit():
    """
    Implementing close browser functionality
    Quits the driver and closes every associated window.
    :return:
    """
    global _driver
    _driver.quit()

def switch_to_default_content():
    """
    Implementing switch back to parent frame functionality
    Get back to the parent frame
    :return:
    """
    global _driver
    _driver.switch_to_default_content()

def capture_screenshot(directory):
    """
    Implementing capture screenshot functionality
    :return: image path
    """
    global _screenshot_count

    file_name = "screenshot_"  + str.replace(str.replace(str(datetime.datetime.now()), ' ', '_'), ':', '') + "_" + str(_screenshot_count) + ".png"
    file_path = directory + "\\" + file_name
    _driver.get_screenshot_as_file(file_path)
    _screenshot_count += 1
    return file_name

def accept_alert_pop_up():
    """
    Implementing accept alert pop up functionality
    :return:
    """
    global _driver
    Alert(_driver).accept()

def dismiss_alert_pop_up():
    """
    Implementing dismiss alert pop up functionality
    :return:
    """
    global _driver
    Alert(_driver).dismiss()

def drag_and_drop(source, target):
    """
    Implementing drag and drop functionality
    :param source:
    :param target:
    :return:
    """
    global _driver
    actions = ActionChains(_driver)
    actions.drag_and_drop(source, target).perform()

def switch_to_frame(frame_element):
    """
    Implementing switch to frame functionality
    :param frame_element:
    :return:
    """
    global _driver
    _driver.switch_to_frame(frame_element)

def get_alert_text():
    """
    Implementing get alert text functionality
    :return: alert text
    """
    global _driver
    return Alert(_driver).text

def switch_to_previous_window():
    """
    Implementing switch to previous window functionality
    :return:
    """
    global _driver
    global _existing_handles
    
    _driver.switch_to_window(_existing_handles.pop())

def get_current_browser_name():
    """
    Implementing get current browser name functionality
    :return: _current_browser_name
    """
    global _current_browser
    return _current_browser
