"""Implementing System Admin screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from TestFramework.Libraries.Pages.buy_page import BuyPage
import TestFramework.Libraries.Modules.database as Database
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import win32com.client as client


class SystemAdminPage(BasePage):
    """
    Contains System Admin UI page locators
    Switch to system admin function
    Get system admin page title function
    Is system admin dashboard tab present function
    Is users tab present function
    Is system tab present function
    Select users tab function
    Get users tab header function
    Select system tab function
    Get system tab header function
    Is category present function
    Is configuration variables present function
    Is field alias present function
    Click security profile button function
    Click profile grid first row inline action button function
    Is view edit profile inline action item present function
    Is view edit profile popup loaded properly function
    Click users grid first row inline action button function
    Is carrier security inline action item present function
    Is view edit user profile popup loaded properly function
    Is carrier security popup loaded properly function
    Get user grid first row user name function
    Compare selected user name function
    Select users grid multiple row checkbox function
    Click users grid bulk edit button function
    Set bulk edit profile function
    Set bulk edit status function
    Set bulk edit reports to value function
    Set bulk edit sales level function
    Set bulk edit sales reports to value function
    Click bulk edit undo reset button function
    Click bulk edit cancel button function
    Click bulk edit submit button function
    Click users grid save changes button function
    Is input field reset function
    Click new profile button function
    Set new profile name function
    Set profile status function
    Assign roles to profile function
    Click view edit profile save button function
    Filter profiles grid function
    Get profiles grid row details function
    Click new user button function
    Set user name function
    Set first name function
    Set last name function
    Set security profile function
    Set user status function
    Set reports to function
    Set password function
    Set confirm password function
    Set email primary function
    Click save and create new button function
    Close create new user pop up function
    Click edit user ok button function
    Get users grid row details function
    Set user name for search function
    Click search button function
    Click configuration variables button function
    Set variable name function
    Set configuration variables current value function
    Click save changes button function
    Filter users grid function
    Select account security tab function
    Move available accounts to destination function
    Move all accounts to source function
    Get users grid modified date column value function
    Get user profile modified value function
    Get profile management grid modified date column value function
    Close current tab function
    Click category link function
    Get categories grid modified date column value function
    Get configuration variables grid modified date column value function
    Click field alias link function
    Get field alias grid modified date column value function
    Click ftp site management link function
    Get ftp site management grid last modified date column value function
    Click server management link function
    Get server management grid last modified date column value function
    Get user name function
    Get new profile name function
    Set scope function
    Get current value column value function
    Get call type function
    Get dial digit tab name function
    Click configuration variable tab save changes button function
    Set value in current value column function
    Set default value in current value column
    Assign level2 roles to profile function
    Reset password function
    Set user status in grid function
    Set server name function
    Click server management grid first row inline action button function
    Set sql instance function
    Click server details save button function
    Get server management grid specific column value function
    Filter server management grid function
    Set server management grid settings function
    Get all rows of specific column from server management grid function
    Sort server management grid column function
    Compare sorted data function
    Get server management grid column names by order function
    Drag server management grid column function
    Compare grid column position after altering function
    Is l2 roles section displayed function
    Is role available under l2 roles function
    Click users page search button function
    Click select companies radio button function
    Move available companies to destination function
    Click select accounts radio button function
    Set profile status for search function
    Unassign level2 roles to profile function
    Get sql instance function
    Compare server management grid first row value function
    Set physical server function
    Get physical server function
    Set cluster note function
    Set agent user name function
    Set agent password function
    Set server status function
    Set server in use function
    Set ip address function
    Move available first database item to destination function
    Set security profile in grid function
    Get password version from database function
    Reset password from home function
    Set user name on login page function
    Click forgot password button function
    Click forgot password submit button function
    Set password expiration date from database function
    Click new ftp site button function
    Set value in site name column function
    Get created new ftp site name function
    Set value in site ip address column function
    Set value in site user name column function
    Set value in site password column function
    Set value in site directory column function
    Set value in site proxy session column function
    Set ftp site for search function
    Get ftp site management grid specific column value function
    Compare ftp site management grid first row value function
    Click ftp site management grid first row checkbox function
    Click ftp site delete button function
    Set ftp site management grid settings function
    Get all rows of specific column from ftp site management grid function
    Sort ftp site management grid column function
    Get ftp site management grid column names by order function
    Drag ftp site management grid column function
    Set field alias scope function
    Set value in field alias column function
    Get field alias name function
    Get field alias grid specific column value function
    Compare field alias grid first row value function
    Set field alias grid settings function
    Get all rows of specific column from field alias grid function
    Sort field alias grid column function
    Get field alias column names by order function
    Drag field alias grid column function
    Click new category button for system admin function
    Set new category application function
    Set new category object function
    Set new category type function
    Set new category for system admin function
    Get created new category from system admin function
    Set new category abbreviation for system admin function
    Set new category level function
    Click new category save button function
    Filter categories grid function
    Get categories grid specific column value function
    Compare categories grid first row value function
    Set value in category column function
    Click categories grid first row checkbox function
    Click categories delete button function
    Set categories grid settings function
    Get all rows of specific column from categories grid function
    Sort categories grid column function
    Get categories grid column names by order function
    Drag categories grid column function
    Get configuration variables grid specific column value function
    Compare configuration variables grid first row value function
    Click export to excel button function
    Filter configuration variables grid function
    Set configuration variables grid settings function
    Get all rows of specific column from configuration variables grid function
    Get configuration variables grid column names by order function
    Drag configuration variables grid column function
    Compare configuration variables grid row count function
    Sort configuration variables grid column function
    Get lastactivitydate from database function
    Get name of the user function
    Get user first name function
    Get user last name function
    Create config variable preset dictionary function
    Store preset config variable current value function
    Store preset config variable modified by function
    Get preset config variable current value function
    Click first row info icon function
    Verify system note for cplenablecurrencypreview function
    Unassign assigned roles to unassigned role function
    Update user status id function
    Click all accounts radio button function
    Click all companies radio button function
    Verify system variable description function
    Get extract delivery link path function
    Set security profile grid settings function
    Get all rows of specific column from categories grid function
    Sort security profile grid column function
    Get security profile grid specific column value function
    Get security profile grid column names by order function
    Drag security profile grid column function
    Set users grid settings function
    Get all rows of specific column from users grid function
    Sort users grid column function
    Get users grid specific column value function
    Get users grid column names by order function
    Drag users grid column function
    Set application function
    Set field alias column value function
    Is field alias grid field name present function
    Assign all level2 roles to profile function
    Is l2 roles dection not displayed function
    Unassign all level2 roles to profile function
    Assign all level1 roles to profile function
    Verify system note for cplpreviewdisplaywarnings function
    Set name for search function
    Set user status for search function
    """
    # Start: System Admin page locators
    default_tab_header_locator = (By.XPATH, "//div[@id='SystemAdminTabStrip-1']/descendant::h3")
    system_admin_dashboard_tab_locator = (By.XPATH, "//div[@id='SystemAdminTabStrip']/descendant::li[@aria-controls='SystemAdminTabStrip-1']/descendant::a")
    users_tab_locator = (By.XPATH, "//div[@id='SystemAdminTabStrip']/descendant::a[text()='Users']")
    system_tab_locator = (By.XPATH, "//div[@id='SystemAdminTabStrip']/descendant::a[text()='System']")
    user_menu_locator = (By.XPATH, "//div[@id='mnuAccounts']/descendant::a[@id='menu_opener']")
    change_password_locator = (By.ID, "lnkChangePassword")

    # Start: Users tab locators
    users_tab_header_locator = (By.XPATH, "//div[@id='divSAUMain']/descendant::h3")
    security_profile_button_locator = (By.ID, "btnSAUSecurityProfile")
    users_grid_div_id = "divSAUGrid"
    users_grid_inline_action_column_number = 3
    carrier_security_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Carrier Security']")
    view_edit_user_profile_popup_locator = (By.ID, "UserProfileWindow_wnd_title")
    carrier_security_pop_up_locator = (By.XPATH, "//a[text()='Carrier Security']")
    users_grid_first_row_user_name = ""
    grid_row_dictionary = {}
    view_edit_user_profile_user_name_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='User Name ']/../descendant::input")
    users_grid_bulk_edit_button_locator = (By.ID, "btnSAUBulkEdit")

    bulk_edit_profile_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Profile']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_status_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Status']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_reports_to_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Reports To']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_sales_level_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Sales Level']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_sales_reports_to_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Sales Reports To']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_pop_up_title_locator = (By.ID, "SystemAdminBulkEditWindowContainerWindow_wnd_title")
    bulk_edit_undo_reset_button_locator = (By.ID, "BulkEditUndo")
    bulk_edit_cancel_button_locator = (By.ID, "BulkEditCancel")
    bulk_edit_submit_button_locator = (By.ID, "BulkEditSubmit")
    users_grid_save_changes_button_locator = (By.XPATH, "//a[text()='Save changes']")
    success_message_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    ok_button_locator = (By.ID, "btnOk")
    reset_text = "(edit this)"
    new_user_button_locator = (By.ID, "btnSAUCreate")
    user_name_locator = (By.ID, "txtSAUUserName")
    search_button_locator = (By.ID, "btnSearch")
    edit_user_ok_button_locator = (By.ID, "btnSAUEdOK")
    users_grid_count_span_locator = (By.XPATH, "//div[@id='divSAUBar']/descendant::span")
    modified_date_column_name = "Modified Date"
    user_profile_modified_locator = (By.XPATH, "//label[text()='Modified ']/../descendant::div")
    status_column_name = "Status"
    user_page_search_button_locator = (By.XPATH, "//div[@id='divSAUMain']/descendant::button[@id='btnSearch']")
    status_kendo_dropdown_locator = (By.XPATH, "//div[@id='divSAUMain']/descendant::label[text()='Status ']/../descendant::input")
    profile_column_name = "Profile"
    name_textbox_locator = (By.ID, "txtSAUName")

    # Start: Create new user pop up locators
    create_new_user_pop_up_title_locator = (By.ID, "UserProfileWindow_wnd_title")
    user_name_input_field_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='User Name ']/../descendant::input")
    first_name_input_field_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='First Name']/../descendant::input")
    last_name_input_field_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='Last Name ']/../descendant::input")
    security_profile_dropdown_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='Security Profile ']/../descendant::input")
    user_status_dropdown_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='User Status ']/../descendant::input")
    reports_to_dropdown_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='Reports To ']/../descendant::input")
    password_input_field_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='Password ']/../descendant::input")
    confirm_password_input_field_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='Confirm Password ']/../descendant::input")
    email_primary_input_field_locator = (By.XPATH, "//div[@id='divSAUEdUPMain']/descendant::label[text()='Email Primary ']/../descendant::input")
    save_and_create_new_button_locator = (By.ID, "btnSAUEdSavePlus")
    create_user_warning_message_locator = (By.ID, "messagingPopup_wnd_title")
    create_new_user_pop_up_close_button_locator = (By.XPATH, "//span[contains(text(), 'Create New User')]/../descendant::span[text()='Close']")
    # End: Create new user pop up locators

    # Start: Security profile page locators
    view_edit_profile_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='View/Edit Profile']")
    view_edit_profile_popup_locator = (By.ID, "ProfileDetailsWindow_wnd_title")
    profile_grid_div_id = "divSAPMGrid"
    profile_grid_inline_action_column_number = 1
    new_profile_button_locator = (By.XPATH, "//a[contains(@id, 'btnSAPMCreate')]")
    view_edit_profile_input_field_locator = (By.XPATH, "//div[@id='SAPMDContent']/descendant::label[contains(text(), 'Profile')]/../descendant::input")
    view_edit_profile_status_kendo_dropdown_locator = (By.XPATH, "//div[@id='SAPMDContent']/descendant::label[text()='Status ']/../descendant::input")
    view_edit_profile_save_button_locator = (By.ID, "btnSAPMDSave")
    data_saved_successful_message_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    unassigned_roles_source_id = "from_lstSAPMDRoles"
    profiles_data_grid_name = "SystemAdminProfilesGrid"
    profiles_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divSAPMBar')]/descendant::span")
    unassigned_level2_roles_source_id = "from_lstSaasGranularRoles"
    move_profile_single_item_button_locator = (By.ID, "btnMoveDest_lstSaasGranularRoles")
    reset_password_message_locator = (By.XPATH, "//p[text()='Your account requires a password change. Please reset your password & try again.']")
    old_password_input_field_locator = (By.XPATH, "//div[@id='divASChPwdMain']/descendant::span[contains(text(), 'Old Password')]/../descendant::input")
    new_password_input_field_locator = (By.XPATH, "//div[@id='divASChPwdMain']/descendant::span[contains(text(), 'New Password')]/../descendant::input")
    reset_confirm_password_input_field_locator = (By.XPATH, "//div[@id='divASChPwdMain']/descendant::span[contains(text(), 'Confirm New Password')]/../descendant::input")
    reset_password_ok_button_locator = (By.ID, "btnASCPOK")
    reset_password_success_message_locator = (By.XPATH, "//p[text()='Your password has been changed successfully.']")
    l2_roles_section_div_locator = (By.ID, "divSaasGranularRoles")
    assigned_level2_roles_source_id = "to_lstSaasGranularRoles"
    move_left_profile_single_item_button_locator = (By.ID, "btnMoveSrc_lstSaasGranularRoles")
    assigned_roles_source_id = "to_lstSAPMDRoles"
    move_left_unassigned_single_item_button_locator = (By.ID, "btnMoveSrc_lstSAPMDRoles")
    move_profile_all_item_button_locator = (By.ID, "btnMoveAllDest_lstSaasGranularRoles")
    move_profile_all_item_unassign_button_locator = (By.ID, "btnMoveAllSrc_lstSaasGranularRoles")
    move_profile_all_level1_item_button_locator = (By.ID, "btnMoveAllDest_lstSAPMDRoles")
    # End: Security profile page locators

    # Start: Edit user profile pop up locators
    account_security_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Account Security']")
    accounts_source_id = "from_lstSAUEdCSAccounts"
    accounts_move_button_locator = (By.ID, "btnMoveDest_lstSAUEdCSAccounts")
    move_all_account_to_source_button_locator = (By.ID, "btnMoveAllSrc_lstSAUEdCSAccounts")
    select_companies_radio_button_locator = (By.ID, "rblSAUEdCSCompanies_0")
    companies_source_id = "from_lstSAUEdCSCompanies"
    companies_move_button_locator = (By.ID, "btnMoveDest_lstSAUEdCSCompanies")
    select_accounts_radio_button_locator = (By.ID, "rblSAUEdCSAccounts_0")
    all_companies_radio_button_locator = (By.ID, "rblSAUEdCSCompanies_1")
    all_accounts_radio_button_locator = (By.ID, "rblSAUEdCSAccounts_1")
    # End: Edit user profile pop up locators
    # End: Users tab locators

    # Start: System tab locators
    system_tab_header_locator = (By.XPATH, "//div[@id='SystemAdminTabStrip-3']/descendant::h3")
    category_locator = (By.ID, "btnCategory")
    configuration_variables_locator = (By.ID, "btnConfigVariables")
    field_alias_locator = (By.ID, "btnFieldAlias")
    categories_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCategoryBar')]/descendant::span")
    categories_grid_div_id = "divCategoryGrid"
    categories_grid_data_grid_name = "SystemAdminCategoryGrid"
    field_alias_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divFABar')]/descendant::span")
    field_alias_grid_div_id = "divFAGrid"
    field_alias_data_grid_name = "SystemAdminFieldAliasGrid"
    ftp_site_management_link_locator = (By.ID, "btnftpSiteManagement")
    ftp_site_management_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divFtpSiteManagementNotification')]/descendant::span")
    ftp_site_management_grid_div_id = "divFtpSiteManagementGrid"
    ftp_site_management_data_grid_name = "SystemAdminFtpManagmentGrid"
    last_modified_column_name = "Last Modified"
    server_management_link_locator = (By.ID, "btnServerManagement")
    server_management_count_span_locator = (By.XPATH, "//div[contains(@id, 'divServerManagementNotification')]/descendant::span")
    server_management_grid_div_id = "divServerManagementGrid"
    server_management_data_grid_name = "SystemAdminServerManagmentGrid"
    server_name_textbox_locator = (By.XPATH, "//input[contains(@id, 'txtServerName')]")
    server_management_grid_inline_action_column_number = 1
    sql_instance_textbox_locator = (By.XPATH, "//input[contains(@id, 'SqlInstance')]")
    server_details_save_button_locator = (By.ID, "btnSaveServerSettings")
    physical_server_textbox_locator = (By.XPATH, "//input[contains(@id, 'PhysicalServer_')]")
    cluster_note_dropdown_locator = (By.XPATH, "//div[@id='ServerSettingContent']/descendant::label[text()='Cluster Note']/../descendant::input")
    agent_user_name_textbox_locator = (By.XPATH, "//input[contains(@id, 'AgentUserName')]")
    agent_password_textbox_locator = (By.XPATH, "//input[contains(@id, 'AgentPassword_')]")
    server_status_dropdown_locator = (By.XPATH, "//div[@id='ServerSettingContent']/descendant::label[text()='Server Status']/../descendant::input")
    server_in_use_dropdown_locator = (By.XPATH, "//div[@id='ServerSettingContent']/descendant::label[text()='Server In Use']/../descendant::input")
    ip_address_textbox_locator = (By.XPATH, "//input[contains(@id, 'IpAddress_')]")
    move_available_database_single_item_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveDest')]")

    # Start: Configuration variable tab locators
    variable_name_textbox_locator = (By.XPATH, "//input[contains(@id, 'txtConfigVariableName')]")
    configuration_variable_grid_div_id = "divCVGrid"
    current_value_column_name = "Current Value"
    save_changes_button_locator = (By.XPATH, "//a[text()='Save changes']")
    configuration_variables_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCVBar')]/descendant::span")
    configuration_variables_data_grid_name = "SystemConfigVariablesGrid"
    scope_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Scope')]/../descendant::input")
    configuration_variable_tab_header_locator = (By.XPATH, "//h3[contains(text(), 'Configuration Variables')]")
    configuration_variable_tab_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divCVMain')]/descendant::a[text()='Save changes']")
    default_value_column_name = "Default Value"
    export_to_excel_button_locator = (By.XPATH, "//a[contains(@id, 'btnExportToExcel')]")
    modified_by_column_name = "Modified By"
    first_row_info_icon_locator = (By.XPATH, "//span[@class='tooltipVariableMsg']/span")
    cplenablecurrencypreview_system_note_locator = (By.XPATH, "//span[contains(text(), 'CPL Preview is generated. The possible values are 0, 1 and the default value is 0 (off).')]")
    variable_name_column_name = "Variable Name"
    cplpreviewdisplaywarnings_system_note_locator = (By.XPATH, "//span[contains(text(), 'Determines whether or not to display warnings for excluded destination when generating Customer Price List previews. This configuration does not impact Customer Price List generation. Possible values are 0 (off - no warnings, default) and 1 (on - show warnings).')]")
    # End: Configuration variable tab locators
    # End: System tab locators

    # Start: FTP site management tab locators
    new_ftp_site_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewFTPSiteManagement')]")
    ftp_site_management_div_id = "divFtpSiteManagementGrid"
    site_name_column_name = "Site Name"
    site_ip_address_column_name = "Site IP Address"
    site_user_name_column_name = "Site User Name"
    site_password_column_name = "Site Password"
    site_directory_column_name = "Site Directory"
    site_proxy_session_column_name = "Proxy Session"
    ftp_site_management_page_header_locator = (By.XPATH, "//h3[contains(text(), 'FTP Site Management')]")
    ftp_site_textbox_locator = (By.XPATH, "//label[text()='FTP Site']/../descendant::input")
    ftp_site_management_count_span_locator = (By.XPATH, "//div[contains(@id, 'divFtpSiteManagementNotification')]/descendant::span")
    ftp_site_management_grid_inline_action_column_number = 2
    ftp_site_delete_button_locator = (By.XPATH, "//a[contains(@id, 'btnDeleteFTPSiteManagement')]")
    delete_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the selected rows?']")
    delete_success_message_locator = (By.XPATH, "//p[text()='Data has been deleted successfully']")
    # End: FTP site management tab locators

    # Start: Field Alias tab locators
    field_alias_column_name = "Field Alias"
    field_alias_page_header_locator = (By.XPATH, "//h3[contains(text(), 'Field Alias')]")
    field_alias_count_span_locator = (By.XPATH, "//div[contains(@id, 'divFABar')]/descendant::span")
    application_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Application')]/../descendant::input")
    field_name_column_name = "Field Name"
    # End: Field Alias tab locators

    # Start: Category tab locators
    new_category_button_locator = (By.XPATH, "//button[contains(@id, 'btnNewCategory')]")
    new_category_application_kendo_dropdown_locator = (By.XPATH, "//span[text()='Application']/../../descendant::span[@class='k-icon k-i-arrow-s']")
    new_category_object_kendo_dropdown_locator = (By.XPATH, "//label[text()='Object']/../descendant::span[@class='k-icon k-i-arrow-s']")
    new_category_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Category Type']/../descendant::span[@class='k-icon k-i-arrow-s']")
    new_category_textbox_locator = (By.XPATH, "//span[text()='Category']/../../descendant::input")
    new_category_abbreviation_textbox_locator = (By.XPATH, "//label[text()='Abbreviation']/../descendant::input")
    new_category_level_kendo_dropdown_locator = (By.XPATH, "//label[text()='Level']/../descendant::span[@class='k-icon k-i-arrow-s']")
    new_category_save_button_locator = (By.ID, "categorySave")
    new_category_page_header_locator = (By.XPATH, "//h3[contains(text(), 'Categories')]")
    categories_grid_checkbox_action_column_number = 2
    categories_delete_button_locator = (By.XPATH, "//button[contains(@id, 'btnCategoryDelete')]")
    categories_deleted_successfully_message_locator = (By.XPATH, "//p[text()='Categories deleted successfully']")
    category_column_name = "Category"
    move_left_unassigned_database_single_item_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveSrc_lstDatabaseList_')]")
    # End: Category tab locators
    # End: System Admin page locators

    # Start: Login page locators
    login_page_user_name_locator = (By.ID, "UserName")
    forgot_password_button_locator = (By.ID, "lbForgotPassword")
    forgot_password_submit_button_locator = (By.ID, "ForgotPasswordSubmit")
    # End: Login page locators

    def switch_to_system_admin(self):
        """
        Implementing switch to system admin functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_system_admin_page_title(self):
        """
        Implementing get system admin page title functionality
        :return: System Admin page title
        """
        self.wait().until(EC.visibility_of_element_located(self.default_tab_header_locator), 'default tab header not found before specified time')
        return self.page_title()

    def is_system_admin_dashboard_tab_present(self):
        """
        Implementing is system admin dashboard tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.system_admin_dashboard_tab_locator)
        return is_present

    def is_users_tab_present(self):
        """
        Implementing is users tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.users_tab_locator)
        return is_present

    def is_system_tab_present(self):
        """
        Implementing is system tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.system_tab_locator)
        return is_present

    def select_users_tab(self):
        """
        Implementing select users tab functionality
        :return:
        """
        self.select_static_tab(self.users_tab_locator, 'users tab not found before specified time')

    def get_users_tab_header(self):
        """
        Implementing get users tab header functionality
        :return: Users tab header
        """
        users_tab_header_element = self.wait().until(EC.visibility_of_element_located(self.users_tab_header_locator), 'users tab header not found before specified time')
        return users_tab_header_element.text

    def select_system_tab(self):
        """
        Implementing select system tab functionality
        :return:
        """
        self.select_static_tab(self.system_tab_locator, 'system tab not found before specified time')

    def get_system_tab_header(self):
        """
        Implementing get system tab header functionality
        :return: System tab header
        """
        system_tab_header_element = self.wait(30).until(EC.visibility_of_element_located(self.system_tab_header_locator), 'system tab header not found before specified time')
        return system_tab_header_element.text

    def is_category_present(self):
        """
        Implementing is category present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.category_locator)
        return is_present

    def is_configuration_variables_present(self):
        """
        Implementing is configuration variables present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.configuration_variables_locator)
        return is_present

    def is_field_alias_present(self):
        """
        Implementing is field alias present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.field_alias_locator)
        return is_present

    def click_security_profile_button(self):
        """
        Implementing click security profile button functionality
        :return:
        """
        self.click_element(self.security_profile_button_locator, True, True)

    def click_profile_grid_first_row_inline_action_button(self):
        """
        Implementing click profile grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.profile_grid_div_id, None, self.profile_grid_inline_action_column_number, True)

    def is_view_edit_profile_inline_action_item_present(self):
        """
        Implementing is view edit profile inline action item present functionality
        :return: True/False
        """
        return self.is_element_present(self.view_edit_profile_locator)

    def is_view_edit_profile_popup_loaded_properly(self):
        """
        Implementing is view edit profile popup loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.view_edit_profile_popup_locator)

    def click_new_profile_button(self):
        """
        Implementing click new profile button functionality
        :return:
        """
        self.click_element(self.new_profile_button_locator)

    def set_new_profile_name(self, profile_name_prefix):
        """
        Implementing set new profile name functionality
        :param profile_name_prefix:
        :return: profile_name
        """
        global profile_name
        try:
            profile_name = profile_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.view_edit_profile_input_field_locator, profile_name)
        except:
            profile_name = ''
        finally:
            return profile_name

    def get_new_profile_name(self):
        """
        Implementing get new profile name functionality
        :return:
        """
        global profile_name
        return profile_name

    def set_profile_status(self, profile_status):
        """
        Implementing set profile status functionality
        :param profile_status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.view_edit_profile_status_kendo_dropdown_locator, profile_status)
        self.wait_for_ajax_spinner_load()

    def assign_roles_to_profile(self, list_of_roles):
        """
        Implementing assign roles to profile functionality
        :param list_of_roles:
        :return:
        """
        self.move_available_items_to_destination(self.unassigned_roles_source_id, list_of_roles)

    def click_view_edit_profile_save_button(self):
        """
        Implementing click view edit profile save button functionality
        :return:
        """
        self.click_element(self.view_edit_profile_save_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.data_saved_successful_message_locator), "data saved successful message locator not found before specified time out")
            self.click_element(self.ok_button_locator)
        except:
            raise

    def filter_profiles_grid(self, column_name, filter_item):
        """
        Implementing filter profiles grid functionality
        :param column_name:
        :param filter_item:
        :return:
        """
        self.grid_filter_with_textbox(self.profile_grid_div_id, column_name, filter_item)

    def get_profiles_grid_row_details(self):
        """
        Implementing get profiles grid row details functionality
        :return: profiles_grid_row_data
        """
        self.grid_row_dictionary.clear()
        self.grid_row_dictionary = {"Profile": "", "Status": ""}
        profiles_grid_row_data = self.get_grid_row_details(self.profile_grid_div_id, self.grid_row_dictionary, self.profiles_data_grid_name)
        return profiles_grid_row_data

    def click_users_grid_first_row_inline_action_button(self):
        """
        Implementing click users grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.users_grid_div_id, None, self.users_grid_inline_action_column_number, True)

    def is_carrier_security_inline_action_item_present(self):
        """
        Implementing is carrier security inline action item present functionality
        :return: True/False
        """
        return self.is_element_present(self.carrier_security_locator)

    def is_view_edit_user_profile_popup_loaded_properly(self):
        """
        Implementing is view edit user profile popup loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.view_edit_user_profile_popup_locator)

    def is_carrier_security_popup_loaded_properly(self):
        """
        Implementing is carrier security popup loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.carrier_security_pop_up_locator)

    def select_users_grid_multiple_row_checkbox(self, number_of_rows):
        """
        Implementing select users grid multiple row checkbox functionality
        :param number_of_rows:
        :return:
        """
        for row in range(0, int(number_of_rows)):
            checkbox_locator = (By.XPATH, "//div[@id='%s']/descendant::tbody/descendant::tr[%s]/descendant::td[2]/input" % (self.users_grid_div_id, str(row + 1)))
            self.click_element(checkbox_locator, True, True)

    def click_users_grid_bulk_edit_button(self):
        """
        Implementing click users grid bulk edit button functionality
        :return:
        """
        self.click_element(self.users_grid_bulk_edit_button_locator)

    def set_bulk_edit_profile(self, profile):
        """
        Implementing set bulk edit profile functionality
        :param profile:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_profile_dropdown_arrow_locator, profile)

    def set_bulk_edit_status(self, status):
        """
        Implementing set bulk edit status functionality
        :param status:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_status_dropdown_arrow_locator, status)

    def set_bulk_edit_reports_to_value(self, reports_to_value):
        """
        Implementing set bulk edit reports to value functionality
        :param reports_to_value:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_reports_to_dropdown_arrow_locator, reports_to_value)

    def set_bulk_edit_sales_level(self, sales_level):
        """
        Implementing set bulk edit sales level functionality
        :param sales_level:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_sales_level_dropdown_arrow_locator, sales_level)

    def set_bulk_edit_sales_reports_to_value(self, sales_reports_to_value):
        """
        Implementing set bulk edit sales reports to value functionality
        :param sales_reports_to_value:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_sales_reports_to_dropdown_arrow_locator, sales_reports_to_value)

    def click_bulk_edit_undo_reset_button(self):
        """
        Implementing click bulk edit undo reset button functionality
        :return:
        """
        self.click_element(self.bulk_edit_undo_reset_button_locator, hover=True)

    def click_bulk_edit_cancel_button(self):
        """
        Implementing click bulk edit cancel button functionality
        :return:
        """
        self.click_element(self.bulk_edit_cancel_button_locator, hover=True)

    def click_bulk_edit_submit_button(self):
        """
        Implementing click bulk edit submit button functionality
        :return:
        """
        self.click_element(self.bulk_edit_submit_button_locator, hover=True)

    def click_users_grid_save_changes_button(self):
        """
        Implementing click users grid save changes button functionality
        :return:
        """
        self.click_element(self.users_grid_save_changes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def is_input_field_reset(self, label_text):
        """
        Implementing is input field reset functionality
        :param label_text:
        :return: True/False
        """
        is_reset = False
        input_field_span_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='%s']/../descendant::span[@class='k-input']" % label_text)
        input_field_span_element = self.wait().until(EC.presence_of_element_located(input_field_span_locator), 'input field span locator not found before specified time out')
        if input_field_span_element.text.lower() == self.reset_text:
            is_reset = True
        return is_reset

    def compare_selected_user_name(self):
        """
        Implementing compare selected user name functionality
        :return: True/False
        """
        is_matched = None
        users_grid_first_row_user_name = self.get_user_name()
        pop_up_user_name_element = self.wait().until(EC.presence_of_element_located(self.view_edit_user_profile_user_name_locator), "view edit user profile user name locator not found before specified time out")
        pop_up_user_name = pop_up_user_name_element.get_attribute("value")
        if str(users_grid_first_row_user_name) == str(pop_up_user_name):
            is_matched = True
        else:
            is_matched = False
        return is_matched

    def click_new_user_button(self):
        """
        Implementing click new user button functionality
        :return:
        """
        self.click_element(self.new_user_button_locator, script_executor=True)

    def set_user_name(self, user_name_prefix):
        """
        Implementing set user name functionality
        :param user_name_prefix:
        :return:
        """
        global user_name
        try:
            user_name = user_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.user_name_input_field_locator, user_name)
        except:
            user_name = ''

    def get_user_name(self):
        """
        Implementing get user name functionality
        :return: user name
        """
        global user_name
        return user_name

    def set_first_name(self, first_name_prefix):
        """
        Implementing set first name functionality
        :param first_name_prefix:
        :return:
        """
        global first_name
        first_name = first_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.first_name_input_field_locator, first_name)

    def set_last_name(self, last_name_prefix):
        """
        Implementing set last name functionality
        :param last_name_prefix:
        :return:
        """
        global last_name
        last_name = last_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.last_name_input_field_locator, last_name)

    def set_security_profile(self, security_profile):
        """
        Implementing set security profile functionality
        :param security_profile:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.security_profile_dropdown_locator, security_profile)
        self.wait_for_ajax_spinner_load()

    def set_user_status(self, user_status):
        """
        Implementing set user status functionality
        :param user_status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.user_status_dropdown_locator, user_status)
        self.wait_for_ajax_spinner_load()

    def set_reports_to(self, name):
        """
        Implementing set reports to functionality
        :param name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.reports_to_dropdown_locator, name)
        self.wait_for_ajax_spinner_load()

    def set_password(self, password):
        """
        Implementing set password functionality
        :param password:
        :return:
        """
        self.set_value_into_input_field(self.password_input_field_locator, password)

    def set_confirm_password(self, password):
        """
        Implementing set confirm password functionality
        :param password:
        :return:
        """
        self.set_value_into_input_field(self.confirm_password_input_field_locator, password)

    def set_email_primary(self, email):
        """
        Implementing set email primary functionality
        :param email:
        :return:
        """
        self.set_value_into_input_field(self.email_primary_input_field_locator, email)

    def click_save_and_create_new_button(self):
        """
        Implementing click save and create new button functionality
        :return:
        """
        self.click_element(self.save_and_create_new_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.create_user_warning_message_locator), 'create user warning message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            pass

    def close_create_new_user_pop_up(self):
        """
        Implementing close create new user pop up functionality
        :return:
        """
        try:
            self.click_element(self.create_new_user_pop_up_close_button_locator)
            self.accept_alert_pop_up()
        except:
            try:
                self.refresh_window()
                self.switch_to_default_content()
            except:
                pass
            self.switch_to_system_admin()

    def click_edit_user_ok_button(self):
        """
        Implementing click edit user ok button functionality
        :return:
        """
        self.click_element(self.edit_user_ok_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def get_users_grid_row_details(self):
        """
        Implementing get users grid row details functionality
        :return: users_grid_row_details
        """
        self.grid_row_dictionary.clear()
        self.grid_row_dictionary = {"User Name": "", "Status": "", "Email": "", "Reports To": ""}
        users_grid_row_details = self.get_grid_row_details(self.users_grid_div_id, self.grid_row_dictionary)
        return users_grid_row_details

    def set_user_name_for_search(self, user_name):
        """
        Implementing set user name for search functionality
        :param user_name:
        :return:
        """
        self.set_value_into_input_field(self.user_name_locator, user_name)

    def click_search_button(self):
        """
        Implementing click search button functionality
        :return:
        """
        self.click_element(self.search_button_locator, script_executor=True)
        self.wait_for_ajax_spinner_load()

    def click_configuration_variables_button(self):
        """
        Implementing click configuration variables button functionality
        :return:
        """
        self.click_element(self.configuration_variables_locator, script_executor=True)

    def set_variable_name(self, variable_name):
        """
        Implementing set variable name functionality
        :param variable_name:
        :return:
        """
        global variable_name_to_set
        variable_name_to_set = variable_name
        self.set_value_into_input_field(self.variable_name_textbox_locator, variable_name)

    def set_configuration_variables_current_value(self, current_value):
        """
        Implementing set configuration variables current value functionality
        :param current_value:
        :return:
        """
        global variable_name_to_set
        grid_variable_name = str(self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, 1, self.variable_name_column_name, self.configuration_variables_data_grid_name))
        if variable_name_to_set in grid_variable_name:
            self.set_value_in_grid_column(self.configuration_variable_grid_div_id, self.current_value_column_name, current_value)

    def click_save_changes_button(self):
        """
        Implementing click save changes button functionality
        :return:
        """
        self.click_element(self.save_changes_button_locator)
        try:
            self.wait(10).until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            pass

    def filter_users_grid(self, column_name, filter_item):
        """
        Implementing filter users grid functionality
        :param column_name:
        :param filter_item:
        :return:
        """
        self.grid_filter_with_textbox(self.users_grid_div_id, column_name, filter_item)

    def select_account_security_tab(self):
        """
        Implementing select account security tab functionality
        :return:
        """
        self.click_element(self.account_security_tab_locator)

    def move_available_accounts_to_destination(self, account_list):
        """
        Implementing move available accounts to destination functionality
        :param account_list:
        :return:
        """
        self.move_available_items_to_destination(self.accounts_source_id, account_list, self.accounts_move_button_locator)

    def move_all_accounts_to_source(self):
        """
        Implementing move all accounts to source functionality
        :return:
        """
        self.click_element(self.move_all_account_to_source_button_locator)

    def get_users_grid_modified_date_column_value(self):
        """
        Implementing get users grid modified date column value functionality
        :return: modified_date column value
        """
        users_grid_row_count = self.get_grid_row_count(self.users_grid_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.users_grid_div_id, users_grid_row_count, self.modified_date_column_name)

    def get_user_profile_modified_value(self):
        """
        Implementing get user profile modified value functionality
        :return: modified value
        """
        return self.get_text_from_element(self.user_profile_modified_locator)

    def get_profile_management_grid_modified_date_column_value(self):
        """
        Implementing get profile management grid modified date column value functionality
        :return: modified_date column value
        """
        profiles_grid_row_count = self.get_grid_row_count(self.profiles_grid_count_span_locator, 1)
        return self.get_specific_column_value_from_grid(self.profile_grid_div_id, profiles_grid_row_count, self.modified_date_column_name, self.profiles_data_grid_name)

    def click_category_link(self):
        """
        Implementing click category link functionality
        :return:
        """
        self.click_element(self.category_locator)

    def get_categories_grid_modified_date_column_value(self):
        """
        Implementing get categories grid modified date column value functionality
        :return: modified_date column value
        """
        categories_grid_row_count = self.get_grid_row_count(self.categories_grid_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.categories_grid_div_id, categories_grid_row_count, self.modified_date_column_name, self.categories_grid_data_grid_name)

    def get_configuration_variables_grid_modified_date_column_value(self):
        """
        Implementing get configuration variables grid modified date column value functionality
        :return: modified_date column value
        """
        configuration_variables_grid_row_count = self.get_grid_row_count(self.configuration_variables_grid_count_span_locator, 1)
        return self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, configuration_variables_grid_row_count, self.modified_date_column_name, self.configuration_variables_data_grid_name)

    def click_field_alias_link(self):
        """
        Implementing click field alias link functionality
        :return:
        """
        self.click_element(self.field_alias_locator)

    def get_field_alias_grid_modified_date_column_value(self):
        """
        Implementing get field alias grid modified date column value functionality
        :return: modified_date column value
        """
        field_alias_grid_row_count = self.get_grid_row_count(self.field_alias_grid_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.field_alias_grid_div_id, field_alias_grid_row_count, self.modified_date_column_name, self.field_alias_data_grid_name)

    def click_ftp_site_management_link(self):
        """
        Implementing click ftp site management link functionality
        :return:
        """
        self.click_element(self.ftp_site_management_link_locator)

    def get_ftp_site_management_grid_last_modified_date_column_value(self):
        """
        Implementing get ftp site management grid last modified date column value functionality
        :return: last_modified_date column value
        """
        ftp_site_management_grid_row_count = self.get_grid_row_count(self.ftp_site_management_grid_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.ftp_site_management_grid_div_id, ftp_site_management_grid_row_count, self.last_modified_column_name, self.ftp_site_management_data_grid_name)

    def click_server_management_link(self):
        """
        Implementing click server management link functionality
        :return:
        """
        self.click_element(self.server_management_link_locator)

    def get_server_management_grid_last_modified_date_column_value(self):
        """
        Implementing get server management grid last modified date column value functionality
        :return: last_modified_date column value
        """
        server_management_grid_row_count = self.get_grid_row_count(self.server_management_count_span_locator, 1)
        return self.get_specific_column_value_from_grid(self.server_management_grid_div_id, server_management_grid_row_count, self.last_modified_column_name, self.server_management_data_grid_name)

    def set_scope(self, scope):
        """
        Implementing set scope functionality
        :param scope:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.scope_kendo_dropdown_locator, scope)

    def get_current_value_column_value(self):
        """
        Implementing get current value column value functionality
        :return: current_value
        """
        global current_value
        current_value = str(self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, 1, self.current_value_column_name, self.configuration_variables_data_grid_name))
        return current_value

    def get_call_type(self):
        """
        Implementing get call type functionality
        :return: call_type
        """
        global current_value, call_type
        if current_value == str(1):
            call_type = "VOICE"
        elif current_value == str(2):
            call_type = "SMS"
        else:
            call_type = "ISDN"
            
        return call_type

    def get_dial_digit_tab_name(self, module):
        """
        Implementing get dial digit tab name functionality
        :param module:
        :return: dial_digit
        """
        global current_value
        buy_page = BuyPage()
        if module.lower() == 'vendor':
            if current_value == str(2):
                buy_page.dial_digits_tab_name = "Mobile Network Code"
            elif current_value == str(3):
                buy_page.dial_digits_tab_name = "Dialed Digits/MCC-MNC"
            else:
                buy_page.dial_digits_tab_name = "Dialed Digits"
        else:
            buy_page.dial_digits_tab_name = "Dialed Digits"

        return buy_page.dial_digits_tab_name

    def click_configuration_variable_tab_save_changes_button(self):
        """
        Implementing click configuration variable tab save changes button functionality
        :return:
        """
        self.click_element(self.configuration_variable_tab_save_changes_button_locator, True)
        try:
            self.wait(10).until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            pass

    def set_value_in_current_value_column(self, column_value):
        """
        Implementing set value in current value column functionality
        :param column_value: 
        :return: 
        """
        global variable_name_to_set
        grid_variable_name = str(self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, 1, self.variable_name_column_name, self.configuration_variables_data_grid_name))
        if variable_name_to_set in grid_variable_name:
            current_value = self.get_current_value_column_value()
            if current_value != str(column_value):
                self.set_value_in_grid_column(self.configuration_variable_grid_div_id, self.current_value_column_name, column_value, True)
                self.click_element(self.configuration_variable_tab_header_locator)
                self.click_configuration_variable_tab_save_changes_button()

    def set_default_value_in_current_value_column(self):
        """
        Implementing set default value in current value column functionality
        :return:
        """
        global variable_name_to_set
        grid_variable_name = str(self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, 1, self.variable_name_column_name, self.configuration_variables_data_grid_name))
        if variable_name_to_set in grid_variable_name:
            default_value = self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, 1, self.default_value_column_name)
            self.set_value_in_current_value_column(default_value)

    def assign_level2_roles_to_profile(self, list_of_roles):
        """
        Implementing assign level2 roles to profile functionality
        :param list_of_roles:
        :return:
        """
        self.move_available_items_to_destination(self.unassigned_level2_roles_source_id, list_of_roles, move_button_locator=self.move_profile_single_item_button_locator)

    def reset_password(self, old_password, new_password):
        """
        Implementing reset password functionality
        :param old_password:
        :param new_password:
        :return:
        """
        try:
            self.wait().until(EC.visibility_of_element_located(self.reset_password_message_locator), 'reset password message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.set_value_into_input_field(self.old_password_input_field_locator, old_password)
            self.set_value_into_input_field(self.new_password_input_field_locator, new_password)
            self.set_value_into_input_field(self.reset_confirm_password_input_field_locator, new_password)
            self.click_element(self.reset_password_ok_button_locator)
            self.wait().until(EC.visibility_of_element_located(self.reset_password_success_message_locator), 'reset password success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_user_status_in_grid(self, status):
        """
        Implementing set user status in grid functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.users_grid_div_id, self.status_column_name, status)
        self.click_element(self.users_tab_header_locator)
        self.wait_for_ajax_spinner_load()

    def set_server_name(self, server_name):
        """
        Implementing set server name functionality
        :param server_name:
        :return:
        """
        self.set_value_into_input_field(self.server_name_textbox_locator, server_name)

    def click_server_management_grid_first_row_inline_action_button(self):
        """
        Implementing click server management grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.server_management_grid_div_id, None, self.server_management_grid_inline_action_column_number, True)

    def set_sql_instance(self, sql_instance_prefix, set_previous_value):
        """
        Implementing set sql instance functionality
        :param sql_instance_prefix:
        :param set_previous_value:
        :return:
        """
        global sql_instance
        if set_previous_value is False:
            sql_instance = sql_instance_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.sql_instance_textbox_locator, sql_instance)
        else:
            self.set_value_into_input_field(self.sql_instance_textbox_locator, sql_instance_prefix)

    def click_server_details_save_button(self):
        """
        Implementing click server details save button functionality
        :return:
        """
        self.click_element(self.server_details_save_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_server_management_grid_specific_column_value(self, column_name):
        """
        Implementing get server management grid specific column value functionality
        :param column_name:
        :return: specific column value
        """
        server_management_grid_row_count = self.get_grid_row_count(self.server_management_count_span_locator, 1)
        return self.get_specific_column_value_from_grid(self.server_management_grid_div_id, server_management_grid_row_count, column_name, self.server_management_data_grid_name)

    def filter_server_management_grid(self, column_name, filter_item):
        """
        Implementing filter server management grid functionality
        :param column_name:
        :param filter_item:
        :return:
        """
        self.grid_filter_with_textbox(self.server_management_grid_div_id, column_name, filter_item)

    def set_server_management_grid_settings(self, grid_settings):
        """
        Implementing set server management grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.server_management_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_server_management_grid(self, column_name):
        """
        Implementing get all rows of specific column from server management grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.server_management_grid_div_id, column_name, row_count=self.get_grid_row_count(self.server_management_count_span_locator, 1))
        return self.all_row_data

    def sort_server_management_grid_column(self, column_name, descending_order):
        """
        Implementing sort server management grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.server_management_grid_div_id, column_name, descending_order)

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

    def get_server_management_grid_column_names_by_order(self):
        """
        Implementing get server management grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.server_management_grid_div_id)
        return self.column_name_list

    def drag_server_management_grid_column(self, source_column, destination_column):
        """
        Implementing drag server management grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.server_management_grid_div_id, source_column, destination_column)

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

    def click_users_page_search_button(self):
        """
        Implementing click users page search button functionality
        :return:
        """
        self.click_element(self.user_page_search_button_locator, script_executor=True)

    def click_select_companies_radio_button(self):
        """
        Implementing click select companies radio button functionality
        :return:
        """
        self.click_element(self.select_companies_radio_button_locator)

    def move_available_companies_to_destination(self, company_list):
        """
        Implementing move available companies to destination functionality
        :param company_list:
        :return:
        """
        self.move_available_items_to_destination(self.companies_source_id, company_list, self.companies_move_button_locator)

    def click_select_accounts_radio_button(self):
        """
        Implementing click select accounts radio button functionality
        :return:
        """
        self.click_element(self.select_accounts_radio_button_locator)

    def is_l2_roles_section_displayed(self):
        """
        Implementing is l2 roles section displayed functionality
        :return: True/False
        """
        return self.is_element_present(self.l2_roles_section_div_locator)

    def is_role_available_under_l2_roles(self, role_name):
        """
        Implementing is role available under l2 roles functionality
        :param role_name:
        :return: Trues/False
        """
        role_locator = (By.XPATH, "//select[@id='from_lstSaasGranularRoles']/option[text()='%s']" % role_name)
        return self.is_element_present(role_locator)

    def set_profile_status_for_search(self, profile_status):
        """
        Implementing set profile status for search functionality
        :param profile_status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, profile_status)
        self.wait_for_ajax_spinner_load()

    def unassign_level2_roles_to_profile(self, list_of_roles):
        """
        Implementing unassign level2 roles to profile functionality
        :param list_of_roles:
        :return:
        """
        self.move_available_items_to_destination(self.assigned_level2_roles_source_id, list_of_roles, move_button_locator=self.move_left_profile_single_item_button_locator)

    def get_sql_instance(self):
        """
        Implementing get sql instance functionality
        :return: sql_instance
        """
        global sql_instance
        return sql_instance

    def compare_server_management_grid_first_row_value(self, column_name, value_to_compare):
        """
        Implementing compare server management grid first row value functionality
        :param column_name:
        :param value_to_compare:
        :return: True/False
        """
        actual_value = self.get_server_management_grid_specific_column_value(column_name)
        if str(value_to_compare) == str(actual_value):
            is_matched = True
        else:
            is_matched = False
        return is_matched

    def set_physical_server(self, physical_server_prefix, set_previous_value):
        """
        Implementing set physical server functionality
        :param physical_server_prefix:
        :param set_previous_value:
        :return:
        """
        global physical_server
        if set_previous_value is False:
            physical_server = physical_server_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.physical_server_textbox_locator, physical_server)
        else:
            if physical_server_prefix.strip() == '':
                physical_server_prefix = " "
            self.set_value_into_input_field(self.physical_server_textbox_locator, physical_server_prefix)

    def get_physical_server(self):
        """
        Implementing get physical server functionality
        :return: physical_server
        """
        global physical_server
        return physical_server

    def set_cluster_note(self, cluster_note):
        """
        Implementing set cluster note functionality
        :param cluster_note:
        :return:"""
        self.single_selection_from_kendo_dropdown(self.cluster_note_dropdown_locator, cluster_note)
        self.wait_for_ajax_spinner_load()

    def set_agent_user_name(self, agent_user_name):
        """
        Implementing set agent user name functionality
        :param agent_user_name:
        :return:
        """
        self.set_value_into_input_field(self.agent_user_name_textbox_locator, agent_user_name)

    def set_agent_password(self, agent_password):
        """
        Implementing set agent password functionality
        :param agent_password:
        :return:
        """
        self.set_value_into_input_field(self.agent_password_textbox_locator, agent_password)

    def set_server_status(self, server_status):
        """
        Implementing set server status functionality
        :param server_status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.server_status_dropdown_locator, server_status)
        self.wait_for_ajax_spinner_load()

    def set_server_in_use(self, server_in_use):
        """
        Implementing set server in use functionality
        :param server_in_use:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.server_in_use_dropdown_locator, server_in_use)
        self.wait_for_ajax_spinner_load()

    def set_ip_address(self, ip_address):
        """
        Implementing set ip address functionality
        :param ip_address:
        :return:
        """
        self.set_value_into_input_field(self.ip_address_textbox_locator, ip_address)

    def move_available_first_database_item_to_destination(self):
        """
        Implementing move available first database item to destination functionality
        :return:
        """
        item_selection_locator = (By.XPATH, "//select[contains(@id, 'from_lstDatabaseList')]/descendant::option[1]")
        self.click_element(item_selection_locator)
        self.click_element(self.move_available_database_single_item_button_locator)

    def set_security_profile_in_grid(self, security_profile):
        """
        Implementing set security profile in grid functionality
        :param security_profile:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.users_grid_div_id, self.profile_column_name, security_profile)
        self.click_element(self.users_tab_header_locator)
        self.wait_for_ajax_spinner_load()

    def get_password_version(self, created_user, server, database, user, password):
        """
        Implementing get password version from database functionality
        :param created_user:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: password version
        """
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
                SELECT u.PasswordVersion FROM SaaS_Core.dbo.tbUser AS u
                WHERE u.Username=?;
            """)
            cursor = Database.get_cursor(sql, [created_user])
            row = cursor.fetchone()
            cursor.close()
            return str(row.PasswordVersion).strip()
        except:
            raise
        finally:
            Database.close()

    def reset_password_from_home(self, old_password, new_password):
        """
        Implementing reset password from home functionality
        :param old_password:
        :param new_password:
        :return:
        """
        self.click_element(self.user_menu_locator, script_executor=True, hover=True)
        self.click_element(self.change_password_locator, script_executor=True)
        try:
            self.set_value_into_input_field(self.old_password_input_field_locator, old_password)
            self.set_value_into_input_field(self.new_password_input_field_locator, new_password)
            self.set_value_into_input_field(self.reset_confirm_password_input_field_locator, new_password)
            self.click_element(self.reset_password_ok_button_locator)
        except:
            raise

    def set_user_name_on_login_page(self, user_name):
        """
        Implementing set user name on login page functionality
        :param user_name:
        :return:
        """
        user_name_element = self.wait().until(EC.visibility_of_element_located(self.login_page_user_name_locator), 'user name locator not found before specified time out')
        user_name_element.clear()
        user_name_element.send_keys(user_name)

    def click_forgot_password_button(self):
        """
        Implementing click forgot password button functionality
        :return:
        """
        self.click_element(self.forgot_password_button_locator, True, True)

    def click_forgot_password_submit_button(self):
        """
        Implementing click forgot password submit button functionality
        :return:
        """
        self.click_element(self.forgot_password_submit_button_locator)

    def set_password_expiration_date(self, created_user, server, database, user, password):
        """
        Implementing set password expiration date from database functionality
        :param created_user:
        :param server:
        :param database:
        :param user:
        :param password:
        :return:
        """
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
                UPDATE SaaS_Core.dbo.tbUser SET PasswordExpirationDate = '2016-09-26 10:38:07.210'
                WHERE Username=?;
            """)
            cursor = Database.get_cursor(sql, [created_user])
            cursor.commit()
            cursor.close()
        except:
            raise
        finally:
            Database.close()

    def click_new_ftp_site_button(self):
        """
        Implementing click new ftp site button functionality
        :return:
        """
        self.click_element(self.new_ftp_site_button_locator)

    def set_value_in_site_name_column(self, site_name_prefix, set_value_to_edit, column_name, value_to_compare):
        """
        Implementing set value in site name column functionality
        :param site_name_prefix:
        :param set_value_to_edit:
        :param column_name:
        :param value_to_compare:
        :return:
        """
        global site_name_string
        site_name_string = site_name_prefix + self.random_string_generator(6)
        if set_value_to_edit is False:
            self.set_value_in_grid_column(self.ftp_site_management_div_id, self.site_name_column_name, site_name_string, script_executor=True)
            self.click_element(self.ftp_site_management_page_header_locator)
        else:
            actual_value = self.get_ftp_site_management_grid_specific_column_value(column_name)
            if str(value_to_compare) == str(actual_value):
                self.set_value_in_grid_column(self.ftp_site_management_div_id, self.site_name_column_name, site_name_string, script_executor=True)
                self.click_element(self.ftp_site_management_page_header_locator)


    def get_created_new_ftp_site_name(self):
        """
        Implementing get created new ftp site name functionality
        :return: created_new_ftp_site_name
        """
        global site_name_string
        return site_name_string

    def set_value_in_site_ip_address_column(self, site_ip_address_prefix):
        """
        Implementing set value in site ip address column functionality
        :param site_ip_address_prefix:
        :return:
        """
        value = site_ip_address_prefix + self.random_string_generator(6)
        self.set_value_in_grid_column(self.ftp_site_management_div_id, self.site_ip_address_column_name, value)
        self.click_element(self.ftp_site_management_page_header_locator)

    def set_value_in_site_user_name_column(self, site_user_name_prefix):
        """
        Implementing set value in site ip address column functionality
        :param site_user_name_prefix:
        :return:
        """
        value = site_user_name_prefix + self.random_string_generator(6)
        self.set_value_in_grid_column(self.ftp_site_management_div_id, self.site_user_name_column_name, value)
        self.click_element(self.ftp_site_management_page_header_locator)

    def set_value_in_site_password_column(self, site_password_prefix):
        """
        Implementing set value in site password column functionality
        :param site_password_prefix:
        :return:
        """
        value = site_password_prefix + self.random_string_generator(6)
        self.set_value_in_grid_column(self.ftp_site_management_div_id, self.site_password_column_name, value)
        self.click_element(self.ftp_site_management_page_header_locator)

    def set_value_in_site_directory_column(self, site_directory_prefix):
        """
        Implementing set value in site directory column functionality
        :param site_directory_prefix:
        :return:
        """
        value = site_directory_prefix + self.random_string_generator(6)
        self.set_value_in_grid_column(self.ftp_site_management_div_id, self.site_directory_column_name, value)
        self.click_element(self.ftp_site_management_page_header_locator)

    def set_value_in_site_proxy_session_column(self, site_proxy_session_prefix):
        """
        Implementing set value in site proxy session column functionality
        :param site_proxy_session_prefix:
        :return:
        """
        value = site_proxy_session_prefix + self.random_string_generator(6)
        self.set_value_in_grid_column(self.ftp_site_management_div_id, self.site_proxy_session_column_name, value)
        self.click_element(self.ftp_site_management_page_header_locator)

    def set_ftp_site_for_search(self, ftp_site_name):
        """
        Implementing set ftp site for search functionality
        :param ftp_site_name:
        :return:
        """
        self.set_value_into_input_field(self.ftp_site_textbox_locator, ftp_site_name)

    def get_ftp_site_management_grid_specific_column_value(self, column_name):
        """
        Implementing get ftp site management grid specific column value functionality
        :param column_name:
        :return: specific column value
        """
        ftp_site_management_grid_row_count = self.get_grid_row_count(self.ftp_site_management_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.ftp_site_management_div_id, ftp_site_management_grid_row_count, column_name)

    def compare_ftp_site_management_grid_first_row_value(self, column_name, value_to_compare):
        """
        Implementing compare ftp site management grid first row value functionality
        :param column_name:
        :param value_to_compare:
        :return: True/False
        """
        actual_value = self.get_ftp_site_management_grid_specific_column_value(column_name)
        if str(value_to_compare) == str(actual_value):
            is_matched = True
        else:
            is_matched = False
        return is_matched

    def click_ftp_site_management_grid_row_check_box(self, site_name):
        """
        Implementing click ftp site management grid row checkbox functionality
        :param site_name:
        :return:
        """
        self.select_grid_row_checkbox(self.ftp_site_management_div_id, site_name, self.ftp_site_management_grid_inline_action_column_number)

    def click_ftp_site_delete_button(self):
        """
        Implementing click ftp site delete button functionality
        :return:
        """
        self.click_element(self.ftp_site_delete_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.delete_confirmation_message_locator), 'delete confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.presence_of_element_located(self.delete_success_message_locator), 'delete success popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_ftp_site_management_grid_settings(self, grid_settings):
        """
        Implementing set ftp site management grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.ftp_site_management_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_ftp_site_management_grid(self, column_name):
        """
        Implementing get all rows of specific column from ftp site management grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.ftp_site_management_div_id, column_name, row_count=self.get_grid_row_count(self.ftp_site_management_count_span_locator, 2))
        return self.all_row_data

    def sort_ftp_site_management_grid_column(self, column_name, descending_order):
        """
        Implementing sort ftp site management grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.ftp_site_management_div_id, column_name, descending_order)

    def get_ftp_site_management_grid_column_names_by_order(self):
        """
        Implementing get ftp site management grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.ftp_site_management_div_id)
        return self.column_name_list

    def drag_ftp_site_management_grid_column(self, source_column, destination_column):
        """
        Implementing drag ftp site management grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.ftp_site_management_div_id, source_column, destination_column)

    def set_field_alias_scope(self, scope):
        """
        Implementing set field alias scope functionality
        :param scope:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.scope_kendo_dropdown_locator, scope)

    def set_value_in_field_alias_column(self, field_alias_prefix, set_value_for_edit):
        """
        Implementing set value in site name column functionality
        :param field_alias_prefix:
        :param set_value_for_edit:
        :return:
        """
        global field_alias_string
        if set_value_for_edit is False:
            field_alias_string = field_alias_prefix + self.random_string_generator(6)
            self.set_value_in_grid_column(self.field_alias_grid_div_id, self.field_alias_column_name, field_alias_string, script_executor=True)
            self.click_element(self.field_alias_page_header_locator)
        else:
            field_alias_string = field_alias_prefix + ""
            self.set_value_in_grid_column(self.field_alias_grid_div_id, self.field_alias_column_name, field_alias_string, script_executor=True)
            self.click_element(self.field_alias_page_header_locator)

    def get_field_alias_name(self):
        """
        Implementing get field alias name functionality
        :return: field_alias_name
        """
        global field_alias_string
        return field_alias_string

    def get_field_alias_grid_specific_column_value(self, column_name):
        """
        Implementing get field alias grid specific column value functionality
        :param column_name:
        :return: specific column value
        """
        field_alias_grid_row_count = self.get_grid_row_count(self.field_alias_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.field_alias_grid_div_id, field_alias_grid_row_count, column_name)

    def compare_field_alias_grid_first_row_value(self, column_name, value_to_compare):
        """
        Implementing compare field alias grid first row value functionality
        :param column_name:
        :param value_to_compare:
        :return: True/False
        """
        actual_value = self.get_field_alias_grid_specific_column_value(column_name)
        if str(value_to_compare) == str(actual_value):
            is_matched = True
        else:
            is_matched = False
        return is_matched

    def set_field_alias_grid_settings(self, grid_settings):
        """
        Implementing set field alias grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.field_alias_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_field_alias_grid(self, column_name):
        """
        Implementing get all rows of specific column from field alias grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.field_alias_grid_div_id, column_name, row_count=self.get_grid_row_count(self.field_alias_count_span_locator, 2))
        return self.all_row_data

    def sort_field_alias_grid_column(self, column_name, descending_order):
        """
        Implementing sort field alias grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.field_alias_grid_div_id, column_name, descending_order)

    def get_field_alias_grid_column_names_by_order(self):
        """
        Implementing get field alias grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.field_alias_grid_div_id)
        return self.column_name_list

    def drag_field_alias_grid_column(self, source_column, destination_column):
        """
        Implementing drag field alias grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.field_alias_grid_div_id, source_column, destination_column)

    def click_new_category_button_for_system_admin(self):
        """
        Implementing click new category button for system admin functionality
        :return:
        """
        self.click_element(self.new_category_button_locator)

    def set_new_category_application(self, application):
        """
        Implementing set new category application functionality
        :param application:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_category_application_kendo_dropdown_locator, application)

    def set_new_category_object(self, object):
        """
        Implementing set new category object functionality
        :param object:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_category_object_kendo_dropdown_locator, object)

    def set_new_category_type(self, category_type):
        """
        Implementing set new category type functionality
        :param category_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_category_type_kendo_dropdown_locator, category_type)

    def set_new_category_for_system_admin(self, new_category_prefix):
        """
        Implementing set new category for system admin functionality
        :param new_category_prefix:
        :return:
        """
        global new_category_string
        new_category_string = new_category_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.new_category_textbox_locator, new_category_string)

    def get_created_new_category_from_system_admin(self):
        """
        Implementing get created new category from system admin functionality
        :return: new category
        """
        global new_category_string
        return new_category_string

    def set_new_category_abbreviation_for_system_admin(self, abbreviation_prefix):
        """
        Implementing set new category abbreviation for system admin functionality
        :param abbreviation_prefix:
        :return:
        """
        abbreviation_string = abbreviation_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.new_category_abbreviation_textbox_locator, abbreviation_string)

    def set_new_category_level(self, level_name):
        """
        Implementing set new category level functionality
        :param level_name:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_category_level_kendo_dropdown_locator, level_name)

    def click_new_category_save_button(self):
        """
        Implementing click new category save button functionality
        :return:
        """
        self.click_element(self.new_category_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def filter_categories_grid(self, column_name, filter_item):
        """
        Implementing filter categories grid functionality
        :param column_name:
        :param filter_item:
        :return:
        """
        self.grid_filter_with_textbox(self.categories_grid_div_id, column_name, filter_item)

    def get_categories_grid_specific_column_value(self, column_name):
        """
        Implementing get categories grid specific column value functionality
        :param column_name:
        :return: specific column value
        """
        categories_grid_row_count = self.get_grid_row_count(self.categories_grid_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.categories_grid_div_id, categories_grid_row_count, column_name)

    def compare_categories_grid_first_row_value(self, column_name, value_to_compare):
        """
        Implementing compare categories grid first row value functionality
        :param column_name:
        :param value_to_compare:
        :return: True/False
        """
        actual_value = self.get_categories_grid_specific_column_value(column_name)
        if str(value_to_compare) == str(actual_value):
            is_matched = True
        else:
            is_matched = False
        return is_matched

    def set_value_in_category_column(self, category_prefix, set_value_to_edit, column_name, value_to_compare):
        """
        Implementing set value in category column functionality
        :param category_prefix:
        :param set_value_to_edit:
        :param column_name:
        :param value_to_compare:
        :return:
        """
        global new_category_string
        new_category_string = category_prefix + self.random_string_generator(6)
        if set_value_to_edit is False:
            self.set_value_in_grid_column(self.categories_grid_div_id, self.category_column_name, new_category_string, script_executor=True)
            self.click_element(self.new_category_page_header_locator)
        else:
            actual_value = self.get_categories_grid_specific_column_value(column_name)
            if str(value_to_compare) == str(actual_value):
                self.set_value_in_grid_column(self.categories_grid_div_id, self.category_column_name, new_category_string, script_executor=True)
                self.click_element(self.new_category_page_header_locator)

    def click_categories_grid_row_check_box(self, category_name):
        """
        Implementing click categories grid row checkbox functionality
        :param category_name:
        :return:
        """
        self.select_grid_row_checkbox(self.categories_grid_div_id, category_name, self.categories_grid_checkbox_action_column_number)

    def click_categories_delete_button(self):
        """
        Implementing click categories delete button functionality
        :return:
        """
        self.click_element(self.categories_delete_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.categories_deleted_successfully_message_locator), 'categories deleted successfully popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_categories_grid_settings(self, grid_settings):
        """
        Implementing set categories grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.categories_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_categories_grid(self, column_name):
        """
        Implementing get all rows of specific column from categories grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.categories_grid_div_id, column_name, row_count=self.get_grid_row_count(self.categories_grid_count_span_locator, 2))
        return self.all_row_data

    def sort_categories_grid_column(self, column_name, descending_order):
        """
        Implementing sort categories grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.categories_grid_div_id, column_name, descending_order)

    def get_categories_grid_column_names_by_order(self):
        """
        Implementing get categories grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.categories_grid_div_id)
        return self.column_name_list

    def drag_categories_grid_column(self, source_column, destination_column):
        """
        Implementing drag categories grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.categories_grid_div_id, source_column, destination_column)

    def get_configuration_variables_grid_specific_column_value(self, column_name):
        """
        Implementing get configuration variables grid specific column value functionality
        :param column_name:
        :return: specific column value
        """
        configuration_variables_grid_row_count = self.get_grid_row_count(self.configuration_variables_grid_count_span_locator, 1)
        return self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, configuration_variables_grid_row_count, column_name)

    def compare_configuration_variables_grid_first_row_value(self, column_name, value_to_compare):
        """
        Implementing compare configuration variables grid first row value functionality
        :param column_name:
        :param value_to_compare:
        :return: True/False
        """
        actual_value = self.get_configuration_variables_grid_specific_column_value(column_name)
        if str(value_to_compare) == str(actual_value):
            is_matched = True
        else:
            is_matched = False
        return is_matched

    def click_export_to_excel_button(self):
        """
        Implementing click export to excel button functionality
        :return:
        """
        self.click_element(self.export_to_excel_button_locator)

    def filter_configuration_variables_grid(self, column_name, filter_item):
        """
        Implementing filter configuration variables grid functionality
        :param column_name:
        :param filter_item:
        :return:
        """
        self.grid_filter_with_textbox(self.configuration_variable_grid_div_id, column_name, filter_item)

    def set_configuration_variables_grid_settings(self, grid_settings):
        """
        Implementing set configuration variables grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.configuration_variable_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_configuration_variables_grid(self, column_name):
        """
        Implementing get all rows of specific column from configuration variables grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.configuration_variable_grid_div_id, column_name, row_count=self.get_grid_row_count(self.configuration_variables_grid_count_span_locator, 1))
        return self.all_row_data

    def get_configuration_variables_grid_column_names_by_order(self):
        """
        Implementing get configuration variables grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.configuration_variable_grid_div_id)
        return self.column_name_list

    def drag_configuration_variables_grid_column(self, source_column, destination_column):
        """
        Implementing drag configuration variables grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.configuration_variable_grid_div_id, source_column, destination_column)

    def compare_configuration_variables_grid_row_count(self, value_to_compare):
        """
        Implementing compare configuration variables grid row count functionality
        :param value_to_compare:
        :return: True/False
        """
        actual_value = self.get_grid_row_count(self.configuration_variables_grid_count_span_locator, 1)
        if str(value_to_compare) == str(actual_value):
            is_matched = True
        else:
            is_matched = False
        return is_matched

    def sort_configuration_variables_grid_column(self, column_name, descending_order):
        """
        Implementing sort configuration variables grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.configuration_variable_grid_div_id, column_name, descending_order)

    def get_lastactivitydate(self, created_user, server, database, user, password):
        """
        Implementing get lastactivitydate from database functionality
        :param created_user:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: password version
        """
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
                SELECT u.LastActivityDate FROM iXAdmin_Main.dbo.tbUser AS u
                WHERE u.Username=?;
            """)
            cursor = Database.get_cursor(sql, [created_user])
            row = cursor.fetchone()
            cursor.close()
            return str(row.LastActivityDate).strip()
        except:
            raise
        finally:
            Database.close()

    def get_name_of_the_user(self):
        """
        Implementing get name of the user functionality
        :return: name_of_the_user
        """
        self.grid_row_dictionary.clear()
        self.grid_row_dictionary = {"Name": ""}
        users_grid_row_details = self.get_grid_row_details(self.users_grid_div_id, self.grid_row_dictionary)
        return users_grid_row_details["Name"]

    def get_user_first_name(self):
        """
        Implementing get user first name functionality
        :return: user first name
        """
        global first_name
        return first_name

    def get_user_last_name(self):
        """
        Implementing get user last name functionality
        :return: user last name
        """
        global last_name
        return last_name

    def create_config_variable_preset_dictionary(self):
        """
        Implementing create config variable preset list functionality
        :return:
        """
        global preset_value_dictionary
        global preset_modified_by_dictionary
        preset_value_dictionary = {}
        preset_modified_by_dictionary = {}

    def store_preset_config_variable_current_value(self, variable_name):
        """
        Implementing store preset config variable current value functionality
        :param variable_name:
        :return: current_value
        """
        global preset_value_dictionary
        preset_value_dictionary[variable_name] = str(self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, 1, self.current_value_column_name, self.configuration_variables_data_grid_name))
        if preset_value_dictionary[variable_name] == "None" or preset_value_dictionary[variable_name] == "The grid is empty" or preset_value_dictionary[variable_name] == "":
            preset_value_dictionary[variable_name] = "-1"
        return preset_value_dictionary[variable_name]

    def store_preset_config_variable_modified_by(self, variable_name):
        """
        Implementing store preset config variable modified by functionality
        :param variable_name:
        :return: modified_by
        """
        global preset_modified_by_dictionary
        preset_modified_by_dictionary[variable_name] = str(self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, 1, self.modified_by_column_name, self.configuration_variables_data_grid_name))
        return preset_modified_by_dictionary[variable_name]

    def get_preset_config_variable_current_value(self, variable_name):
        """
        Implementing get preset config variable current value functionality
        :param variable_name:
        :return: current_value
        """
        global preset_value_dictionary
        if preset_value_dictionary[variable_name] == "None" or preset_value_dictionary[variable_name] is None:
            preset_value_dictionary[variable_name] = "-1"
        return preset_value_dictionary[variable_name]

    def click_first_row_info_icon(self):
        """
        Implementing click first row info icon functionality
        :return:
        """
        self.click_element(self.first_row_info_icon_locator)

    def verify_system_note_for_cplenablecurrencypreview(self):
        """
        Implementing verify system note for CPLEnableCurrencyPreview functionality
        :return:
        """
        return self.is_element_present(self.cplenablecurrencypreview_system_note_locator)

    def unassign_assigned_roles_to_unassigned_role(self, list_of_roles):
        """
        Implementing unassign assigned roles to unassigned role functionality
        :param list_of_roles:
        :return:
        """
        self.move_available_items_to_destination(self.assigned_roles_source_id, list_of_roles, move_button_locator=self.move_left_unassigned_single_item_button_locator)

    def update_user_status_id(self, server, database, user, password, user_name, status_id):
        """
        Implementing update user status id functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return:
        """
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
                UPDATE iXAdmin_Main.dbo.tbuser SET UserStatusID=?
                WHERE Username=?;
            """)
            cursor = Database.get_cursor(sql, [status_id, user_name])
            cursor.commit()
            cursor.close()
        except:
            raise
        finally:
            Database.close()

    def get_label_wise_text_from_server_setting_management_page(self, label_name, is_dropdown):
        """
        Implementing get label wise text from server setting management page functionality
        :param label_name:
        :param is_dropdown:
        :return: label text
        """
        if is_dropdown is False:
            labels_text_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::input" % label_name)
            labels_text_element = self.wait().until(EC.presence_of_element_located(labels_text_locator), 'labels text locator not found before specified time out')
            label_text = str(labels_text_element.get_attribute("value"))
        else:
            labels_text_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::span[@class='k-input']" % label_name)
            labels_text_element = self.wait().until(EC.presence_of_element_located(labels_text_locator), 'labels text locator not found before specified time out')
            label_text = labels_text_element.text
        return label_text

    def get_available_database_first_item(self):
        """
        Implementing get available database first item functionality
        :return: label text
        """
        available_database_first_item_locator = (By.XPATH, "//select[contains(@id, 'from_lstDatabaseList_')]/../descendant::option[1]")
        available_database_first_item_element = self.wait().until(EC.presence_of_element_located(available_database_first_item_locator), 'available database first item locator not found before specified time out')
        available_database_first_item = str(available_database_first_item_element.text)
        return available_database_first_item

    def unassign_assigned_database(self, item_name_list):
        """
        Implementing unassign assigned roles to unassigned role functionality
        :param item_name_list:
        :return:
        """
        for item in item_name_list:
            item_selection_locator = (By.XPATH, "//select[contains(@id, 'to_lstDatabaseList_')]/descendant::option[text()='%s']" % item)
            self.click_element(item_selection_locator)
            move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.move_left_unassigned_database_single_item_button_locator), 'move single item button locator not found before specified time out')
            move_single_item_button_element.click()
            self.wait_for_ajax_spinner_load()

    def click_profile_grid_row_inline_action_button(self, profile_name):
        """
        Implementing click profile grid row inline action button functionality
        :param profile_name:
        :return:
        """
        self.click_inline_action_button(self.profile_grid_div_id, profile_name, self.profile_grid_inline_action_column_number)

    def click_users_grid_row_inline_action_button(self, user_name):
        """
        Implementing click users grid first row inline action button functionality
        :param user_name:
        :return:
        """
        self.click_inline_action_button(self.users_grid_div_id, user_name, self.users_grid_inline_action_column_number)

    def get_default_value_column_value(self):
        """
        Implementing get default value column value functionality
        :return: default_value
        """
        global variable_name_to_set
        default_value = ""
        grid_variable_name = str(self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, 1, self.variable_name_column_name, self.configuration_variables_data_grid_name))
        if variable_name_to_set in grid_variable_name:
            default_value = self.get_specific_column_value_from_grid(self.configuration_variable_grid_div_id, 1, self.default_value_column_name)
        return default_value

    def click_all_accounts_radio_button(self):
        """
        Implementing click all accounts radio button functionality
        :return:
        """
        self.click_element(self.all_accounts_radio_button_locator)

    def click_all_companies_radio_button(self):
        """
        Implementing click all companies radio button functionality
        :return:
        """
        self.click_element(self.all_companies_radio_button_locator)

    def verify_system_variable_description(self, description):
        """
        Implementing verify system variable description functionality
        :param description:
        :return: True/False
        """
        system_variable_description_locator = (By.XPATH, "//div[@class='tooltipContent']/descendant::div[contains(text(), '%s')]" % description)
        return self.is_element_present(system_variable_description_locator)

    def get_extract_delivery_link_path(self):
        """
        Implementing get extract delivery link path functionality
        :return: extract_path
        """
        extract_path = self.get_current_value_column_value()
        extract_path = str(extract_path).replace("\\", "/")
        return extract_path

    def set_security_profile_grid_settings(self, grid_settings):
        """
        Implementing set security profile grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.profile_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_security_profile_grid(self, column_name):
        """
        Implementing get all rows of specific column from security profile grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.profile_grid_div_id, column_name, row_count=self.get_grid_row_count(self.profiles_grid_count_span_locator, 1))
        return self.all_row_data

    def sort_security_profile_grid_column(self, column_name, descending_order):
        """
        Implementing sort security profile grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.profile_grid_div_id, column_name, descending_order)

    def get_security_profile_grid_specific_column_value(self, column_name):
        """
        Implementing get security profile grid specific column value functionality
        :param column_name:
        :return: column_value
        """
        return self.get_specific_column_value_from_grid(self.profile_grid_div_id, self.get_grid_row_count(self.profiles_grid_count_span_locator, 1), column_name)

    def get_security_profile_grid_column_names_by_order(self):
        """
        Implementing get security profile grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.profile_grid_div_id)
        return self.column_name_list

    def drag_security_profile_grid_column(self, source_column, destination_column):
        """
        Implementing drag security profile grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.profile_grid_div_id, source_column, destination_column)

    def set_users_grid_settings(self, grid_settings):
        """
        Implementing set users grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.users_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_users_grid(self, column_name):
        """
        Implementing get all rows of specific column from users grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.users_grid_div_id, column_name, row_count=self.get_grid_row_count(self.users_grid_count_span_locator, 2))
        return self.all_row_data

    def sort_users_grid_column(self, column_name, descending_order):
        """
        Implementing sort users grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.users_grid_div_id, column_name, descending_order)

    def get_users_grid_specific_column_value(self, column_name):
        """
        Implementing get users grid specific column value functionality
        :param column_name:
        :return: column_value
        """
        return self.get_specific_column_value_from_grid(self.users_grid_div_id, self.get_grid_row_count(self.users_grid_count_span_locator, 2), column_name)

    def get_users_grid_column_names_by_order(self):
        """
        Implementing get users grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.users_grid_div_id)
        return self.column_name_list

    def drag_users_grid_column(self, source_column, destination_column):
        """
        Implementing drag users grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.users_grid_div_id, source_column, destination_column)

    def set_application(self, application):
        """
        Implementing set application functionality
        :param application:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.application_dropdown_locator, application)

    def set_field_alias_column_value(self, column_value, column_name):
        """
        Implementing set field alias column value functionality
        :param column_value:
        :param column_name:
        :return:
        """
        if column_name == "":
            self.set_value_in_grid_column(self.field_alias_grid_div_id, self.field_alias_column_name, column_value, script_executor=True)
        else:
            column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.field_alias_grid_div_id, self.field_alias_column_name))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::span[contains(text(), '%s')]/../../descendant::td[%s]/span[@class='k-grid-cell']" % (self.field_alias_grid_div_id, column_name, str(column_index)))
            first_row_column_element = self.wait().until(EC.element_to_be_clickable(first_row_column_locator), 'first row column locator not found before specified time out')
            self.script_executor_click(first_row_column_element)
            self.wait_for_ajax_spinner_load()
            first_row_column = client.Dispatch("WScript.Shell")
            first_row_column.SendKeys("^a")
            first_row_column.SendKeys("{DEL}")
            first_row_column.SendKeys(str(column_value))
        self.click_element(self.field_alias_page_header_locator)

    def is_field_alias_grid_field_name_present(self, field_name):
        """
        Implementing is field alias grid field name present functionality
        :param field_name:
        :return: True/False
        """
        is_present = False
        field_alias_grid_row_count = self.get_grid_row_count(self.field_alias_count_span_locator, 2)
        all_row_data = self.get_all_rows_of_specific_column_from_grid(self.field_alias_grid_div_id, self.field_name_column_name, field_alias_grid_row_count)
        if field_name in all_row_data:
            is_present = True
        return is_present

    def assign_all_level2_roles_to_profile(self):
        """
        Implementing assign all level2 roles to profile functionality
        :return:
        """
        self.click_element(self.move_profile_all_item_button_locator)

    def is_l2_roles_section_not_displayed(self):
        """
        Implementing is l2 roles section not displayed functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(10).until(EC.presence_of_element_located(self.l2_roles_section_div_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def unassign_all_level2_roles_to_profile(self):
        """
        Implementing unassign all level2 roles to profile functionality
        :return:
        """
        self.click_element(self.move_profile_all_item_unassign_button_locator)

    def assign_all_level1_roles_to_profile(self):
        """
        Implementing assign all level1 roles to profile functionality
        :return:
        """
        self.click_element(self.move_profile_all_level1_item_button_locator)

    def verify_system_note_for_cplpreviewdisplaywarnings(self):
        """
        Implementing verify system note for CPLPreviewDisplayWarnings functionality
        :return:
        """
        return self.is_element_present(self.cplpreviewdisplaywarnings_system_note_locator)

    def set_user_status_for_search(self, user_status):
        """
        Implementing set user status for search functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, user_status)
        self.wait_for_ajax_spinner_load()

    def set_name_for_search(self, first_name, last_name):
        """
        Implementing set name for search functionality
        :param first_name,last_name:
        :return:
        """
        full_name = first_name + " " + last_name
        self.set_value_into_input_field(self.name_textbox_locator, full_name)
