"""
Implementing IXConnect UI page actions
Implementing Logging mechanism for IXConnect UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.Legacy.ixconnect_page import IXConnectPage


class IXConnect:
    """
    Returning switch to ixconnect page
    Returning switch to list frame
    Returning click new rating method button
    Returning switch to detail frame
    Returning click new button
    Returning set new daylight saving zone
    Returning set new daylight saving zone region
    Returning click new daylight saving zone save button
    Returning set new rating method name
    Returning set new rating method abbreviation
    Returning set minimum value
    Returning set initial rounding value
    Returning set additional rounding value
    Returning set maximum value
    Returning set measure adjustment value
    Returning select rating dimensions subtab
    Returning click date and time value button
    Returning select rate dimension template
    Returning select band rates subtab
    Returning select automatically assign bands checkbox
    Returning click new rating method save button
    Returning switch to default content
    Returning click add a new row button
    Returning set daylight saving zone period begin date
    Returning set begin hour value
    Returning set begin hour minute value
    Returning set daylight saving zone period end date
    Returning set end hour value
    Returning set end hour minute value
    Returning click daylight saving zone period save button
    Returning set letters for search
    Returning click go button
    Returning expand testhome region
    Returning is created daylight saving zone available
    Returning select daylight saving zone
    Returning click delete button
    Returning expand new rating method structure
    Returning is rating method available
    Returning select rating method
    Returning click rating method delete button
    Returning close ixconnect window
    Returning switch to previous window
    Returning get destination date
    Returning validate date format
    Returning validate currency format
    Returning get destination date
    Returning get day light savings zone date
    Returning click test home button
    Returning get daylight savings grid begin date
    Returning switch to header frame
    Returning click new route class button
    Returning set route class
    Returning get route class
    Returning select company submenu
    Returning set company
    Returning get company
    Returning click company save button
    Returning set route class abbreviation
    Returning set target fulfillment order
    Returning set capacity saturation order
    Returning click route class save button
    Returning select destination submenu
    Returning click destination new button
    Returning set destination
    Returning get created destination
    Returning set destination abbreviation
    Returning set destination type
    Returning click service level new button
    Returning set service level
    Returning get created service level
    Returning set service level abbreviation
    Returning select route class
    Returning click service level save button
    Returning set call char
    Returning set country
    Returning set number plan
    Returning set destination begin date
    Returning set destination end date
    Returning click destination save button
    Returning set route class service
    Returning get rating method
    Returning click selected for routing check box
    Returning click route class initialize button
    Returning select product submenu
    Returning expand routing structure
    Returning select routing
    Returning click add new product link
    Returning set product name
    Returning set product abbreviation
    Returning set routing destination
    Returning set first letter
    Returning set company code
    Returning click maintain routing products button
    Returning click new destination button
    Returning set dialed digits
    Returning set dialed digits begin date
    Returning click dialed digits save button
    Returning set dialed digits end date
    Returning select origin set subtab
    Returning click origin set value button
    Returning set origin set letters
    Returning is job maintenance link present
    Returning click exit header link
    Returning click create new complex contract button
    Returning set contract account
    Returning set contract direction
    Returning set contract name
    Returning set contract begin date
    Returning set contract end date
    Returning click contract details save button
    Returning select configure number plan tab
    Returning set configure number plan commercial trunk
    Returning set configure number plan call type
    Returning click configure number plan create plus button
    Returning set create a new number plan
    Returning set number plan to copy from
    Returning move available countries to destination
    Returning click configure number plan go button
    Returning click configure number plan save button
    Returning select rating and tariff details tab
    Returning set rating and tariff details rating method
    Returning set rating and tariff details outbound rate plan
    Returning click rating and tariff details save button
    Returning click complex contract wizard next button
    Returning set aggregation group name
    Returning set aggregation group abbreviation
    Returning set aggregation template
    Returning click create aggregation group save button
    Returning set aggregate product name
    Returning set aggregate product abbreviation
    Returning set traffic direction
    Returning check traffic type
    Returning check rate type
    Returning select aggregation rules tab
    Returning move available service to destination
    Returning move available commercial trunk to destination
    Returning select aggregation rules grid first row checkbox
    Returning set aggregate rate plan name
    Returning set aggregate rate plan abbreviation
    Returning set rate plan type
    Returning set tariff type
    Returning set currency
    Returning click aggregate rate plan save button
    Returning click aggregate scenario save button
    Returning click rating structure 3 arrow
    Returning click add new tier button
    Returning click submit button
    Returning set value in tier grid column
    Returning set value in rate grid column
    Returning click rate grid save button
    Returning click contract complete button
    Returning click auto extend operational and accounting radio button
    Returning click auto extend operational only radio button
    Returning click rating structure 22 arrow
    Returning set rate structure
    Returning set splitting type
    Returning set threshold
    Returning set penalty rate
    Returning click rating structure save button
    Returning click manage complex contracts button
    Returning click manage complex contracts go button
    Returning set signature date
    Returning click manage complex contracts save button
    Returning click manage complex contracts unlocked button
    Returning is lock unlock popup present
    Returning set contract status
    Returning click manage complex contract button
    Returning set complex contract account
    Returning set complex contract status
    Returning set complex contract locked status
    Returning click complex contract management go button
    Returning click contracts grid first row contract status change button
    Returning click change contract status radio button
    Returning click change contract status save button
    Returning set contracts grid signature date
    Returning unlock contracts grid first row
    Returning click contracts grid first row contract name
    Returning is edit contract name disabled
    Returning click contract workflow link
    Returning click change contract locked status radio button
    Returning set group commitment
    Returning set subgroup commitment
    Returning set value in shortfall rates grid column
    Returning move available virtual countries to destination
    Returning get created contract name
    Returning click complex contract dashboard link
    Returning set contract name for search
    Returning click contract report button
    Returning click contract version submit button
    Returning click preview button
    Returning click export to excel button
    Returning close window and switch to previous window
    Returning click detail tab
    Returning click first row add product button
    Returning are rate type checkboxes disabled
    Returning set origin set
    Returning move available settlement origin to destination
    Returning click aggregate rules exit button
    Returning click complex contract worklist button
    Returning click filters collapsible arrow button
    Returning is specific field on complex contract worklist present
    Returning set complex contract worklist contract status
    Returning click complex contract workflow go button
    Returning click complex contract workflow first row contract
    Returning click complex contract management first row workflow button
    Returning is specific column on complex contract management grid present
    Returning set complex contract management grid signature date
    Returning click complex contract management save button
    Returning click complex contract worklist clear sections button
    Returning is specific column on complex contract worklist grid present
    Returning click contract simulator button
    Returning is contract simulator specific search field present
    Returning set contract simulator status for search
    Returning click contract simulator search button
    Returning click contract simulator download button
    Returning is specific field present on download new simulator pop up
    Returning click contract simulator cancel button
    Returning set download new simulator carrier
    Returning set download new simulator revenue country
    Returning click download new simulator download button
    Returning set grace period from dropdown
    Returning set aggregate group grace period
    Returning switch to upperlist frame
    Returning select network trunk submenu
    Returning set trunk letters
    Returning click expand switch button
    Returning click trunk name for details
    Returning get transmission type
    Returning set contract begin date for search
    Returning set contract end date for search
    Returning select number plan tab
    Returning click add number plan grid first row export button
    Returning select carrier submenu
    Returning click carrier account first plus button
    Returning click other rate plan first plus button
    Returning click other rate plan first book icon button
    Returning click copy from existing complex contract
    Returning set copy complex contract source account
    Returning set copy complex contract target account
    Returning set copy complex contract source contract
    Returning click copy contract save button
    Returning set copy contract copy direction
    Returning select aggregation groups mapping tab
    Returning click aggregation groups mapping save button
    Returning select commercial trunk mapping tab
    Returning click commercial trunk mapping save button
    Returning select number plan mapping tab
    Returning set target number plan
    Returning click number plan mapping save button
    Returning select rate plan mapping tab
    Returning click rate plan mapping save button
    Returning select product mapping submenu
    Returning click product mapping go button
    Returning get product mapping grid first row selling product
    Returning click selling product browse button
    Returning select selling product
    Returning make routing to selling percentage to 100
    Returning click first account name
    Returning click buyer browse button
    Returning click seller browse button
    Returning click account save button
    Returning select buyer tab
    Returning select seller tab
    Returning verify first name
    Returning verify last name
    Returning is contract simulator search button present
    Returning is contract simulator download button present
    Returning is contract simulator upload button present
    Returning is contract simulator download button not present
    Returning is contract simulator upload button not present
    Returning is contract submenu not present
    Returning read data from upload excel file
    Returning compare rates grid product with excel data
    Returning click on first route class
    Returning is specific mandatory field on route class present
    Returning is service level created for route class
    Returning select first inner customer
    Returning is service level column present
    Returning click on specific tab in agreement page
    Returning is specific tab remained intact
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('IXConnect')

    def __init__(self):
        self._ixconnect_page = IXConnectPage()

    def switch_to_ixconnect(self):
        """
        Returning switch to ixconnect
        Implementing logging for switch to ixconnect functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to ixconnect method')
            self._ixconnect_page.switch_to_ixconnect()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to ixconnect method')
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
            self._ixconnect_page.switch_to_list_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to list frame')
            return is_switched

    def click_new_rating_method_button(self):
        """
        Returning click new rating method button
        Implementing logging for click new rating method button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new rating method button')
            self._ixconnect_page.click_new_rating_method_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new rating method button')
            return is_clicked

    def switch_to_detail_frame(self):
        """
        Returning switch to detail frame
        Implementing logging for switch to detail frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to detail frame')
            self._ixconnect_page.switch_to_detail_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to detail frame')
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
            self._ixconnect_page.click_new_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new button')
            return is_clicked

    def set_new_daylight_saving_zone(self, daylight_saving_zone_name_prefix):
        """
        Returning set new daylight saving zone
        Implementing logging for set new daylight saving zone functionality
        :param daylight_saving_zone_name_prefix:
        :return: daylight_saving_zone
        """
        daylight_saving_zone = None
        try:
            self.logger.info('Start: set new daylight saving zone')
            daylight_saving_zone = self._ixconnect_page.set_new_daylight_saving_zone(daylight_saving_zone_name_prefix)
        except WebDriverException as exp:
            daylight_saving_zone = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new daylight saving zone')
            return daylight_saving_zone

    def set_new_daylight_saving_zone_region(self, region):
        """
        Returning set new daylight saving zone region
        Implementing logging for set new daylight saving zone region functionality
        :param region:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new daylight saving zone region')
            self._ixconnect_page.set_new_daylight_saving_zone_region(region)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new daylight saving zone region')
            return is_set

    def click_new_daylight_saving_zone_save_button(self):
        """
        Returning click new daylight saving zone save button
        Implementing logging for click new daylight saving zone save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new daylight saving zone save button')
            self._ixconnect_page.click_new_daylight_saving_zone_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new daylight saving zone save button')
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
            self._ixconnect_page.switch_to_default_content()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to default content')
            return is_switched

    def click_add_a_new_row_button(self):
        """
        Returning click add a new row button
        Implementing logging for click add a new row button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add a new row button')
            self._ixconnect_page.click_add_a_new_row_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add a new row button')
            return is_clicked

    def set_daylight_saving_zone_period_begin_date(self, begin_date):
        """
        Returning set daylight saving zone period begin date
        Implementing logging for set daylight saving zone period begin date functionality
        :param: begin_date
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set daylight saving zone period begin date')
            self._ixconnect_page.set_daylight_saving_zone_period_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set daylight saving zone period begin date')
            return is_set

    def set_begin_hour_value(self, begin_hour):
        """
        Returning set begin hour value
        Implementing logging for set begin hour value functionality
        :param begin_hour:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin hour value')
            self._ixconnect_page.set_begin_hour_value(begin_hour)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin hour value')
            return is_set

    def set_begin_hour_minute_value(self, minute):
        """
        Returning set begin hour minute value
        Implementing logging for set begin hour minute value functionality
        :param minute:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin hour minute value')
            self._ixconnect_page.set_begin_hour_minute_value(minute)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin hour minute value')
            return is_set

    def set_daylight_saving_zone_period_end_date(self, end_date):
        """
        Returning set daylight saving zone period end date
        Implementing logging for set daylight saving zone period end date functionality
        :param: end_date
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set daylight saving zone period end date')
            self._ixconnect_page.set_daylight_saving_zone_period_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set daylight saving zone period end date')
            return is_set

    def set_end_hour_value(self, end_hour):
        """
        Returning set end hour value
        Implementing logging for set end hour value functionality
        :param end_hour:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set end hour value')
            self._ixconnect_page.set_end_hour_value(end_hour)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end hour value')
            return is_set

    def set_end_hour_minute_value(self, minute):
        """
        Returning set end hour minute value
        Implementing logging for set end hour minute value functionality
        :param minute:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set end hour minute value')
            self._ixconnect_page.set_end_hour_minute_value(minute)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end hour minute value')
            return is_set

    def click_daylight_saving_zone_period_save_button(self):
        """
        Returning click daylight saving zone period save button
        Implementing logging for click daylight saving zone period save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click daylight saving zone period save button')
            self._ixconnect_page.click_daylight_saving_zone_period_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click daylight saving zone period save button')
            return is_clicked

    def set_letters_for_search(self, letters):
        """
        Returning set letters for search
        Implementing logging for set letters for search functionality
        :param letters:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set letters for search')
            self._ixconnect_page.set_letters_for_search(letters)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set letters for search')
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
            self._ixconnect_page.click_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click go button')
            return is_clicked

    def expand_testhome_region(self):
        """
        Returning expand testhome region
        Implementing logging for expand testhome region functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand testhome region')
            self._ixconnect_page.expand_testhome_region()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand testhome region')
            return is_expanded

    def is_created_daylight_saving_zone_available(self, daylight_saving_zone):
        """
        Returning is created daylight saving zone available
        Implementing logging for is created daylight saving zone available functionality
        :param daylight_saving_zone:
        :return: True/False
        """
        try:
            self.logger.info('Start: is created daylight saving zone available')
            return self._ixconnect_page.is_created_daylight_saving_zone_available(daylight_saving_zone)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is created daylight saving zone available')

    def select_daylight_saving_zone(self, daylight_saving_zone):
        """
        Returning select daylight saving zone
        Implementing logging for select daylight saving zone functionality
        :param daylight_saving_zone:
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: select daylight saving zone')
            self._ixconnect_page.select_daylight_saving_zone(daylight_saving_zone)
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select daylight saving zone')
            return is_expanded

    def click_delete_button(self):
        """
        Returning click delete button
        Implementing logging for click delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click delete button')
            self._ixconnect_page.click_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click delete button')
            return is_clicked

    def close_ixconnect_window(self, switch_to_default_window=False):
        """
        Returning close ixconnect window
        Implementing logging for close ixconnect window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close ixconnect window')
            self._ixconnect_page.close_browser()
            if switch_to_default_window is True:
                self._ixconnect_page.switch_to_default_window()
            else:
                self._ixconnect_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close ixconnect window')
            return is_closed

    def switch_to_previous_window(self):
        """
        Returning switch to previous window
        Implementing logging for switch to previous window functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to previous window')
            self._ixconnect_page.switch_to_previous_window()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to previous window')
            return is_switched

    def set_new_rating_method_name(self, rating_method_prefix):
        """
        Returning set new rating method name
        Implementing logging for set new rating method name functionality
        :param rating_method_prefix:
        :return: rating method
        """
        rating_method = None
        try:
            self.logger.info('Start: set new rating method name')
            rating_method = self._ixconnect_page.set_new_rating_method_name(rating_method_prefix)
        except WebDriverException as exp:
            rating_method = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new rating method name')
            return rating_method

    def set_new_rating_method_abbreviation(self, abbreviation_prefix):
        """
        Returning set new rating method abbreviation
        Implementing logging for set new rating method abbreviation functionality
        :param abbreviation_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new rating method abbreviation')
            self._ixconnect_page.set_new_rating_method_abbreviation(abbreviation_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new rating method abbreviation')
            return is_set

    def set_minimum_value(self, value):
        """
        Returning set minimum value
        Implementing logging for set minimum value functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set minimum value')
            self._ixconnect_page.set_minimum_value(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set minimum value')
            return is_set

    def set_initial_rounding_value(self, value):
        """
        Returning set initial rounding value
        Implementing logging for set initial rounding value functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set initial rounding value')
            self._ixconnect_page.set_initial_rounding_value(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set initial rounding value')
            return is_set

    def set_additional_rounding_value(self, value):
        """
        Returning set additional rounding value
        Implementing logging for set additional rounding value functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set additional rounding value')
            self._ixconnect_page.set_additional_rounding_value(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set additional rounding value')
            return is_set

    def set_maximum_value(self, value):
        """
        Returning set maximum value
        Implementing logging for set maximum value functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set maximum value')
            self._ixconnect_page.set_maximum_value(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set maximum value')
            return is_set

    def set_measure_adjustment_value(self, value):
        """
        Returning set measure adjustment value
        Implementing logging for set measure adjustment value functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set measure adjustment value')
            self._ixconnect_page.set_measure_adjustment_value(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set measure adjustment value')
            return is_set

    def select_rating_dimensions_subtab(self):
        """
        Returning select rating dimensions subtab
        Implementing logging for select rating dimensions subtab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select rating dimensions subtab')
            self._ixconnect_page.select_rating_dimensions_subtab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select rating dimensions subtab')
            return is_selected

    def click_date_and_time_value_button(self):
        """
        Returning click date and time value button
        Implementing logging for click date and time value button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click date and time value button')
            self._ixconnect_page.click_date_and_time_value_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click date and time value button')
            return is_clicked

    def select_rate_dimension_template(self, template):
        """
        Returning select rate dimension template
        Implementing logging for select rate dimension template functionality
        :param template:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select rate dimension template')
            self._ixconnect_page.select_rate_dimension_template(template)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select rate dimension template')
            return is_selected

    def select_band_rates_subtab(self):
        """
        Returning select band rates subtab
        Implementing logging for select band rates subtab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select band rates subtab')
            self._ixconnect_page.select_band_rates_subtab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select band rates subtab')
            return is_selected

    def select_automatically_assign_bands_checkbox(self):
        """
        Returning select automatically assign bands checkbox
        Implementing logging for select automatically assign bands checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select automatically assign bands checkbox')
            self._ixconnect_page.select_automatically_assign_bands_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select automatically assign bands checkbox')
            return is_selected

    def click_new_rating_method_save_button(self):
        """
        Returning click new rating method save button
        Implementing logging for click new rating method save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new rating method save button')
            self._ixconnect_page.click_new_rating_method_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new rating method save button')
            return is_clicked

    def expand_new_rating_method_structure(self):
        """
        Returning expand new rating method structure
        Implementing logging for expand new rating method structure functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand new rating method structure')
            self._ixconnect_page.expand_new_rating_method_structure()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand new rating method structure')
            return is_expanded

    def is_rating_method_available(self, rating_method):
        """
        Returning is rating method available
        Implementing logging for is rating method available functionality
        :param rating_method:
        :return: True/False
        """
        try:
            self.logger.info('Start: is rating method available')
            return self._ixconnect_page.is_rating_method_available(rating_method)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rating method available')

    def select_rating_method(self, rating_method):
        """
        Returning select rating method
        Implementing logging for select rating method functionality
        :param rating_method:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select rating method')
            self._ixconnect_page.select_rating_method(rating_method)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select rating method')
            return is_selected

    def click_rating_method_delete_button(self):
        """
        Returning click rating method delete button
        Implementing logging for click rating method delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rating method delete button')
            self._ixconnect_page.click_rating_method_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rating method delete button')
            return is_clicked

    def get_destination_date(self):
        """
        Returning get destination date
        Implementing logging for get destination date functionality
        :return: destination date
        """
        try:
            self.logger.info('Start: get destination date')
            return self._ixconnect_page.get_destination_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destination date')

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
                status = self._ixconnect_page.validate_date_format(actual_date, expected_date_format)
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
                status = self._ixconnect_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def get_date_from_daylight_savings_zone(self):
        """
        Returning get day light savings zone date
        Implementing logging for get day light savings zone date functionality
        :return: daylight savings zone date
        """
        try:
            self.logger.info('Start: get day light savings zone date')
            return self._ixconnect_page.get_date_from_daylight_savings_zone()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get day light savings zone date')

    def select_route_class_submenu(self):
        """
        Returning select route class submenu
        Implementing logging for select route class submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select route class submenu')
            self._ixconnect_page.select_route_class_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select route class submenu')
            return is_selected

    def click_new_route_class_button(self):
        """
        Returning click new route class button
        Implementing logging for click new route class button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new route class button')
            self._ixconnect_page.click_new_route_class_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new route class button')
            return is_clicked

    def set_route_class(self, route_class_prefix):
        """
        Returning set route class
        Implementing logging for set route class functionality
        :param route_class_prefix:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set route class')
            self._ixconnect_page.set_route_class(route_class_prefix)
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class')
            return status

    def set_route_class_service(self, item):
        """
        Returning set route class service
        Implementing logging for set route class service functionality
        :param item:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set route class service')
            self._ixconnect_page.set_route_class_service(item)
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class service')
            return status

    def get_route_class(self):
        """
        Returning get route class
        Implementing logging for get route class functionality
        :return: route class
        """
        try:
            self.logger.info('Start: get route class')
            return self._ixconnect_page.get_route_class()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get route class')

    def set_route_class_abbreviation(self):
        """
        Returning set route class abbreviation
        Implementing logging for set route class abbreviation functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class abbreviation')
            self._ixconnect_page.set_route_class_abbreviation()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class abbreviation')
            return is_set

    def select_company_submenu(self):
        """
        Returning select company submenu
        Implementing logging for select company submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select company submenu')
            self._ixconnect_page.select_company_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select company submenu')
            return is_selected

    def set_company_name(self, company_prefix):
        """
        Returning set company name
        Implementing logging for set company name functionality
        :param company_prefix:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set company name')
            self._ixconnect_page.set_company_name(company_prefix)
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set company name')
            return status

    def get_company(self):
        """
        Returning get company
        Implementing logging for get company functionality
        :return: company
        """
        try:
            self.logger.info('Start: get company')
            return self._ixconnect_page.get_company()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get company')

    def click_company_save_button(self):
        """
        Returning click company save button
        Implementing logging for click company save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click company save button')
            self._ixconnect_page.click_company_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click company save button')
            return is_clicked

    def set_target_fulfillment_order(self):
        """
        Returning set target fulfillment order
        Implementing logging for set target fulfillment order functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set target fulfillment order')
            self._ixconnect_page.set_target_fulfillment_order()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target fulfillment order')
            return is_set

    def set_capacity_saturation_order(self):
        """
        Returning set capacity saturation order
        Implementing logging for set capacity saturation order functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set capacity saturation order')
            self._ixconnect_page.set_capacity_saturation_order()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set capacity saturation order')
            return is_set

    def click_route_class_save_button(self):
        """
        Returning click route class save button
        Implementing logging for click route class save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route class save button')
            self._ixconnect_page.click_route_class_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route class save button')
            return is_clicked

    def select_destination_submenu(self):
        """
        Returning select destination submenu
        Implementing logging for select destination submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select destination submenu')
            self._ixconnect_page.select_destination_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select destination submenu')
            return is_selected

    def click_destination_new_button(self):
        """
        Returning click destination new button
        Implementing logging for click destination new button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click destination new button')
            self._ixconnect_page.click_destination_new_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click destination new button')
            return is_clicked

    def set_destination(self, destination_prefix):
        """
        Returning set destination
        Implementing logging for set destination functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination')
            self._ixconnect_page.set_destination(destination_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination')
            return is_set

    def get_created_destination(self):
        """
        Returning get created destination
        Implementing logging for get created destination functionality
        :return: created destination
        """
        try:
            self.logger.info('Start: get created destination')
            return self._ixconnect_page.get_created_destination()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created destination')

    def set_destination_abbreviation(self):
        """
        Returning set destination abbreviation
        Implementing logging for set destination abbreviation functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination abbreviation')
            self._ixconnect_page.set_destination_abbreviation()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination abbreviation')
            return is_set

    def select_service_level_submenu(self):
        """
        Returning select service level submenu
        Implementing logging for select service level submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select service level submenu')
            self._ixconnect_page.select_service_level_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select service level submenu')
            return is_selected

    def click_service_level_new_button(self):
        """
        Returning click service level new button
        Implementing logging for click service level new button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click service level new button')
            self._ixconnect_page.click_service_level_new_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click service level new button')
            return is_clicked

    def set_service_level(self, service_level_prefix):
        """
        Returning set service level
        Implementing logging for set service level functionality
        :param service_level_prefix:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set service level')
            self._ixconnect_page.set_service_level(service_level_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set service level')
            return is_set

    def get_created_service_level(self):
        """
        Returning get created service level
        Implementing logging for get created service level functionality
        :return: created service level
        """
        try:
            self.logger.info('Start: get created service level')
            return self._ixconnect_page.get_created_service_level()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created service level')

    def set_service_level_abbreviation(self):
        """
        Returning set service level abbreviation
        Implementing logging for set service level abbreviation functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set service level abbreviation')
            self._ixconnect_page.set_service_level_abbreviation()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set service level abbreviation')
            return is_set

    def select_route_class_dropdown_item(self, route_class):
        """
        Returning select route class dropdown item
        Implementing logging for select route class dropdown item functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select route class dropdown item')
            self._ixconnect_page.select_route_class_dropdown_item(route_class)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select route class dropdown item')
            return is_selected

    def click_service_level_save_button(self):
        """
        Returning click service level save button
        Implementing logging for click service level save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click service level save button')
            self._ixconnect_page.click_service_level_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click service level save button')
            return is_clicked

    def set_destination_type(self, destination_type):
        """
        Returning set destination type
        Implementing logging for set destination type functionality
        :param destination_type:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set destination type')
            self._ixconnect_page.set_destination_type(destination_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination type')
            return is_set

    def set_call_char(self, call_char):
        """
        Returning set call char
        Implementing logging for set call char functionality
        :param call_char:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set call char')
            self._ixconnect_page.set_call_char(call_char)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set call char')
            return is_set

    def set_country(self, country):
        """
        Returning set country
        Implementing logging for set country functionality
        :param country:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set country')
            self._ixconnect_page.set_country(country)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country')
            return is_set

    def set_number_plan(self, number_plan):
        """
        Returning set number plan
        Implementing logging for set number plan functionality
        :param number_plan:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan')
            self._ixconnect_page.set_number_plan(number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan')
            return is_set

    def set_destination_begin_date(self, future_date=False):
        """
        Returning set destination begin date
        Implementing logging for set destination begin date functionality
        :param future_date:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set destination begin date')
            self._ixconnect_page.set_destination_begin_date(future_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination begin date')
            return is_set

    def set_destination_end_date(self):
        """
        Returning set destination end date
        Implementing logging for set destination end date functionality
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set destination end date')
            self._ixconnect_page.set_destination_end_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination end date')
            return is_set

    def click_destination_save_button(self):
        """
        Returning click destination save button
        Implementing logging for click destination save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click destination save button')
            self._ixconnect_page.click_destination_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click destination save button')
            return is_clicked

    def get_rating_method(self):
        """
        Returning get rating method
        Implementing logging for get rating method functionality
        :return: company
        """
        try:
            self.logger.info('Start: get rating method')
            return self._ixconnect_page.get_rating_method()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rating method')

    def click_selected_for_routing_check_box(self):
        """
        Returning click selected for routing check box
        Implementing logging for click selected for routing check box functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click selected for routing check box')
            self._ixconnect_page.click_selected_for_routing_check_box()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click selected for routing check box')
            return is_clicked

    def click_route_class_initialize_button(self):
        """
        Returning click route class initialize button
        Implementing logging for click route class initialize button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route class initialize button')
            self._ixconnect_page.click_route_class_initialize_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route class initialize button')
            return is_clicked

    def select_product_submenu(self):
        """
        Returning select product submenu
        Implementing logging for select product submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select product submenu')
            self._ixconnect_page.select_product_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select product submenu')
            return is_selected

    def expand_routing_structure(self):
        """
        Returning expand routing structure
        Implementing logging for expand routing structure functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand routing structure')
            self._ixconnect_page.expand_routing_structure()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand routing structure')
            return is_expanded

    def select_routing(self):
        """
        Returning select routing
        Implementing logging for select routing functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select routing')
            self._ixconnect_page.select_routing()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select routing')
            return is_selected

    def click_add_new_product_link(self):
        """
        Returning click add new product link
        Implementing logging for click add new product link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new product link')
            self._ixconnect_page.click_add_new_product_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new product link')
            return is_clicked

    def set_product_name(self, product_prefix):
        """
        Returning set product name
        Implementing logging for set product name functionality
        :param product_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set product name')
            self._ixconnect_page.set_product_name(product_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set product name')
            return is_set

    def set_product_abbreviation(self):
        """
        Returning set product abbreviation
        Implementing logging for set product abbreviation functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set product abbreviation')
            self._ixconnect_page.set_product_abbreviation()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set product abbreviation')
            return is_set

    def set_routing_destination(self):
        """
        Returning set routing destination
        Implementing logging for set routing destination functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set routing destination')
            self._ixconnect_page.set_routing_destination()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set routing destination')
            return is_set

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
            self._ixconnect_page.set_first_letter(first_letter)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set routing destination')
            return is_set

    def set_company_code(self):
        """
        Returning set company code
        Implementing logging for set company code functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set company code')
            self._ixconnect_page.set_company_code()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set company code')
            return is_set

    def click_maintain_routing_products_button(self):
        """
        Returning click maintain routing products button
        Implementing logging for click maintain routing products button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click maintain routing products button')
            self._ixconnect_page.click_maintain_routing_products_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click maintain routing products button')
            return is_clicked

    def click_new_destination_button(self):
        """
        Returning click new destination button
        Implementing logging for click new destination button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new destination button')
            self._ixconnect_page.click_new_destination_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new destination button')
            return is_clicked

    def set_dialed_digits(self):
        """
        Returning set dialed digits
        Implementing logging for set dialed digits functionality
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set dialed digits')
            self._ixconnect_page.set_dialed_digits()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dialed digits')
            return is_set

    def set_dialed_digits_begin_date(self):
        """
        Returning set dialed digits begin date
        Implementing logging for set dialed digits begin date functionality
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set dialed digits begin date')
            self._ixconnect_page.set_dialed_digits_begin_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dialed digits begin date')
            return is_set

    def click_dialed_digits_save_button(self):
        """
        Returning click dialed digits save button
        Implementing logging for click dialed digits save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click dialed digits save button')
            self._ixconnect_page.click_dialed_digits_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click dialed digits save button')
            return is_clicked

    def set_dialed_digits_end_date(self):
        """
        Returning set dialed digits end date
        Implementing logging for set dialed digits end date functionality
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set dialed digits end date')
            self._ixconnect_page.set_dialed_digits_end_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dialed digits end date')
            return is_set

    def select_origin_set_subtab(self):
        """
        Returning select origin set subtab
        Implementing logging for select origin set subtab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select origin set subtab')
            self._ixconnect_page.select_origin_set_subtab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select origin set subtab')
            return is_selected

    def click_origin_set_value_button(self):
        """
        Returning click origin set value button
        Implementing logging for click origin set value button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin set value button')
            self._ixconnect_page.click_origin_set_value_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin set value button')
            return is_clicked

    def set_origin_set_letters(self, origin_set):
        """
        Returning set origin set letters
        Implementing logging for set origin set letters functionality
        :param origin_set:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set origin set letters')
            self._ixconnect_page.set_origin_set_letters(origin_set)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set origin set letters')
            return is_set

    def is_job_maintenance_link_present(self):
        """
        Returning is job maintenance link present
        Implementing logging for is job maintenance link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is job maintenance link present')
            return self._ixconnect_page.is_job_maintenance_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is job maintenance link present')

    def click_exit_header_link(self):
        """
        Returning click exit header link
        Implementing logging for click exit header link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exit header link')
            self._ixconnect_page.click_exit_header_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exit header link')
            return is_clicked

    def click_create_new_complex_contract_button(self):
        """
        Returning click create new complex contract button
        Implementing logging for click create new complex contract button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new complex contract button')
            self._ixconnect_page.click_create_new_complex_contract_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new complex contract button')
            return is_clicked

    def set_contract_account(self, account_name):
        """
        Returning set contract account
        Implementing logging for set contract account functionality
        :param account_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract account')
            self._ixconnect_page.set_contract_account(account_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract account')
            return is_set

    def set_contract_direction(self, direction):
        """
        Returning set contract direction
        Implementing logging for set contract direction functionality
        :param direction:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract direction')
            self._ixconnect_page.set_contract_direction(direction)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract direction')
            return is_set

    def set_contract_name(self, contract_name_prefix):
        """
        Returning set contract name
        Implementing logging for set contract name functionality
        :param contract_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract name')
            self._ixconnect_page.set_contract_name(contract_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract name')
            return is_set

    def set_contract_begin_date(self, begin_date):
        """
        Returning set contract begin date
        Implementing logging for set contract begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract begin date')
            self._ixconnect_page.set_contract_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract begin date')
            return is_set

    def set_contract_end_date(self, end_date):
        """
        Returning set contract end date
        Implementing logging for set contract end date functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract end date')
            self._ixconnect_page.set_contract_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract end date')
            return is_set

    def click_contract_details_save_button(self):
        """
        Returning click contract details save button
        Implementing logging for click contract details save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract details save button')
            self._ixconnect_page.click_contract_details_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract details save button')
            return is_clicked

    def select_configure_number_plan_tab(self):
        """
        Returning select configure number plan tab
        Implementing logging for select configure number plan tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select configure number plan tab')
            self._ixconnect_page.select_configure_number_plan_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select configure number plan tab')
            return is_selected

    def set_configure_number_plan_commercial_trunk(self, commercial_trunk):
        """
        Returning set configure number plan commercial trunk
        Implementing logging for set configure number plan commercial trunk functionality
        :param commercial_trunk:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set configure number plan commercial trunk')
            self._ixconnect_page.set_configure_number_plan_commercial_trunk(commercial_trunk)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set configure number plan commercial trunk')
            return is_set

    def set_configure_number_plan_call_type(self, call_type):
        """
        Returning set configure number plan call type
        Implementing logging for set configure number plan call type functionality
        :param call_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set configure number plan call type')
            self._ixconnect_page.set_configure_number_plan_call_type(call_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set configure number plan call type')
            return is_set

    def click_configure_number_plan_create_plus_button(self):
        """
        Returning click configure number plan create plus button
        Implementing logging for click configure number plan create plus button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click configure number plan create plus button')
            self._ixconnect_page.click_configure_number_plan_create_plus_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click configure number plan create plus button')
            return is_clicked

    def set_create_a_new_number_plan(self, new_number_plan):
        """
        Returning set create a new number plan
        Implementing logging for set create a new number plan functionality
        :param new_number_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set create a new number plan')
            self._ixconnect_page.set_create_a_new_number_plan(new_number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set create a new number plan')
            return is_set

    def set_number_plan_to_copy_from(self, number_plan_to_copy_from):
        """
        Returning set number plan to copy from
        Implementing logging for set number plan to copy from functionality
        :param number_plan_to_copy_from:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan to copy from')
            self._ixconnect_page.set_number_plan_to_copy_from(number_plan_to_copy_from)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan to copy from')
            return is_set

    def move_available_countries_to_destination(self, country_name, deselect_first_option=False, iframe=False):
        """
        Returning move available countries to destination
        Implementing logging for move available countries to destination functionality
        :param country_name:
        :param deselect_first_option:
        :param iframe:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available countries to destination')
            self._ixconnect_page.move_available_countries_to_destination(country_name, deselect_first_option, iframe)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available countries to destination')
            return is_moved

    def click_configure_number_plan_go_button(self):
        """
        Returning click configure number plan go button
        Implementing logging for click configure number plan go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click configure number go button')
            self._ixconnect_page.click_configure_number_plan_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click configure number plan go button')
            return is_clicked

    def click_configure_number_plan_save_button(self):
        """
        Returning click configure number plan save button
        Implementing logging for click configure number plan save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click configure number save button')
            self._ixconnect_page.click_configure_number_plan_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click configure number plan save button')
            return is_clicked

    def select_rating_and_tariff_details_tab(self):
        """
        Returning select rating and tariff details tab
        Implementing logging for select rating and tariff details tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select rating and tariff details tab')
            self._ixconnect_page.select_rating_and_tariff_details_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select rating and tariff details tab')
            return is_selected

    def set_rating_and_tariff_details_rating_method(self, rating_method):
        """
        Returning set rating and tariff details rating method
        Implementing logging for set rating and tariff details rating method functionality
        :param rating_method:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rating and tariff details rating method')
            self._ixconnect_page.set_rating_and_tariff_details_rating_method(rating_method)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rating and tariff details rating method')
            return is_set

    def set_rating_and_tariff_details_outbound_rate_plan(self, outbound_rate_plan):
        """
        Returning set rating and tariff details outbound rate plan
        Implementing logging for set rating and tariff details outbound rate plan functionality
        :param outbound_rate_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rating and tariff details outbound rate plan')
            self._ixconnect_page.set_rating_and_tariff_details_outbound_rate_plan(outbound_rate_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rating and tariff details outbound rate plan')
            return is_set

    def click_rating_and_tariff_details_save_button(self):
        """
        Returning click rating and tariff details save button
        Implementing logging for click rating and tariff details save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rating and tariff details save button')
            self._ixconnect_page.click_rating_and_tariff_details_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rating and tariff details save button')
            return is_clicked

    def click_complex_contract_wizard_next_button(self, iframe=False):
        """
        Returning click complex contract wizard next button
        Implementing logging for click complex contract wizard next button functionality
        :param iframe:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click complex contract wizard next button')
            self._ixconnect_page.click_complex_contract_wizard_next_button(iframe)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click complex contract wizard next button')
            return is_clicked

    def set_aggregation_group_name(self, aggregation_group_prefix):
        """
        Returning set aggregation group name
        Implementing logging for set aggregation group name functionality
        :param aggregation_group_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set aggregation group name')
            self._ixconnect_page.set_aggregation_group_name(aggregation_group_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set aggregation group name')
            return is_set

    def set_aggregation_group_abbreviation(self, aggregation_group_prefix):
        """
        Returning set aggregation group abbreviation
        Implementing logging for set aggregation group abbreviation functionality
        :param aggregation_group_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set aggregation group abbreviation')
            self._ixconnect_page.set_aggregation_group_abbreviation(aggregation_group_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set aggregation group abbreviation')
            return is_set

    def set_aggregation_template(self, aggregation_template):
        """
        Returning set aggregation template
        Implementing logging for set aggregation template functionality
        :param aggregation_template:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set aggregation template')
            self._ixconnect_page.set_aggregation_template(aggregation_template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set aggregation template')
            return is_set

    def click_create_aggregation_group_save_button(self, iframe=False):
        """
        Returning click create aggregation group save button
        Implementing logging for click create aggregation group save button functionality
        :param iframe:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create aggregation group save button')
            self._ixconnect_page.click_create_aggregation_group_save_button(iframe)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create aggregation group save button')
            return is_clicked

    def set_aggregate_product_name(self, aggregate_product_prefix, iframe=False):
        """
        Returning set aggregate product name
        Implementing logging for set aggregate product name functionality
        :param aggregate_product_prefix:
        :param iframe:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set aggregate product name')
            self._ixconnect_page.set_aggregate_product_name(aggregate_product_prefix, iframe)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set aggregate product name')
            return is_set

    def set_aggregate_product_abbreviation(self, aggregate_product_prefix, iframe=False):
        """
        Returning set aggregate product abbreviation
        Implementing logging for set aggregate product abbreviation functionality
        :param aggregate_product_prefix:
        :param iframe:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set aggregate product abbreviation')
            self._ixconnect_page.set_aggregate_product_abbreviation(aggregate_product_prefix, iframe)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set aggregate product abbreviation')
            return is_set

    def set_traffic_direction(self, traffic_direction, iframe=False):
        """
        Returning set traffic direction
        Implementing logging for set traffic direction functionality
        :param traffic_direction:
        :param iframe:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set traffic direction')
            self._ixconnect_page.set_traffic_direction(traffic_direction, iframe)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set traffic direction')
            return is_set

    def check_traffic_type(self, iframe=False, *traffic_type_list):
        """
        Returning check traffic type
        Implementing logging for check traffic type functionality
        :param traffic_type_list:
        :param iframe:
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check traffic type')
            self._ixconnect_page.check_traffic_type(traffic_type_list, iframe)
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check traffic type')
            return is_checked

    def check_rate_type(self, iframe=False, *rate_type_list):
        """
        Returning check rate type
        Implementing logging for check rate type functionality
        :param rate_type_list:
        :param iframe:
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check rate type')
            self._ixconnect_page.check_rate_type(rate_type_list, iframe)
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check rate type')
            return is_checked

    def select_aggregation_rules_tab(self, tab_name, iframe=False):
        """
        Returning select aggregation rules tab
        Implementing logging for select aggregation rules tab functionality
        :param tab_name:
        :param iframe:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select aggregation rules tab')
            self._ixconnect_page.select_aggregation_rules_tab(tab_name, iframe)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select aggregation rules tab')
            return is_selected

    def move_available_service_to_destination(self, iframe=False):
        """
        Returning move available service to destination
        Implementing logging for move available service to destination functionality
        :param iframe:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available service to destination')
            self._ixconnect_page.move_available_service_to_destination(iframe)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available service to destination')
            return is_moved

    def move_available_commercial_trunk_to_destination(self, iframe=False):
        """
        Returning move available commercial trunk to destination
        Implementing logging for move available commercial trunk to destination functionality
        :param iframe:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available commercial trunk to destination')
            self._ixconnect_page.move_available_commercial_trunk_to_destination(iframe)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available commercial trunk to destination')
            return is_moved

    def select_aggregation_rules_grid_first_row_checkbox(self, iframe=False):
        """
        Returning select aggregation rules grid first row checkbox
        Implementing logging for select aggregation rules grid first row checkbox functionality
        :param iframe:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select aggregation rules grid first row checkbox')
            self._ixconnect_page.select_aggregation_rules_grid_first_row_checkbox(iframe)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select aggregation rules grid first row checkbox')
            return is_selected

    def set_aggregate_rate_plan_name(self, aggregate_rate_plan_prefix):
        """
        Returning set aggregate rate plan name
        Implementing logging for set aggregate rate plan name functionality
        :param aggregate_rate_plan_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set aggregate rate plan name')
            self._ixconnect_page.set_aggregate_rate_plan_name(aggregate_rate_plan_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set aggregate rate plan name')
            return is_set

    def set_aggregate_rate_plan_abbreviation(self, aggregate_rate_plan_prefix):
        """
        Returning set aggregate rate plan abbreviation
        Implementing logging for set aggregate rate plan abbreviation functionality
        :param aggregate_rate_plan_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set aggregate rate plan abbreviation')
            self._ixconnect_page.set_aggregate_rate_plan_abbreviation(aggregate_rate_plan_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set aggregate rate plan abbreviation')
            return is_set

    def set_rate_plan_type(self, rate_plan_type):
        """
        Returning set rate plan type
        Implementing logging for set rate plan type functionality
        :param rate_plan_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan type')
            self._ixconnect_page.set_rate_plan_type(rate_plan_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate plan type')
            return is_set

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
            self._ixconnect_page.set_tariff_type(tariff_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tariff type')
            return is_set

    def set_currency(self, currency):
        """
        Returning set currency
        Implementing logging for set currency functionality
        :param currency:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set currency')
            self._ixconnect_page.set_currency(currency)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency')
            return is_set

    def click_aggregate_rate_plan_save_button(self):
        """
        Returning click aggregate rate plan save button
        Implementing logging for click aggregate rate plan save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click aggregate rate plan save button')
            self._ixconnect_page.click_aggregate_rate_plan_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click aggregate rate plan save button')
            return is_clicked

    def click_aggregate_scenario_save_button(self):
        """
        Returning click aggregate scenario save button
        Implementing logging for click aggregate scenario save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click aggregate scenario save button')
            self._ixconnect_page.click_aggregate_scenario_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click aggregate scenario save button')
            return is_clicked

    def click_rating_structure_3_arrow(self):
        """
        Returning click rating structure 3 arrow
        Implementing logging for click rating structure 3 arrow functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rating structure 3 arrow')
            self._ixconnect_page.click_rating_structure_3_arrow()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rating structure 3 arrow')
            return is_clicked

    def click_add_new_tier_button(self):
        """
        Returning click add new tier button
        Implementing logging for click add new tier button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new tier button')
            self._ixconnect_page.click_add_new_tier_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new tier button')
            return is_clicked

    def click_submit_button(self):
        """
        Returning click submit button
        Implementing logging for click submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submit button')
            self._ixconnect_page.click_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submit button')
            return is_clicked

    def set_value_in_tier_grid_column(self, column_name, column_value):
        """
        Returning set value in tier grid column
        Implementing logging for set value in tier grid column functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in tier grid column')
            self._ixconnect_page.set_value_in_tier_grid_column(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in tier grid column')
            return is_set

    def set_value_in_rate_grid_column(self, column_name):
        """
        Returning set value in rate grid column
        Implementing logging for set value in rate grid column functionality
        :param column_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in rate grid column')
            self._ixconnect_page.set_value_in_rate_grid_column(column_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in rate grid column')
            return is_set

    def click_rate_grid_save_button(self):
        """
        Returning click rate grid save button
        Implementing logging for click rate grid save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rate grid save button')
            self._ixconnect_page.click_rate_grid_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rate grid save button')
            return is_clicked

    def click_contract_complete_button(self):
        """
        Returning click contract complete button
        Implementing logging for click contract complete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract complete button')
            self._ixconnect_page.click_contract_complete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract complete button')
            return is_clicked

    def click_auto_extend_operational_and_accounting_radio_button(self):
        """
        Returning click auto extend operational and accounting radio button
        Implementing logging for click auto extend operational and accounting radio button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click auto extend operational and accounting radio button')
            self._ixconnect_page.click_auto_extend_operational_and_accounting_radio_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click auto extend operational and accounting radio button')
            return is_clicked

    def click_auto_extend_operational_only_radio_button(self):
        """
        Returning click auto extend operational only radio button
        Implementing logging for click auto extend operational only radio button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click auto extend operational only radio button')
            self._ixconnect_page.click_auto_extend_operational_only_radio_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click auto extend operational only radio button')
            return is_clicked

    def click_rating_structure_22_arrow(self):
        """
        Returning click rating structure 22 arrow
        Implementing logging for click rating structure 22 arrow functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rating structure 22 arrow')
            self._ixconnect_page.click_rating_structure_22_arrow()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rating structure 22 arrow')
            return is_clicked

    def set_rate_structure(self, rate_structure):
        """
        Returning set rate structure
        Implementing logging for set rate structure functionality
        :param rate_structure:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate structure')
            self._ixconnect_page.set_rate_structure(rate_structure)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate structure')
            return is_set

    def set_splitting_type(self, splitting_type):
        """
        Returning set splitting type
        Implementing logging for set splitting type functionality
        :param splitting_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set splitting type')
            self._ixconnect_page.set_splitting_type(splitting_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set splitting type')
            return is_set

    def set_threshold(self):
        """
        Returning set threshold
        Implementing logging for set threshold functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set threshold')
            self._ixconnect_page.set_threshold()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set threshold')
            return is_set

    def set_penalty_rate(self):
        """
        Returning set penalty rate
        Implementing logging for set penalty rate functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set penalty rate')
            self._ixconnect_page.set_penalty_rate()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set penalty rate')
            return is_set

    def click_rating_structure_save_button(self):
        """
        Returning click rating structure save button
        Implementing logging for click rating structure save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rating structure save button')
            self._ixconnect_page.click_rating_structure_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rating structure save button')
            return is_clicked

    def click_manage_complex_contracts_button(self):
        """
        Returning click manage complex contracts button
        Implementing logging for click manage complex contracts button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click manage complex contracts button')
            self._ixconnect_page.click_manage_complex_contracts_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click manage complex contracts button')
            return is_clicked

    def click_manage_complex_contracts_go_button(self):
        """
        Returning click manage complex contracts go button
        Implementing logging for click manage complex contracts go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click manage complex contracts go button')
            self._ixconnect_page.click_manage_complex_contracts_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click manage complex contracts go button')
            return is_clicked

    def set_signature_date(self):
        """
        Returning set signature date
        Implementing logging for set signature date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set signature date')
            self._ixconnect_page.set_signature_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set signature date')
            return is_set

    def click_manage_complex_contracts_save_button(self):
        """
        Returning click manage complex contracts save button
        Implementing logging for click manage complex contracts save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click manage complex contracts save button')
            self._ixconnect_page.click_manage_complex_contracts_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click manage complex contracts save button')
            return is_clicked

    def click_manage_complex_contracts_delete_button(self):
        """
        Returning click manage complex contracts delete button
        Implementing logging for click manage complex contracts delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click manage complex contracts delete button')
            self._ixconnect_page.click_manage_complex_contracts_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click manage complex contracts delete button')
            return is_clicked

    def click_manage_complex_contracts_unlocked_button(self):
        """
        Returning click manage complex contracts unlocked button
        Implementing logging for click manage complex contracts unlocked button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click manage complex contracts unlocked button')
            self._ixconnect_page.click_manage_complex_contracts_unlocked_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click manage complex contracts unlocked button')
            return is_clicked

    def is_lock_unlock_popup_present(self):
        """
        Returning is lock unlock popup present
        Implementing logging for is lock unlock popup present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is lock unlock popup present')
            return self._ixconnect_page.is_lock_unlock_popup_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is lock unlock popup present')

    def set_contract_status(self, contract_status):
        """
        Returning set contract status
        Implementing logging for set contract status functionality
        :param contract_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract account')
            self._ixconnect_page.set_contract_status(contract_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract account')
            return is_set

    def click_manage_complex_contract_button(self):
        """
        Returning click manage complex contract button
        Implementing logging for click manage complex contract button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click manage complex contract button')
            self._ixconnect_page.click_manage_complex_contract_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click manage complex contract button')
            return is_clicked

    def set_complex_contract_account(self, account):
        """
        Returning set complex contract account
        Implementing logging for set complex contract account functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set complex contract account')
            self._ixconnect_page.set_complex_contract_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set complex contract account')
            return is_set

    def set_complex_contract_status(self, status):
        """
        Returning set complex contract status
        Implementing logging for set complex contract status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set complex contract status')
            self._ixconnect_page.set_complex_contract_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set complex contract status')
            return is_set

    def set_complex_contract_locked_status(self, status):
        """
        Returning set complex contract locked status
        Implementing logging for set complex contract locked status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set complex contract locked status')
            self._ixconnect_page.set_complex_contract_locked_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set complex contract locked status')
            return is_set

    def click_contracts_grid_first_row_contract_status_change_button(self):
        """
        Returning click contracts grid first row contract status change button
        Implementing logging for click contracts grid first row contract status change button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contracts grid first row contract status change button')
            self._ixconnect_page.click_contracts_grid_first_row_contract_status_change_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contracts grid first row contract status change button')
            return is_clicked

    def click_change_contract_status_radio_button(self, radio_button_label):
        """
        Returning click change contract status radio button
        Implementing logging for click change contract status radio button functionality
        :param radio_button_label:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click change contract status radio button')
            self._ixconnect_page.click_change_contract_status_radio_button(radio_button_label)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click change contract status radio button')
            return is_clicked

    def click_change_contract_status_save_button(self):
        """
        Returning click change contract status save button
        Implementing logging for click change contract status save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click change contract status save button')
            self._ixconnect_page.click_change_contract_status_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click change contract status save button')
            return is_clicked

    def set_contracts_grid_signature_date(self):
        """
        Returning set contracts grid signature date
        Implementing logging for set contracts grid signature date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contracts grid signature date')
            self._ixconnect_page.set_contracts_grid_signature_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contracts grid signature date')
            return is_set

    def unlock_contracts_grid_first_row(self):
        """
        Returning unlock contracts grid first row
        Implementing logging for unlock contracts grid first row functionality
        :return: True/False
        """
        is_locked = None
        try:
            self.logger.info('Start: unlock contracts grid first row')
            self._ixconnect_page.unlock_contracts_grid_first_row()
            is_locked = True
        except WebDriverException as exp:
            is_locked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: unlock contracts grid first row')
            return is_locked

    def click_contracts_grid_first_row_contract_name(self):
        """
        Returning click contracts grid first row contract name
        Implementing logging for click contracts grid first row contract name functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contracts grid first row contract name')
            self._ixconnect_page.click_contracts_grid_first_row_contract_name()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contracts grid first row contract name')
            return is_clicked

    def is_edit_contract_name_disabled(self):
        """
        Returning is edit contract name disabled
        Implementing logging for is edit contract name disabled functionality
        :return: True/False
        """
        is_disabled = None
        try:
            self.logger.info('Start: is edit contract name disabled')
            is_disabled = self._ixconnect_page.is_edit_contract_name_disabled()
        except WebDriverException as exp:
            is_disabled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is edit contract name disabled')
            return is_disabled

    def click_contract_workflow_link(self):
        """
        Returning click contract workflow link
        Implementing logging for click contract workflow link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract workflow link')
            self._ixconnect_page.click_contract_workflow_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract workflow link')
            return is_clicked

    def click_change_contract_locked_status_radio_button(self, radio_button_label):
        """
        Returning click change contract locked status radio button
        Implementing logging for click change contract locked status radio button functionality
        :param radio_button_label:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click change contract locked status radio button')
            self._ixconnect_page.click_change_contract_locked_status_radio_button(radio_button_label)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click change contract locked status radio button')
            return is_clicked

    def set_group_commitment(self):
        """
        Returning set group commitment
        Implementing logging for set group commitment functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set group commitment')
            self._ixconnect_page.set_group_commitment()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set group commitment')
            return is_set

    def set_subgroup_commitment(self):
        """
        Returning set subgroup commitment
        Implementing logging for set subgroup commitment functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set subgroup commitment')
            self._ixconnect_page.set_subgroup_commitment()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set subgroup commitment')
            return is_set

    def set_value_in_shortfall_rates_grid_column(self, column_name):
        """
        Returning set value in shortfall rates grid column
        Implementing logging for set value in shortfall rates grid column functionality
        :param column_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in shortfall rates grid column')
            self._ixconnect_page.set_value_in_shortfall_rates_grid_column(column_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in shortfall rates grid column')
            return is_set

    def move_available_virtual_countries_to_destination(self, country_name, deselect_first_option=False):
        """
        Returning move available virtual countries to destination
        Implementing logging for move available virtual countries to destination functionality
        :param country_name:
        :param deselect_first_option:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available virtual countries to destination')
            self._ixconnect_page.move_available_virtual_countries_to_destination(country_name, deselect_first_option)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available virtual countries to destination')
            return is_moved

    def get_created_contract_name(self):
        """
        Returning get created contract name
        Implementing logging for get created contract name functionality
        :return: created_carrier_name
        """
        try:
            self.logger.info('Start: get created contract name')
            return self._ixconnect_page.get_created_contract_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created contract name')

    def click_complex_contract_dashboard_link(self):
        """
        Returning click complex contract dashboard link
        Implementing logging for click complex contract dashboard link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click complex contract dashboard link')
            self._ixconnect_page.click_complex_contract_dashboard_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click complex contract dashboard link')
            return is_clicked

    def set_contract_name_for_search(self, contract_name):
        """
        Returning set contract name for search
        Implementing logging for set contract name for search functionality
        :param contract_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract name for search')
            self._ixconnect_page.set_contract_name_for_search(contract_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract name for search')
            return is_set

    def click_detail_tab(self):
        """
        Returning click detail tab
        Implementing logging for click detail tab functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click detail tab')
            self._ixconnect_page.click_detail_tab()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click detail tab')
            return is_clicked

    def click_first_row_add_product_button(self):
        """
        Returning click first row add product button
        Implementing logging for click first row add product button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row add product button')
            self._ixconnect_page.click_first_row_add_product_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row add product button')
            return is_clicked

    def are_rate_type_checkboxes_disabled(self, iframe=False):
        """
        Returning are rate type checkboxes disabled
        Implementing logging for are rate type checkboxes disabled functionality
        :param iframe:
        :return: True/False
        """
        is_disabled = None
        try:
            self.logger.info('Start: are rate type checkboxes disabled')
            is_disabled = self._ixconnect_page.are_rate_type_checkboxes_disabled(iframe)
        except WebDriverException as exp:
            is_disabled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: are rate type checkboxes disabled')
            return is_disabled

    def set_origin_set(self, origin_set, iframe=False):
        """
        Returning set origin set
        Implementing logging for set origin set functionality
        :param origin_set:
        :param iframe:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set origin set')
            self._ixconnect_page.set_origin_set(origin_set, iframe)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set origin set')
            return is_set

    def move_available_settlement_origin_to_destination(self, iframe=False):
        """
        Returning move available settlement origin to destination
        Implementing logging for move available settlement origin to destination functionality
        :param iframe:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available settlement origin to destination')
            self._ixconnect_page.move_available_settlement_origin_to_destination(iframe)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available settlement origin to destination')
            return is_moved

    def click_aggregate_rules_exit_button(self):
        """
        Returning click aggregate rules exit button
        Implementing logging for click aggregate rules exit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click aggregate rules exit button')
            self._ixconnect_page.click_aggregate_rules_exit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click aggregate rules exit button')
            return is_clicked

    def click_complex_contract_worklist_button(self):
        """
        Returning click complex contract worklist button
        Implementing logging for click complex contract worklist button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click complex contract worklist button')
            self._ixconnect_page.click_complex_contract_worklist_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click complex contract worklist button')
            return is_clicked

    def click_filters_collapsible_arrow_button(self):
        """
        Returning click filters collapsible arrow button
        Implementing logging for click filters collapsible arrow button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click filters collapsible arrow button')
            self._ixconnect_page.click_filters_collapsible_arrow_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click filters collapsible arrow button')
            return is_clicked

    def is_specific_field_on_complex_contract_worklist_present(self, field_name):
        """
        Returning is specific field on complex contract worklist present
        Implementing logging for is specific field on complex contract worklist present functionality
        :param field_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific field on complex contract worklist present')
            return self._ixconnect_page.is_specific_field_on_complex_contract_worklist_present(field_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific field on complex contract worklist present')

    def set_complex_contract_worklist_contract_status(self, contract_status):
        """
        Returning set complex contract worklist contract status
        Implementing logging for set complex contract worklist contract status functionality
        :param contract_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set complex contract worklist contract status')
            self._ixconnect_page.set_complex_contract_worklist_contract_status(contract_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set complex contract worklist contract status')
            return is_set

    def click_complex_contract_worklist_go_button(self):
        """
        Returning click complex contract workflow go button
        Implementing logging for click complex contract workflow go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click complex contract workflow go button')
            self._ixconnect_page.click_complex_contract_worklist_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click complex contract workflow go button')
            return is_clicked

    def click_complex_contract_worklist_grid_first_row_contract(self):
        """
        Returning click complex contract workflow first row contract
        Implementing logging for click complex contract workflow first row contract functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click complex contract workflow first row contract')
            self._ixconnect_page.click_complex_contract_worklist_grid_first_row_contract()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click complex contract workflow first row contract')
            return is_clicked

    def click_complex_contract_management_first_row_workflow_button(self):
        """
        Returning click complex contract management first row workflow button
        Implementing logging for click complex contract management first row workflow button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click complex contract management first row workflow button')
            self._ixconnect_page.click_complex_contract_management_first_row_workflow_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click complex contract management first row workflow button')
            return is_clicked

    def is_specific_column_on_complex_contract_management_grid_present(self, column_name):
        """
        Returning is specific column on complex contract management grid present
        Implementing logging for is specific column on complex contract management grid present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column on complex contract management grid present')
            return self._ixconnect_page.is_specific_column_on_complex_contract_management_grid_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column on complex contract management grid present')

    def set_complex_contract_management_grid_signature_date(self):
        """
        Returning set complex contract management grid signature date
        Implementing logging for set complex contract management grid signature date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set complex contract management grid signature date')
            self._ixconnect_page.set_complex_contract_management_grid_signature_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set complex contract management grid signature date')
            return is_set

    def click_complex_contract_management_save_button(self):
        """
        Returning click complex contract management save button
        Implementing logging for click complex contract management save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click complex contract management save button')
            self._ixconnect_page.click_complex_contract_management_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click complex contract management save button')
            return is_clicked

    def click_complex_contract_worklist_clear_sections_button(self):
        """
        Returning click complex contract worklist clear sections button
        Implementing logging for click complex contract worklist clear sections button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click complex contract worklist clear sections button')
            self._ixconnect_page.click_complex_contract_worklist_clear_sections_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click complex contract worklist clear sections button')
            return is_clicked

    def is_specific_column_on_complex_contract_worklist_grid_present(self, column_name):
        """
        Returning is specific column on complex contract worklist grid present
        Implementing logging for is specific column on complex contract worklist grid present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column on complex contract worklist grid present')
            return self._ixconnect_page.is_specific_column_on_complex_contract_worklist_grid_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column on complex contract worklist grid present')

    def click_contract_report_button(self):
        """
        Returning click contract report button
        Implementing logging for click contract report button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract report button')
            self._ixconnect_page.click_contract_report_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract report button')
            return is_clicked

    def click_contract_version_submit_button(self):
        """
        Returning click contract version submit button
        Implementing logging for click contract version submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract version submit button')
            self._ixconnect_page.click_contract_version_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract version submit button')
            return is_clicked

    def click_preview_button(self):
        """
        Returning click preview button
        Implementing logging for click preview button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click preview button')
            self._ixconnect_page.click_preview_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click preview button')
            return is_clicked

    def click_export_to_excel_button(self):
        """
        Returning click export to excel button
        Implementing logging for click export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click export to excel button')
            self._ixconnect_page.click_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click export to excel button')
            return is_clicked

    def close_window_and_switch_to_previous_window(self):
        """
        Returning close window and switch to previous window
        Implementing logging for close window and switch to previous window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close window and switch to previous window')
            self._ixconnect_page.close_browser()
            self._ixconnect_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close window and switch to previous window')
            return is_closed

    def click_contract_simulator_button(self):
        """
        Returning click contract simulator button
        Implementing logging for click contract simulator button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract simulator button')
            self._ixconnect_page.click_contract_simulator_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract simulator button')
            return is_clicked

    def is_contract_simulator_specific_search_field_present(self, column_name):
        """
        Returning is contract simulator specific search field present
        Implementing logging for is contract simulator specific search field present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is contract simulator specific search field present')
            return self._ixconnect_page.is_contract_simulator_specific_search_field_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is contract simulator specific search field present')

    def set_contract_simulator_status_for_search(self, *status_list):
        """
        Returning set contract simulator status for search
        Implementing logging for set contract simulator status for search functionality
        :param status_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract simulator status for search')
            self._ixconnect_page.set_contract_simulator_status_for_search(status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract simulator status for search')
            return is_set

    def click_contract_simulator_search_button(self):
        """
        Returning click contract simulator search button
        Implementing logging for click contract simulator search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract simulator search button')
            self._ixconnect_page.click_contract_simulator_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract simulator search button')
            return is_clicked

    def click_contract_simulator_download_button(self):
        """
        Returning click contract simulator download button
        Implementing logging for click contract simulator download button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract simulator download button')
            self._ixconnect_page.click_contract_simulator_download_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract simulator download button')
            return is_clicked

    def is_specific_field_present_on_download_new_simulator_pop_up(self, column_name, label):
        """
        Returning is specific field present on download new simulator pop up
        Implementing logging for is specific field present on download new simulator pop up functionality
        :param column_name:
        :param label:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific field present on download new simulator pop up')
            return self._ixconnect_page.is_specific_field_present_on_download_new_simulator_pop_up(column_name, label)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific field present on download new simulator pop up')

    def click_contract_simulator_cancel_button(self):
        """
        Returning click contract simulator cancel button
        Implementing logging for click contract simulator cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click contract simulator cancel button')
            self._ixconnect_page.click_contract_simulator_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click contract simulator cancel button')
            return is_clicked

    def set_download_new_simulator_carrier(self, carrier_name):
        """
        Returning set download new simulator carrier
        Implementing logging for set download new simulator carrier functionality
        :param carrier_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set download new simulator carrier')
            self._ixconnect_page.set_download_new_simulator_carrier(carrier_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set download new simulator carrier')
            return is_set

    def set_download_new_simulator_revenue_country(self, *country_name_list):
        """
        Returning set download new simulator revenue country
        Implementing logging for set download new simulator revenue country functionality
        :param country_name_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set download new simulator revenue country')
            self._ixconnect_page.set_download_new_simulator_revenue_country(country_name_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set download new simulator revenue country')
            return is_set

    def click_download_new_simulator_download_button(self):
        """
        Returning click download new simulator download button
        Implementing logging for click download new simulator download button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click download new simulator download button')
            self._ixconnect_page.click_download_new_simulator_download_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click download new simulator download button')
            return is_clicked

    def set_grace_period_from_dropdown(self, grace_period, iframe=False):
        """
        Returning set grace period from dropdown
        Implementing logging for set grace period from dropdown functionality
        :param grace_period:
        :param iframe:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set grace period from dropdown')
            self._ixconnect_page.set_grace_period_from_dropdown(grace_period, iframe)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set grace period from dropdown')
            return is_set

    def set_aggregate_group_grace_period(self, grace_period_value):
        """
        Returning set aggregate group grace period
        Implementing logging for set aggregate group grace period functionality
        :param grace_period_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set aggregate group grace period')
            self._ixconnect_page.set_aggregate_group_grace_period(grace_period_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set aggregate group grace period')
            return is_set

    def switch_to_upperlist_frame(self):
        """
        Returning switch to upperlist frame
        Implementing logging for switch to upperlist frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to upperlist frame')
            self._ixconnect_page.switch_to_upperlist_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to upperlist frame')
            return is_switched

    def select_network_trunk_submenu(self):
        """
        Returning select network trunk submenu
        Implementing logging for select network trunk submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select network trunk submenu')
            self._ixconnect_page.select_network_trunk_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select network trunk submenu')
            return is_selected

    def set_trunk_letters(self, letters):
        """
        Returning set trunk letters
        Implementing logging for set trunk letters functionality
        :param letters:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set trunk letters')
            self._ixconnect_page.set_trunk_letters(letters)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set trunk letters')
            return is_set

    def click_expand_switch_button(self):
        """
        Returning click expand switch button
        Implementing logging for click expand switch button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click expand switch button')
            self._ixconnect_page.click_expand_switch_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click expand switch button')
            return is_clicked

    def click_trunk_name_for_details(self, trunk_name):
        """
        Returning click trunk name for details
        Implementing logging for click trunk name for details functionality
        :param trunk_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click trunk name for details')
            self._ixconnect_page.click_trunk_name_for_details(trunk_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click trunk name for details')
            return is_clicked

    def get_transmission_type(self):
        """
        Returning get transmission type
        Implementing logging for get transmission type functionality
        :return: transmission_type
        """
        transmission_type = None
        try:
            self.logger.info('Start: get transmission type')
            transmission_type = self._ixconnect_page.get_transmission_type()
        except WebDriverException as exp:
            transmission_type = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get transmission type')
            return transmission_type

    def set_contract_begin_date_for_search(self, begin_date):
        """
        Returning set contract begin date for search
        Implementing logging for set contract begin date for search functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract begin date for search')
            self._ixconnect_page.set_contract_begin_date_for_search(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract begin date for search')
            return is_set

    def set_contract_end_date_for_search(self, end_date):
        """
        Returning set contract end date for search
        Implementing logging for set contract end date for search functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set contract end date for search')
            self._ixconnect_page.set_contract_end_date_for_search(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set contract end date for search')
            return is_set

    def select_number_plan_tab(self):
        """
        Returning select number plan tab
        Implementing logging for select number plan tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select number plan tab')
            self._ixconnect_page.select_number_plan_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select number plan tab')
            return is_selected

    def click_add_number_plan_grid_first_row_export_button(self):
        """
        Returning click add number plan grid first row export button
        Implementing logging for click add number plan grid first row export button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add number plan grid first row export button')
            self._ixconnect_page.click_add_number_plan_grid_first_row_export_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add number plan grid first row export button')
            return is_clicked

    def click_copy_from_existing_complex_contract(self):
        """
        Returning click copy from existing complex contract
        Implementing logging for click copy from existing complex contract functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click copy from existing complex contract')
            self._ixconnect_page.click_copy_from_existing_complex_contract()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click copy from existing complex contract')
            return is_clicked

    def set_copy_complex_contract_source_account(self, account):
        """
        Returning set copy complex contract source account
        Implementing logging for set copy complex contract source account functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set copy complex contract source account')
            self._ixconnect_page.set_copy_complex_contract_source_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set copy complex contract source account')
            return is_set

    def set_copy_complex_contract_target_account(self, account):
        """
        Returning set copy complex contract target account
        Implementing logging for set copy complex contract target account functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set copy complex contract target account')
            self._ixconnect_page.set_copy_complex_contract_target_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set copy complex contract target account')
            return is_set

    def set_copy_complex_contract_source_contract(self, contract):
        """
        Returning set copy complex contract source contract
        Implementing logging for set copy complex contract source contract functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set copy complex contract source contract')
            self._ixconnect_page.set_copy_complex_contract_source_contract(contract)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set copy complex contract source contract')
            return is_set

    def click_copy_contract_save_button(self):
        """
        Returning click copy contract save button
        Implementing logging for click copy contract save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click copy contract save button')
            self._ixconnect_page.click_copy_contract_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click copy contract save button')
            return is_clicked

    def set_copy_contract_copy_direction(self, copy_direction):
        """
        Returning set copy contract copy direction
        Implementing logging for set copy contract copy direction functionality
        :param copy_direction:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set copy complex contract copy direction')
            self._ixconnect_page.set_copy_contract_copy_direction(copy_direction)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set copy complex contract copy direction')
            return is_set

    def select_aggregation_groups_mapping_tab(self):
        """
        Returning select aggregation groups mapping tab
        Implementing logging for select aggregation groups mapping tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select aggregation groups mapping tab')
            self._ixconnect_page.select_aggregation_groups_mapping_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select aggregation groups mapping tab')
            return is_selected

    def click_aggregation_groups_mapping_save_button(self):
        """
        Returning click aggregation groups mapping save button
        Implementing logging for click aggregation groups mapping save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click aggregation groups mapping save button')
            self._ixconnect_page.click_aggregation_groups_mapping_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click aggregation groups mapping save button')
            return is_clicked

    def select_commercial_trunk_mapping_tab(self):
        """
        Returning select commercial trunk mapping tab
        Implementing logging for select commercial trunk mapping tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select commercial trunk mapping tab')
            self._ixconnect_page.select_commercial_trunk_mapping_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select commercial trunk mapping tab')
            return is_selected

    def click_commercial_trunk_mapping_save_button(self):
        """
        Returning click commercial trunk mapping save button
        Implementing logging for click commercial trunk mapping save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click commercial trunk mapping save button')
            self._ixconnect_page.click_commercial_trunk_mapping_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click commercial trunk mapping save button')
            return is_clicked

    def select_number_plan_mapping_tab(self):
        """
        Returning select number plan mapping tab
        Implementing logging for select number plan mapping tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select number plan mapping tab')
            self._ixconnect_page.select_number_plan_mapping_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select number plan mapping tab')
            return is_selected

    def set_target_number_plan(self, number_plan_prefix):
        """
        Returning set target number plan
        Implementing logging for set target number plan functionality
        :param number_plan_prefix:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set target number plan')
            self._ixconnect_page.set_target_number_plan(number_plan_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target number plan')
            return is_set

    def click_number_plan_mapping_save_button(self):
        """
        Returning click number plan mapping save button
        Implementing logging for click number plan mapping save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan mapping save button')
            self._ixconnect_page.click_number_plan_mapping_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan mapping save button')
            return is_clicked

    def select_rate_plan_mapping_tab(self):
        """
        Returning select rate plan mapping tab
        Implementing logging for select rate plan mapping tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select rate plan mapping tab')
            self._ixconnect_page.select_rate_plan_mapping_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select rate plan mapping tab')
            return is_selected

    def click_rate_plan_mapping_save_button(self):
        """
        Returning click rate plan mapping save button
        Implementing logging for click rate plan mapping save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rate plan mapping save button')
            self._ixconnect_page.click_rate_plan_mapping_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rate plan mapping save button')
            return is_clicked

    def select_carrier_submenu(self):
        """
        Returning select carrier submenu
        Implementing logging for select carrier submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select carrier submenu')
            self._ixconnect_page.select_carrier_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select carrier submenu')
            return is_selected

    def click_carrier_account_first_plus_button(self):
        """
        Returning click carrier account first plus button
        Implementing logging for click carrier account first plus button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click carrier account first plus button')
            self._ixconnect_page.click_carrier_account_first_plus_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click carrier account first plus button')
            return is_clicked

    def click_other_rate_plan_first_plus_button(self):
        """
        Returning click other rate plan first plus button
        Implementing logging for click other rate plan first plus button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click other rate plan first plus button')
            self._ixconnect_page.click_other_rate_plan_first_plus_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click other rate plan first plus button')
            return is_clicked

    def click_other_rate_plan_first_book_icon_button(self):
        """
        Returning click other rate plan first book icon button
        Implementing logging for click other rate plan first book icon button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click other rate plan first book icon button')
            self._ixconnect_page.click_other_rate_plan_first_book_icon_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click other rate plan first book icon button')
            return is_clicked

    def select_product_mapping_submenu(self):
        """
        Returning select product mapping submenu
        Implementing logging for select product mapping submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select product mapping submenu')
            self._ixconnect_page.select_product_mapping_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select product mapping submenu')
            return is_selected

    def click_product_mapping_go_button(self):
        """
        Returning click product mapping go button
        Implementing logging for click product mapping go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click product mapping go button')
            self._ixconnect_page.click_product_mapping_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click product mapping go button')
            return is_clicked

    def get_product_mapping_grid_first_row_selling_product(self):
        """
        Returning get product mapping grid first row selling product
        Implementing logging for get product mapping grid first row selling product functionality
        :return: selling_product
        """
        selling_product = None
        try:
            self.logger.info('Start: get product mapping grid first row selling product')
            selling_product = self._ixconnect_page.get_product_mapping_grid_first_row_selling_product()
        except WebDriverException as exp:
            selling_product = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get product mapping grid first row selling product')
            return selling_product

    def click_selling_product_browse_button(self):
        """
        Returning click selling product browse button
        Implementing logging for click selling product browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click selling product browse button')
            self._ixconnect_page.click_selling_product_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click selling product browse button')
            return is_clicked

    def select_selling_product(self, selling_product):
        """
        Returning select selling product
        Implementing logging for select selling product functionality
        :param selling_product:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select selling product')
            self._ixconnect_page.select_selling_product(selling_product)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select selling product')
            return is_selected

    def make_routing_to_selling_percentage_to_100(self):
        """
        Returning make routing to selling percentage to 100
        Implementing logging for make routing to selling percentage to 100 functionality
        :return: True/False
        """
        is_made = None
        try:
            self.logger.info('Start: make routing to selling percentage to 100')
            self._ixconnect_page.make_routing_to_selling_percentage_to_100()
            is_made = True
        except WebDriverException as exp:
            is_made = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: make routing to selling percentage to 100')
            return is_made

    def click_first_account_name(self):
        """
        Returning click first account name
        Implementing logging for click first account name functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first account name')
            self._ixconnect_page.click_first_account_name()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first account name')
            return is_clicked

    def click_buyer_browse_button(self):
        """
        Returning click buyer browse button
        Implementing logging for click buyer browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buyer browse button')
            self._ixconnect_page.click_buyer_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buyer browse button')
            return is_clicked

    def click_seller_browse_button(self):
        """
        Returning click seller browse button
        Implementing logging for click seller browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click seller browse button')
            self._ixconnect_page.click_seller_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click seller browse button')
            return is_clicked

    def click_account_save_button(self):
        """
        Returning click account save button
        Implementing logging for click account save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click account save button')
            self._ixconnect_page.click_account_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click account save button')
            return is_clicked

    def select_buyer_tab(self):
        """
        Returning select buyer tab
        Implementing logging for select buyer tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select buyer tab')
            self._ixconnect_page.select_buyer_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select buyer tab')
            return is_selected

    def select_seller_tab(self):
        """
        Returning select seller tab
        Implementing logging for select seller tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select seller tab')
            self._ixconnect_page.select_seller_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select seller tab')
            return is_selected

    def verify_first_name(self, first_name):
        """
        Returning verify first name
        Implementing logging for verify first name functionality
        :param first_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: verify first name')
            return self._ixconnect_page.verify_first_name(first_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify first name')

    def verify_last_name(self, last_name):
        """
        Returning verify last name
        Implementing logging for verify last name functionality
        :param last_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: verify last name')
            return self._ixconnect_page.verify_last_name(last_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify last name')

    def is_contract_simulator_search_button_present(self):
        """
        Returning is contract simulator search button present
        Implementing logging for is contract simulator search button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is contract simulator search button present')
            return self._ixconnect_page.is_contract_simulator_search_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is contract simulator search button present')

    def is_contract_simulator_download_button_present(self):
        """
        Returning is contract simulator download button present
        Implementing logging for is contract simulator download button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is contract simulator download button present')
            return self._ixconnect_page.is_contract_simulator_download_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is contract simulator download button present')

    def is_contract_simulator_upload_button_present(self):
        """
        Returning is contract simulator upload button present
        Implementing logging for is contract simulator upload button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is contract simulator upload button present')
            return self._ixconnect_page.is_contract_simulator_upload_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is contract simulator upload button present')

    def is_contract_simulator_download_button_not_present(self):
        """
        Returning is contract simulator download button not present
        Implementing logging for is contract simulator download button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is contract simulator download button not present')
            return self._ixconnect_page.is_contract_simulator_download_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is contract simulator download button not present')

    def is_contract_simulator_upload_button_not_present(self):
        """
        Returning is contract simulator upload button not present
        Implementing logging for is contract simulator upload button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is contract simulator upload button not present')
            return self._ixconnect_page.is_contract_simulator_upload_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is contract simulator upload button not present')

    def is_contract_submenu_not_present(self):
        """
        Returning is contract submenu not present
        Implementing logging for is contract submenu not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is contract submenu not present')
            return self._ixconnect_page.is_contract_submenu_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is contract submenu not present')

    def switch_to_default_window(self):
        """
        Returning switch to default window
        Implementing logging for switch to default window functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to default window')
            self._ixconnect_page.switch_to_default_window()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to default window')
            return is_switched

    def read_data_from_upload_excel_file(self, file_path):
        """
        Returning read data from upload excel file
        Implementing logging for read data from upload excel file functionality
        :param file_path:
        :return: True/False
        """
        is_read = None
        try:
            self.logger.info('Start: read data from upload excel file')
            self._ixconnect_page.read_data_from_excel_file(file_path)
            is_read = True
        except WebDriverException as exp:
            is_read = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: read data from upload excel file')
            return is_read

    def compare_rates_grid_product_with_excel_data(self):
        """
        Returning compare rates grid product with excel data
        Implementing logging for compare rates grid product with excel data functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare rates grid product with excel data')
            is_compared = self._ixconnect_page.compare_rates_grid_product_with_excel_data()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare rates grid product with excel data')
            return is_compared

    def click_on_first_route_class(self):
        """
        Returning click on first route class
        Implementing logging for click on first route class functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on first route class')
            self._ixconnect_page.click_on_first_route_class()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on first route class')
            return is_clicked

    def is_specific_mandatory_field_on_route_class_page_present(self, field_name):
        """
        Returning is specific mandatory field on route class present
        Implementing logging for is specific mandatory field on route class present functionality
        :param field_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific mandatory field on route class present')
            return self._ixconnect_page.is_specific_mandatory_field_on_route_class_page_present(field_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific mandatory field on route class present')

    def is_service_level_created_for_route_class(self, route_class_name):
        """
        Returning is service level created for route class
        Implementing logging for is service level created for route class functionality
        :param route_class_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is service level created for route class')
            return self._ixconnect_page.is_service_level_created_for_route_class(route_class_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is service level created for route class')

    def select_first_inner_customer(self):
        """
        Returning select first inner customer
        Implementing logging for select first inner customer functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select first inner customer')
            self._ixconnect_page.select_first_inner_customer()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select first inner customer')
            return is_selected

    def is_service_level_column_present(self):
        """
        Returning is service level column present
        Implementing logging for is service level column present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is service level column present')
            return self._ixconnect_page.is_service_level_column_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is service level column present')

    def click_on_specific_tab_in_agreement_page(self, tab_name):
        """
        Returning click on specific tab in agreement page
        Implementing logging for click on specific tab in agreement page functionality
        ;:param tab_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on specific tab in agreement page')
            self._ixconnect_page.click_on_specific_tab_in_agreement_page(tab_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on specific tab in agreement page')
            return is_clicked

    def is_specific_tab_remained_intact(self, tab_name):
        """
        Returning is specific tab remained intact
        Implementing logging for is specific tab remained intact functionality
        :param tab_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific tab remained intact')
            return self._ixconnect_page.is_specific_tab_remained_intact(tab_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific tab remained intact')
