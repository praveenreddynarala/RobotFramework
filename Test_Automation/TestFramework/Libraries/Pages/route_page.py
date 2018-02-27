"""Implementing Route screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from random import randint
import string
import win32com.client as client


class RoutePage(BasePage):
    """
    Contains Route UI page locators
    Switch to route function
    Get route page title function
    Is commercial dashboard tab present function
    Is commercial routing tab present function
    Is technical routing tab present function
    Is manage reasons present function
    Is transition automation present function
    Select commercial routing tab function
    Get commercial routing tab header function
    Select technical routing tab function
    Get technical routing tab header function
    Click benchmarks button function
    Set new benchmark values function
    Set default benchmark values function
    Click route class benchmarks save changes button function
    Click create new suggestion button function
    Is new suggestion window loaded properly function
    Click commercial routing grid search button function
    Select commercial routing grid first row checkbox function
    Click recalc rgs button function
    Click commercial routing grid cancel changes button function
    Select max route commercial tab function
    Filter max route commercial grid function
    Set value in max route commercial grid column function
    Click max route commercial save changes button function
    Select max trunks per switch tab function
    Set max trunks per switch grid new benchmark values function
    Compare max trunks per switch grid modified benchmark values function
    Set max trunks per switch grid default benchmark values function
    Click max trunks per switch save changes button function
    Click exclusion button function
    Click new exclusion button function
    Set new exclusion reason function
    Set new exclusion note function
    Set new exclusion account function
    Set new exclusion switch function
    Set new exclusion trunk function
    Click trunk section go button function
    Move available trunks to destination function
    Move available route classes to destination function
    Set new exclusion country function
    Click products section go button function
    Move available products to destination function
    Click review exclusions button function
    Set reason for search function
    Set switch for search function
    Set account for search function
    Set trunk for search function
    Set country for search function
    Click exclusions grid search button function
    Select exclusions grid first row checkbox function
    Click exclusions grid bulk edit button function
    Set bulk edit begin date function
    Set bulk edit note function
    Click bulk edit undo reset button function
    Is input field reset function
    Is bulk edit input field reset function
    Click bulk edit cancel button function
    Click bulk edit submit button function
    Click exclusions grid save changes button function
    Click exclusions grid delete button function
    Select qos tab function
    Click qos save changes button function
    Set value in qos grid column function
    Click inclusion button function
    Click new inclusion button function
    Set inclusion level function
    Set inclusion begin date function
    Set end date function
    Set new inclusion reason function
    Set note function
    Set new inclusion account function
    Set new inclusion trunk function
    Click trunk go button function
    Move available trunks to include function
    Move available route classes to include function
    Set new inclusion country function
    Move available products to include function
    Click product go button function
    Click review inclusions button function
    Click save and close button function
    Click commercial routing grid first row inline action button function
    Get commercial routing grid first row routing product function
    Compare selected routing product function
    Is benchmark management page loaded properly function
    Is exclusion management page loaded properly function
    Is overrides management page loaded properly function
    Is emergency routing page loaded properly function
    Select commercial routing grid inline action item function
    Click override button function
    Click new override button function
    Set effective date function
    Set inclusion type function
    Set reason function
    Click inclusion search button function
    Get inclusions grid row details function
    Select inclusions grid row checkbox function
    Click inclusion bulk edit button function
    Set override route class for search function
    Set override function
    Set switch function
    Click override search button function
    Set new override switch function
    Set new override route class function
    Set new override account function
    Set new override country function
    Set new override trunk function
    Set new override routing product function
    Set new override routing percentage function
    Set rank function
    Set new override reason function
    Set begin date function
    Set end date function
    Set new override note function
    Click review overrides button function
    Click override save and close button function
    Click overrides grid inline action button function
    Select route module grid inline item function
    Confirm release overrides pop ups function
    Select overrides grid row checkbox function
    Click override bulk edit button function
    Set note function
    Set bulk edit reason function
    Click inclusion save changes button function
    Click inclusion delete button function
    Set bulk edit percentage function
    Click bulk edit submit button function
    Click override save changes button function
    Get overrides grid row details function
    Filter overrides grid function
    Click technical routing grid search button function
    Click technical routing grid first row inline action button function
    Is fast track exclusion window loaded properly function
    Close fast track exclusion window function
    Select technical routing grid first row checkbox function
    Set routing status for search function
    Click technical routing grid recalc rgs button function
    Click commercial routing grid first row routing product link function
    Select benchmarks tab function
    Set new benchmark values in route guide tab function
    Set default benchmark values in route guide tab function
    Select notes tab function
    Click add note button function
    Set note in notes grid function
    Click add note save button function
    Click add note delete button function
    Click qos import button function
    Click import browse button function
    Click upload button function
    Click upload cancel button function
    Click qos export button function
    Click move to excluded button function
    Click move to available button function
    Click available trunks grid move to suggested button function
    Click excluded trunks grid move to suggested button function
    Click save and recalculate button function
    Select excluded trunks radio button function
    Select suggested trunks grid first row checkbox function
    Select available trunks grid first row checkbox function
    Select excluded trunks grid first row checkbox function
    Get suggested trunks grid first row details function
    Get excluded trunks grid first row details function
    Get available trunks grid first row details function
    Click technical routing exclusion button function
    Set new exclusion level function
    Set exclusion begin date function
    Set exclusion end date function
    Set new exclusion category function
    Set new exclusion group function
    Set new exclusion service function
    Set new exclusion routing product function
    Set exclusion type function
    Get exclusions grid row details function
    Click exclusions grid inline action button function
    Select delete exclusion inline item function
    Select exclusions grid row checkbox function
    Click technical routing override button function
    Select emergency rerouting available trunks grid first row checkbox function
    Click to rank button function
    Move available trunk into rank grid function
    Set route percentage values function
    Get ranked trunks function
    Click emergency routing save button function
    Verify priority status changed function
    Click commercial routing grid first row routing product link function
    Verify suggested trunks function
    Set priority for search function
    Get selected route class function
    Get selected routing product function
    Clear multiselect kendo dropdown function
    Set route class for search function
    Set routing product for search function
    Sort column in ascending order function
    Click technical routing benchmarks button function
    Is commercial routing page loaded properly function
    Compare qos grid row details with excel data function
    Click technical routing grid first row routing product link function
    Filter suggested trunks grid account column function
    Click fast track exclusion button function
    Set fast track exclusion begin date function
    Set fast track exclusion end date function
    Set fast track exclusion note function
    Set fast track exclusion account function
    Set fast track exclusion country function
    Click products go button function
    Click fast track exclusion save button function
    Click trunks go button function
    Click transition automation link function
    Click new transition button function
    Set new automated transition route class function
    Set new automated transition country type function
    Set new automated transition country function
    Set new automated transition routing product function
    Set new automated transition value function
    Select automated radio button function
    Set new automated transition resolution order function
    Click save button function
    Set country type for search function
    Set transition for search function
    Set transition country for search function
    Set automated choice for search function
    Click transition automation search button function
    Get transition automation grid row details function
    Select transition automation grid first row checkbox function
    Click transition automation delete button function
    Click transition automation bulk edit button function
    Set bulk edit automated value function
    Set bulk edit resolution order function
    Click transition automation save changes button function
    Click transition automation first row inline action button function
    Select transition automation delete inline action item function
    Set inclusion country for search function
    Set inclusion routing product for search function
    Set new suggestion route class value function
    Set new suggestion routing product value function
    Click create route suggestion button function
    Select commercial dashboard tab function
    Click manage reason link function
    Click add new reason button function
    Set value in reason column function
    Get created reason function
    Set value in scope column function
    Click manage reasons save button function
    Set route class for benchmark management function
    Click technical routing benchmarks search button function
    Set routing product for benchmark management function
    Click route guide adjuster button function
    Click view trgs button function
    Click adjust button function
    Get all rows value of trunks column from route guide adjuster grid function
    Compare rgs function
    Is trg adjuster tab present function
    Click route class benchmarks margin save changes button function
    Click route guide benchmarks save changes button function
    Click customer specific routing button function
    Set destination category no 1 function
    Set destination category no 2 function
    Click customer specific routing search button function
    Set commercial routing grid settings function
    Get commercial routing grid column names by order function
    Drag commercial routing grid column function
    Compare grid column position after altering function
    Click carrier test management button function
    Click new test button function
    Set carrier new test account function
    Set carrier new test trunk function
    Set carrier new test routing product function
    Set carrier new test route class function
    Click create test button function
    Is specific selection column present function
    Is country column present in crgm grid function
    Is country column present in overrides management grid function
    Is country column present in inclusion management grid function
    Is country column present in exclusion management grid function
    Set first routing product for search function
    Clear routing product dropdown selection function
    Click new csr button function
    Set csr product function
    Set csr customer function
    Select to rank grid first row checkbox function
    Click csr to rank button function
    Set value in rcn to rank grid column function
    Click review route guides button function
    Click csr save and create button function
    Click csrm grid first row routing product link function
    Is specific grid present in route guide page function
    Is suggested trunk grid present function
    Is available worksheets grid present function
    Is excluded trunks grid present function
    Set override in grid function
    Compare suggested trunks grid begin date function
    Compare suggested trunks grid end date function
    Click suggested trunks cancel changes button function
    Is available worksheets grid not present function
    Get suggested trunks grid first row data function
    Is csrm grid column present function
    Is route guide grid column present function
    Set route guide grid override function
    Set route guide grid end date function
    Get route guide grid end date function
    Is specific column present in csrrg grid function
    Click csr benchmarks button function
    Is minimum mos column present in csr benchmark grid function
    Click csr benchmark grid save changes button function
    Select csr benchmark grid multiple rows function
    Click csr benchmark bulk edit button function
    Set minimum mos bulk edit value function
    Is updated value persist in the csr benchmark grid after bulk edit function
    Filter customer specific routing grid alerts column function
    Is specific column present in csrm grid function
    Select csrm grid first row checkbox function
    Is new customer route guide pop up present function
    Is benchmark management margin grid empty function
    Click first row of benchmark management margin first grid function
    Is ajax spinner load present function
    Click first row of benchmark management max route commercial first grid function
    Select bulk test call tab function
    Get message delivered column value from bulk test call grid function
    Set message delivered in grid function
    Is ajax spinner load not present function
    Set message delivered in grid with opposite of selected value function
    Click bulk test call save changes button function
    """
    # Start: Route page locators
    default_tab_header_locator = (By.XPATH, "//div[@id='RouteTabStrip-1']/descendant::h3")
    commercial_dashboard_tab_locator = (By.XPATH, "//div[@id='RouteTabStrip']/descendant::li[@aria-controls='RouteTabStrip-1']/descendant::a")
    commercial_routing_tab_locator = (By.XPATH, "//div[@id='RouteTabStrip']/descendant::li[@aria-controls='RouteTabStrip-2']/descendant::a")
    technical_routing_tab_locator = (By.XPATH, "//div[@id='RouteTabStrip']/descendant::li[@aria-controls='RouteTabStrip-3']/descendant::a")
    manage_reasons_locator = (By.ID, "btnManageReasons")
    transition_automation_locator = (By.ID, "btnTransitionAutomation")
    page_header_locator = (By.XPATH, "//div[@id='outercontainer']/descendant::label[@class='page-title']")
    success_message_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    ok_button_locator = (By.ID, "btnOk")
    grid_row_data_dictionary = {}
    end_date_inputbox_locator = (By.XPATH, "//label[contains(text(), 'End Date')]/../descendant::input")
    begin_date_inputbox_locator = (By.XPATH, "//label[contains(text(), 'Begin Date')]/../descendant::input")
    route_module_name = "Route"
    success_message_for_suggestion_locator = (By.XPATH, "//p[text()='New suggestion has been created.']")
    column_name_list = []

    # Start: Commercial Routing tab locators
    default_benchmark_values = []
    route_class_benchmarks_grid_div_id = "divRouteClass_"
    bench_mark_values_column_name = "Bench Mark Value"
    commercial_routing_tab_header_locator = (By.XPATH, "//div[@id='commercialRoute']/descendant::h3")
    benchmarks_button_locator = (By.ID, "btnRouteBenchmarksCRG")
    create_new_suggestion_button_locator = (By.ID, "btnCreateNewSuggestionCRG")
    new_suggestion_window_title_locator = (By.ID, "NewSuggestionWindow_wnd_title")
    commercial_routing_grid_search_button_locator = (By.ID, "btnSearchCommercialRG")
    commercial_routing_grid_div_id = "divCommercialRG"
    commercial_routing_grid_first_row_checkbox_locator = (By.XPATH, "//div[@id='divCommercialRG']/descendant::tbody/tr/descendant::td[2]/descendant::input")
    recalc_rgs_button_locator = (By.ID, "btnRecalcRgsCRG")
    recalculate_success_message_locator = (By.XPATH, "//p[text()='Recalculate successful']")
    cancel_changes_button_locator = (By.XPATH, "//a[text()='Cancel changes']")
    save_changes_button_locator = (By.XPATH, "//a[text()='Save changes']")
    exclusion_button_locator = (By.ID, "btnRouteExclusionCRG")
    new_exclusion_button_locator = (By.XPATH, "//a[contains(@id, 'btnREMCreate_')]")
    switch_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Switch')]/../descendant::input")
    account_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Account')]/../descendant::input")
    trunk_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Trunk')]/../descendant::input")
    country_kendo_dropdown_locator = (By.XPATH, "//span[@id='selREMCountry_1']/../../descendant::input")
    exclusions_grid_search_button_locator = (By.ID, "btnSearch")
    exclusions_grid_first_row_checkbox_locator = (By.XPATH, "//div[@id='divREMGrid_1']/descendant::tbody/tr/descendant::td[3]/descendant::input")
    exclusion_grid_bulk_edit_button_locator = (By.ID, "btnREMBulkEdit_1")
    bulk_edit_begin_date_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Begin Date']/../descendant::input")
    bulk_edit_reason_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Reason']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_note_text_field_locator = (By.ID, "Edit-Note")
    bulk_edit_window_title_locator = (By.ID, "RouteBulkEditWindowContainerWindow_wnd_title")
    bulk_edit_undo_reset_button_locator = (By.ID, "BulkEditUndo")
    bulk_edit_cancel_button_locator = (By.ID, "BulkEditCancel")
    bulk_edit_submit_button_locator = (By.ID, "BulkEditSubmit")
    reset_text = "(edit this)"
    inclusion_button_locator = (By.ID, "btnRouteInclusionCRG")
    exclusion_grid_save_changes_button_locator = (By.XPATH, "//div[@id='divREMGrid_1']/descendant::a[text()='Save changes']")
    exclusion_grid_delete_button_locator = (By.ID, "btnREMDelete_1")
    delete_confirmation_pop_up_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the selected rows?']")
    exclusions_deleted_successful_message_locator = (By.XPATH, "//p[text()='Exclusion(s) have been deleted successfully']")
    exclusions_page_header_locator = (By.XPATH, "//h3[contains(text(), 'Exclusion Management')]")
    first_row_routing_products_link_locator = (By.XPATH, "//div[@id='divCommercialRG']/descendant::a[@data-role='routing-product']")
    notes_tab_locator = (By.XPATH, "//a[text()='Notes']")
    add_note_button_locator = (By.XPATH, "//a[text()='Add Note']")
    note_grid_textarea_locator = (By.XPATH, "//div[contains(@id, 'divRNPGrid')]/descendant::tbody/tr/descendant::td[3]/descendant::textarea")
    add_note_save_button_locator = (By.XPATH, "//a[text()='Save']")
    add_note_delete_button_locator = (By.XPATH, "//a[text()='Delete']")
    priority_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Priority')]/../descendant::input")
    route_class_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Route Class')]/../descendant::input")
    routing_product_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Routing Product')]/../descendant::input")
    commercial_route_guide_page_header_locator = (By.XPATH, "//h3[text()='Commercial Route Guide Management']")
    new_suggestion_route_class_locator = (By.XPATH, "//span[contains(text(), 'Route Class')]/../descendant::select[@id='ddlNewSuggestionRouteClass']")
    new_suggestion_routing_product_locator = (By.XPATH, "//span[contains(text(), 'Routing Product')]/../descendant::select[@id='ddlNewSuggestionProducts']")
    create_route_suggestion_button_locator = (By.XPATH, "//input[@id='btnSaveNewSuggestion']")
    customer_specific_routing_button_locator = (By.ID, "btnCustomerSpecificRouting")
    carrier_test_management_button_locator = (By.ID, "btnCarrierTestMgmt")
    new_test_button_locator = (By.XPATH, "//a[contains(@id, 'btnctmNewTest_')]")
    carrier_new_test_account_dropdown_arrow_locator = (By.XPATH, "//label[text()='Account ']/../descendant::span[@class='k-icon k-i-arrow-s']")
    carrier_new_test_trunk_dropdown_arrow_locator = (By.XPATH, "//label[text()='Trunk ']/../descendant::span[@class='k-icon k-i-arrow-s']")
    carrier_new_test_routing_product_dropdown_arrow_locator = (By.XPATH, "//label[text()='Routing Product ']/../descendant::span[@class='k-icon k-i-arrow-s']")
    carrier_new_test_route_class_dropdown_arrow_locator = (By.XPATH, "//label[text()='Route Class ']/../descendant::span[@class='k-icon k-i-arrow-s']")
    create_test_button_locator = (By.XPATH, "//button[contains(@id, 'NCTCreate_')]")
    country_column_name = "Country"
    routing_product_listbox_id = "technicalRGProducts_listbox"
    routing_product_label = "Routing Product"
    csrm_grid_first_row_checkbox_locator = (By.XPATH, "//div[contains(@id, 'divRCMGrid_')]/descendant::tbody/tr/descendant::td[2]/descendant::input")
    route_class_benchmark_data_grid_name = "RouteClassBenchmarksGrid"

    # Start: Create New Exclusion pop up locators
    new_exclusion_reason_dropdown_arrow_locator = (By.XPATH, "//div[@id='divCreateExclusionStep1']/descendant::label[contains(text(),'Reason')]/../descendant::span[@class='k-icon k-i-arrow-s']")
    new_exclusion_note_input_field_locator = (By.ID, "txtNENotes")
    new_exclusion_account_dropdown_locator = (By.XPATH, "//div[@id='divCreateExclusionStep1']/descendant::label[contains(text(),'Account')]/../descendant::input")
    new_exclusion_switch_dropdown_locator = (By.XPATH, "//div[@id='divCreateExclusionStep1']/descendant::label[contains(text(),'Switch')]/../descendant::input")
    new_exclusion_trunk_dropdown_locator = (By.XPATH, "//div[@id='divCreateExclusionStep1']/descendant::label[contains(text(),'Trunk')]/../descendant::input")
    trunks_section_go_button_locator = (By.ID, "btnNEGoTrunk")
    new_exclusion_country_dropdown_locator = (By.XPATH, "//div[@id='divNewExclusionProducts']/descendant::label[text()='Country ']/../descendant::input")
    products_section_go_button_locator = (By.ID, "btnNEGoProduct")
    review_exclusions_button_locator = (By.ID, "btnNESave")
    available_trunk_source_id = "from_lstTrunks"
    available_route_classes_source_id = "from_lstRouteClass"
    available_products_source_id = "from_lstProducts"
    save_and_close_button_locator = (By.ID, "btnRECrSave")
    exclusions_saved_success_message_locator = (By.XPATH, "//p[text()='Exclusion(s) have been saved successfully']")
    trunks_section_text_locator = (By.XPATH, "//div[text()='3. Choose which trunks to Exclude']")
    route_class_move_button_locator = (By.ID, "btnMoveDest_lstRouteClass")
    products_move_button_locator = (By.ID, "btnMoveDest_lstProducts")
    new_exclusion_level_dropdown_arrow_locator = (By.XPATH, "//div[@class='section-heading' and text()='1. Choose Exclusion Level']/../descendant::span[@class='k-icon k-i-arrow-s']")
    new_exclusion_category_dropdown_locator = (By.XPATH, "//div[@id='divCreateExclusionStep1']/descendant::label[contains(text(),'Category')]/../descendant::input")
    new_exclusion_group_dropdown_locator = (By.XPATH, "//div[@id='divCreateExclusionStep1']/descendant::label[contains(text(),'Group')]/../descendant::input")
    new_exclusion_service_dropdown_locator = (By.XPATH, "//div[@id='divCreateExclusionStep1']/descendant::label[contains(text(),'Service')]/../descendant::input")
    new_exclusion_routing_product_dropdown_locator = (By.XPATH, "//div[@id='divCreateExclusionStep1']/descendant::label[contains(text(),'Routing Product')]/../descendant::input")
    exclusion_end_date_inputbox_locator = (By.ID, "dpNEEndDate")
    exclusion_begin_date = None
    exclusion_type_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Exclusion Type')]/../descendant::input")
    exclusions_grid_div_id = "divREMGrid_1"
    exclusions_grid_inline_action_column_number = 4
    exclusions_grid_checkbox_column_number = 3
    delete_exclusion_inline_item_name = "Delete Exclusion"
    trunk_move_button_locator = (By.ID, "btnMoveDest_lstTrunks")
    # End: Create New Exclusion pop up locators

    # Start: Inclusion tab locators
    new_inclusion_button_locator = (By.XPATH, "//a[contains(@id, 'btnRIMCreate') and text()='New Inclusion']")
    effective_date_inputbox_locator = (By.XPATH, "//label[text()='Effective Date']/../descendant::input")
    inclusion_type_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Inclusion Type')]/../descendant::input")
    inclusion_search_button_locator = (By.ID, "btnSearch")
    inclusions_grid_div_id = "divRIMGrid"
    inclusions_data_grid_name = "RouteInclusionsGrid"
    inclusions_grid_checkbox_column_number = 3
    inclusion_bulk_edit_button_locator = (By.XPATH, "//a[contains(@id, 'btnRIMBulkEdit')]")
    bulk_edit_reason_kendo_dropdown_locator = (By.XPATH, "//label[@id='lblFixedNoteID']/../descendant::span[@class='k-input']")
    inclusion_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divRIMGrid')]/descendant::a[text()='Save changes']")
    inclusion_delete_button_locator = (By.XPATH, "//a[contains(@id, 'btnRIMDelete') and text()='Delete']")
    delete_selected_rows_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the selected rows?']")
    delete_inclusion_success_message_locator = (By.XPATH, "//p[text()='Inclusion(s) have been deleted successfully']")
    inclusion_county_kendo_dropdown_locator = (By.XPATH, "//ul[contains(@id, 'ddlRIMCountry_')]/../descendant::input")
    inclusion_routing_product_dropdown_locator = (By.XPATH, "//ul[contains(@id, 'ddlRIMProducts_')]/../descendant::input")

    # Start: New inclusion pop up locators
    inclusion_level_kendo_dropdown_locator = (By.XPATH, "//div[@class='section-heading' and text()='1. Choose Inclusion Level']/../descendant::span[@class='k-input']")
    inclusion_begin_date_inputbox_locator = (By.ID, "dpNEBeginDate")
    new_inclusion_reason_kendo_dropdown_locator = (By.XPATH, "//label[text()='Reason ']/../descendant::span[@class='k-input']")
    note_textarea_locator = (By.XPATH, "//label[contains(text(), 'Note')]/../descendant::textarea")
    new_inclusion_account_kendo_dropdown_locator = (By.XPATH, "//ul[@id='ddlNEAccount_taglist']/../descendant::input")
    new_inclusion_trunk_kendo_dropdown_locator = (By.XPATH, "//ul[@id='ddlNETrunk_taglist']/../descendant::input")
    new_inclusion_country_kendo_dropdown_locator = (By.XPATH, "//ul[@id='ddlNECountry_taglist']/../descendant::input")
    trunk_go_button_locator = (By.ID, "btnNEGoTrunk")
    product_go_button_locator = (By.ID, "btnNEGoProduct")
    available_trunks_select_id = "from_lstTrunks"
    available_route_classes_select_id = "from_lstRouteClass"
    available_products_select_id = "from_lstProducts"
    review_inclusions_button_locator = (By.ID, "btnNESave")
    inclusion_success_message_locator = (By.XPATH, "//p[text()='Inclusion(s) have been saved successfully']")
    # End: New inclusion pop up locators
    # End: Inclusion tab locators
    commercial_routing_grid_inline_action_column_number = 5
    grid_row_dictionary = {}
    commercial_routing_grid_first_row_routing_product = ""
    benchmarks_routing_product_locator = (By.XPATH, "//span[@id='selCountRoutingProduct']/../../descendant::ul[@id='bmProduct_1_taglist']/descendant::span")
    benchmarks_management_page_header_locator = (By.XPATH, "//h3[text()='Benchmark Management']")
    exclusion_management_page_header_locator = (By.XPATH, "//h3[text()='Exclusion Management']")
    overrides_management_page_header_locator = (By.XPATH, "//h3[text()='Overrides Management']")
    emergency_routing_page_header_locator = (By.XPATH, "//h3[text()='Emergency Routing']")
    commercial_routing_data_grid_name = "CommercialRoutingGrid"
    override_button_locator = (By.ID, "btnRouteOverrideCRG")

    # Start: Benchmark tab locators
    route_class_benchmarks_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divRouteClassRecCnt_')]/span")
    route_class_benchmarks_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_3')]/descendant::a[text()='Save changes']")
    max_trunks_per_switch_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Max Trunks per Switch']")
    max_trunks_per_switch_grid_div_id = "divBmSwitch_"
    max_trunks_per_switch_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divBmSwitchRecCnt_')]/span")
    max_trunks_per_switch_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divBmSwitch_')]/descendant::a[text()='Save changes']")
    max_route_commercial_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Max Route Commercial']")
    max_route_commercial_grid_div_id = "divRouteClass_3"
    max_route_commercial_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_3_')]/descendant::a[text()='Save changes']")
    qos_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='QoS']")
    qos_grid_div_id = "divQosProduct_qos_"
    qos_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divQosProduct_qos_')]/descendant::a[text()='Save changes']")
    current_qos_grid_column_value = ""
    qos_import_button_locator = (By.XPATH, "//a[contains(@id, 'btnBmQosImport_qos_')]/descendant::span[text()='Import']")
    qos_export_button_locator = (By.XPATH, "//a[contains(@id, 'btnBmQosExport_qos_')]/descendant::span[text()='Export']")
    import_browse_button_locator = (By.XPATH, "//input[@id='UDFileQoSBenchmarkUpload']/..")
    upload_completed_success_message_locator = (By.XPATH, "//p[text()='Upload successfully completed.']")
    upload_button_locator = (By.ID, "UDUpload")
    upload_cancel_button_locator = (By.ID, "UDCancel")
    qos_data_grid_name = "QualityOfServiceGrid"
    route_class_dropdown_locator_for_benchmark = (By.XPATH, "//div[contains(@id, 'BenchMarkMgmt')]/descendant::label[contains(text(), 'Route Class')]/../descendant::input")
    routing_product_dropdown_locator_for_benchmark = (By.XPATH, "//div[contains(@id, 'BenchMarkMgmt')]/descendant::label[contains(text(), 'Routing Product')]/../descendant::input")
    route_class_benchmarks_margin_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_1')]/descendant::a[text()='Save changes']")
    route_guide_benchmarks_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_C')]/descendant::a[text()='Save changes']")
    benchmark_grid_data_count_locator = (By.XPATH, "//div[contains(@id, 'divRouteClassProduct_')]/descendant::div[@class='k-grid-content']/tbody/tr[2]")
    benchmark_margin_first_grid_first_row_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_')]/descendant::div[@class='k-grid-content']/descendant::tbody/tr[1]")
    ajax_spinner_load_locator = (By.CLASS_NAME, "k-loading-image")
    benchmark_max_route_commercial_first_grid_first_row_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_3')]/descendant::div[@class='k-grid-content']/descendant::tbody/tr[1]")
    bulk_test_call_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Bulk Test Call']")
    message_delivered_column_name = "Message Delivered"
    bulk_test_call_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_26_')]/descendant::a[contains(text(), 'Save changes')]")
    # End: Benchmark tab locators

    # Start: Override tab locators
    new_override_button_locator = (By.XPATH, "//a[contains(@id, 'btnROMCreate_') and text()='New Override']")
    reason_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Reason')]/../descendant::input")
    override_route_class_search_kendo_dropdown_locator = (By.XPATH, "//div[contains(@id, 'divROMMain_')]/descendant::label[contains(text(), 'Route Class')]/../descendant::input")
    override_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Override')]/../descendant::input")
    override_search_button_locator = (By.ID, "btnSearch")
    overrides_grid_div_id = "divROMGrid_"
    overrides_data_grid_name = "RouteOverridesGrid"
    overrides_grid_inline_action_column_number = 3
    overrides_grid_checkbox_column_number = 2
    release_overrides_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to release the selected rows?']")
    release_overrides_success_message_locator = (By.XPATH, "//p[text()='Overrirde(s) have been released successfully']")
    override_bulk_edit_button_locator = (By.XPATH, "//a[contains(@id, 'btnROMBulkEdit_')]")
    bulk_edit_percentage_locator = (By.ID, "Edit-PercentageRouting")
    override_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divROMGrid_')]/descendant::a[text()='Save changes']")

    # Start: New Override pop up locators
    new_override_switch_kendo_dropdown_locator = (By.XPATH, "//label[text()='Switch ']/../descendant::span[@class='k-input']")
    new_override_route_class_kendo_dropdown_locator = (By.XPATH, "//label[text()='Route Class ']/../descendant::input")
    new_override_account_kendo_dropdown_locator = (By.XPATH, "//label[text()='Account ']/../descendant::span[@class='k-input']")
    new_override_country_kendo_dropdown_locator = (By.XPATH, "//label[text()='Country ']/../descendant::span[@class='k-input']")
    new_override_trunk_kendo_dropdown_locator = (By.XPATH, "//label[text()='Trunk ']/../descendant::span[@class='k-input']")
    new_override_routing_product_kendo_dropdown_locator = (By.XPATH, "//label[text()='Routing Product ']/../descendant::input")
    new_override_routing_percentage_textbox_locator = (By.XPATH, "//label[text()='Routing % ']/../descendant::input")
    rank_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Rank')]/../descendant::span[@class='k-input']")
    new_override_reason_kendo_dropdown_locator = (By.XPATH, "//label[text()='Reason ']/../descendant::span[@class='k-input']")
    new_override_note_textarea_locator = (By.ID, "txtROCrNote")
    review_overrides_button_locator = (By.ID, "btnROCrNext")
    override_save_and_close_button_locator = (By.ID, "btnROCrSave")
    override_success_message_locator = (By.XPATH, "//p[text()='1 overrides saved successfully']")
    # End: New Override pop up locators
    # End: Override tab locators

    # Start: Emergency Routing page locators
    available_trunks_grid_div_id = "divRERAvailableGrid"
    to_rank_button_locator = (By.XPATH, "//a[text()='ToRank']")
    emergency_routing_save_button_locator = (By.XPATH, "//input[contains(@id, 'btnRERSave')]")
    move_trunks_target_locator = (By.XPATH, "//div[contains(@id, 'divRERToRankGrid_')]/descendant::td/input[@type='checkbox']")
    middle_row_locator = (By.XPATH, "//div[contains(@id, 'divRERAvailableGrid')]/descendant::table[@data-role='sortable']/descendant::tr[2]")
    rank_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divRERToRankBar')]/descendant::span")
    rank_grid_div_id = "divRERToRankGrid"
    route_percentage_column_name = "Route %"
    trunk_column_name = "Trunk"
    ranked_trunks_list = []
    suggested_trunks_grid_count_span_locator = (By.XPATH, "//div[@id='divSuggestedTrunksCount']/descendant::span")
    suggested_trunks_list = []
    route_class_input_locator = (By.XPATH, "//span[text()='Route Class ']/../descendant::span[@class='k-input']")
    routing_product_input_locator = (By.XPATH, "//span[text()='Routing Product ']/../descendant::span[@class='k-input']")
    selected_route_class = ""
    selected_routing_product = ""
    remove_button_locator = (By.XPATH, "//a[text()='Remove']")
    route_class_span_locator = (By.XPATH, "//div[@id='divRERAvailableBar_1']/descendant::span")
    # End: Emergency Routing page locators

    # Start: Route guide page locators
    benchmarks_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Benchmarks']")
    benchmark_value_column_name = "Benchmark Value"
    suggested_trunks_grid_div_id = "divRgWorksheetSuggested"
    suggested_trunks_data_grid_name = "RGWSuggestedGrid"
    suggested_trunks_grid_checkbox_column_number = 1
    excluded_trunks_grid_div_id = "divRgWorksheetExcluded"
    excluded_trunks_data_grid_name = "RGWExcludedGrid"
    excluded_trunks_grid_checkbox_column_number = 1
    available_worksheets_grid_div_id = "divRgWorksheetAvailable"
    available_trunks_data_grid_name = "RGWAvailableGrid"
    available_trunks_grid_checkbox_column_number = 1
    move_to_excluded_button_locator = (By.ID, "btnMoveExcluded")
    move_to_available_button_locator = (By.ID, "btnMoveAvailable")
    available_trunks_grid_move_to_suggested_button_locator = (By.ID, "btnAMoveSuggested")
    excluded_trunks_grid_move_to_suggested_button_locator = (By.ID, "btnEMoveSuggested")
    save_and_recalculate_button_locator = (By.ID, "btnRecalculate")
    excluded_trunks_radio_button_locator = (By.ID, "rdoExcludedTrunks")
    account_column_name = "Account"
    suggested_trunks_grid_first_row_account = ""
    override_column_name = "Override"
    grid_row_count_locator = (By.XPATH, "//div[@id='divSuggestedTrunksCount']/descendant::span[contains(text(), 'records selected')]")
    suggested_trunks_grid_row_data = {"Begin Date": "", "End Date": ""}
    suggested_trunks_cancel_changes_button_locator = (By.ID, "btnCancel")
    available_worksheets_grid_locator = (By.XPATH, "//div[contains(@id, 'divRgWorksheetAvailable')]")
    excluded_trunks_grid_locator = (By.XPATH, "//div[contains(@id, 'divRgWorksheetExcluded')]")
    rg_worksheet_trunks_grid_div_id = "divRGWorksheetTrunks"
    rg_worksheet_data_grid_name = "RGWTrunksGrid"
    end_date_column_name = "End Date"
    # End: Route guide page locators

    # End: Commercial Routing tab locators

    # Start: Technical Routing tab locators
    technical_routing_tab_header_locator = (By.XPATH, "//div[@id='technicalRouteGuide']/descendant::h3")
    technical_routing_grid_search_button_locator = (By.ID, "btnSearchTechnicalRG")
    technical_routing_grid_div_id = "divTechnicalRG"
    technical_routing_grid_inline_action_column_number = 5
    fast_track_exclusion_window_title_locator = (By.ID, "FastTrackExclusionWindow_wnd_title")
    fast_track_exclusion_window_close_button_locator = (By.XPATH, "//span[@id='FastTrackExclusionWindow_wnd_title']/../descendant::span[text()='Close']")
    technical_routing_grid_first_row_checkbox_locator = (By.XPATH, "//div[@id='divTechnicalRG']/descendant::tbody/descendant::tr/descendant::td[2]/input")
    status_kendo_dropdown_locator = (By.XPATH, "//div[@id='technicalRouteGuide']/descendant::label[contains(text(), 'Status')]/../descendant::input")
    technical_route_recalc_rgs_button_locator = (By.ID, "btnRecalcRgsTRG")
    technical_routing_exclusion_button = (By.ID, "btnRouteExclusionTRG")
    technical_routing_override_button_locator = (By.ID, "btnRouteOverrideTRG")
    technical_routing_benchmarks_button_locator = (By.ID, "btnRouteBenchmarksTRG")
    technical_routing_grid_first_row_routing_product_link_locator = (By.XPATH, "//div[@id='divTechnicalRG']/descendant::a[@data-role='routing-product']")
    fast_track_exclusion_button_locator = (By.ID, "btnFastTrackExclusionTRG")
    technical_routing_benchmarks_search_button_locator = (By.ID, "btnSearchBenchmarkmgmt")
    route_guide_adjuster_button_locator = (By.ID, "btnRouteGuideAdjusterTRG")
    view_rtgs_button_locator = (By.XPATH, "//a[contains(@id, 'btnChooseRg')]/span[text()='View TRGs']")
    adjust_button_locator = (By.XPATH, "//a[contains(@id, 'btnAdjust_window')]/span[text()='Adjust']")
    guide_adjuster_success_message_locator = (By.XPATH, "//p[text()='Adjustments completed. Wait for grid reloads.']")

    # Start: Create Fast-Track Exclusion Pop Up Locators
    fast_track_exclusion_begin_date_locator = (By.XPATH, "//span[contains(text(), 'Begin Date')]/../descendant::input")
    fast_track_exclusion_end_date_locator = (By.XPATH, "//span[contains(text(), 'End Date')]/../descendant::input")
    fast_track_exclusion_note_textarea_locator = (By.ID, "txtFTENotes")
    fast_track_exclusion_account_kendo_dropdown_locator = (By.XPATH, "//span[contains(text(), 'Account')]/../descendant::input")
    account_kendo_dropdown_span_locator = (By.XPATH, "//span[contains(text(), 'Account')]")
    trunks_go_button_locator = (By.ID, "btnFTEGoTrunk")
    fast_track_exclusion_country_kendo_dropdown_locator = (By.XPATH, "//span[contains(text(), 'Country')]/../descendant::input")
    country_kendo_dropdown_span_locator = (By.XPATH, "//span[contains(text(), 'Country')]")
    products_go_button_locator = (By.ID, "btnFTEGoProduct")
    fast_track_exclusion_save_button_locator = (By.ID, "btnFTESave")
    save_fast_track_exclusion_success_message_locator = (By.XPATH, "//span[text()='Success']")
    # End: Create Fast-Track Exclusion Pop Up Locators
    # End: Technical Routing tab locators

    # Start: Transition automation page locators
    new_transition_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewTransition')]")
    route_class_dropdown_arrow_locator = (By.XPATH, "//span[contains(text(), 'Route Class')]/../descendant::span[@class='k-icon k-i-arrow-s']")
    country_type_dropdown_arrow_locator = (By.XPATH, "//span[contains(text(), 'Country Type')]/../descendant::span[@class='k-icon k-i-arrow-s']")
    country_dropdown_arrow_locator = (By.XPATH, "//span[text()='Country  ']/../descendant::span[@class='k-icon k-i-arrow-s']")
    routing_product_dropdown_arrow_locator = (By.XPATH, "//span[text()='Routing Product']/../descendant::span[@class='k-icon k-i-arrow-s']")
    transition_dropdown_arrow_locator = (By.XPATH, "//span[contains(text(), 'Transition:')]/../descendant::span[@class='k-icon k-i-arrow-s']")
    automated_yes_radio_button_locator = (By.ID, "rblTransAuto_1")
    automated_no_radio_button_locator = (By.ID, "rblTransAuto_0")
    resolution_order_input_field_locator = (By.XPATH, "//span[text()='Resolution Order:']/../descendant::input")
    save_button_locator = (By.ID, "btnSave")
    country_type_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Country Type:')]/../descendant::input")
    transition_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Transition:')]/../descendant::input")
    country_multiselect_kendo_dropdown_locator = (By.XPATH, "//ul[contains(@id, 'taCountry_')]/../descendant::input")
    automated_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Automated:')]/../descendant::span[@class='k-icon k-i-arrow-s']")
    transition_automation_search_button_locator = (By.XPATH, "//button[contains(@id, 'btnTransAutoSearch')]")
    transition_automation_grid_div_id = "divTransitionAutomation"
    transition_automation_grid_checkbox_column_number = 2
    transition_automation_grid_inline_action_column_number = 3
    transition_automation_delete_button_locator = (By.XPATH, "//a[contains(@id, 'btnTADelete')]")
    transition_automation_bulk_edit_button_locator = (By.XPATH, "//a[contains(@id, 'btnTABulkEdit')]")
    bulk_edit_automated_dropdown_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Automated']/../descendant::input")
    bulk_edit_resolution_order_locator = (By.ID, "Edit-ResolutionOrder")
    transition_automation_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divTrasitionAutomation')]/descendant::a[text()='Save changes']")
    transition_automation_delete_success_message_locator = (By.XPATH, "//p[text()='Transition Automation record(s) deleted successfully.']")
    transition_automation_bulk_edit_window_title_locator = (By.ID, "RouteBulkEditWindowContainerWindow_wnd_title")
    delete_inline_action_item = "Delete"
    transition_automation_module_name = "Transition Automation"
    # End: Transition automation page locators

    # Start: Commercial Dashboard tab locators
    add_new_reason_button_locator = (By.XPATH, "//a[contains(@id, 'btnRFNCreate')]")
    manage_reasons_grid_div_id = "divFixedNotesGrid"
    manage_reasons_header_locator = (By.XPATH, "//h3[contains(text(), 'Manage Reasons')]")
    reason_column_name = "Reason"
    scope_column_name = "Scope"
    fixed_note_success_message_locator = (By.XPATH, "//p[text()='The Fixed note has been successfully created']")
    all_row_data = []
    trunks_kendo_dropdown_locator = (By.XPATH, "//span[contains(text(), 'Trunks')]/../descendant::span[@class='k-input']")
    show_next_trunk_link_locator = (By.ID, "lnkTrunkNext_window")
    route_guide_adjuster_grid_div_id = "TechnicalRGAdjusterGrid"
    route_guide_adjuster_trunks_column_name = "Trunks"
    route_guide_adjuster_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divTechnicalRGAdjusterGridRecCnt')]/span")
    trg_adjuster_tab_locator = (By.XPATH, "//div[@id='RouteTabStrip']/descendant::li[@aria-controls='RouteTabStrip-4']/descendant::span[contains(text(), 'TRG Adjuster')]")
    # End: Commercial Dashboard tab locators

    # Start: Customer Specific Routing Management tab locators
    destination_category_no_1_dropdown_locator = (By.XPATH, "//ul[@id='ddlRCMDC1_1_taglist']/../descendant::input")
    destination_category_no_2_dropdown_locator = (By.XPATH, "//ul[@id='ddlRCMDC2_1_taglist']/../descendant::input")
    customer_specific_routing_search_button_locator = (By.XPATH, "//button[contains(@id, 'btnRCMSearch')]")
    new_csr_button_locator = (By.XPATH, "//a[contains(@id, 'btnRCMNewCSR_')]")
    csr_product_kendo_dropdown_locator = (By.XPATH, "//label[text()='Product']/../descendant::input")
    csr_customer_kendo_dropdown_locator = (By.XPATH, "//label[text()='Customer']/../descendant::span[@class='k-icon k-i-arrow-s']")
    to_rank_grid_div_id = "divRCNAvailable"
    to_rank_grid_checkbox_column_number = 1
    crs_to_rank_button_locator = (By.XPATH, "//div[@id='divRCNAvailable']/descendant::a[text()='ToRank']")
    rcn_to_rank_grid_div_id = "divRCNToRank"
    route_column_name = "Route %"
    crs_header_locator = (By.XPATH, "//span[@id='NewCSRWindow_wnd_title']")
    review_route_guide_button_locator = (By.XPATH, "//button[@id='btnRCNNext']")
    save_and_create_button_locator = (By.XPATH, "//button[@id='btnRCNSavePlus']")
    crsm_grid_first_row_routing_products_link_locator = (By.XPATH, "//div[contains(@id, 'divRCMGrid_')]/descendant::a[@data-role='routing-product']")
    csrm_grid_div_id = "divRCMGrid_"
    route_guide_grid_div_id = "divRCWRGTrunksGrid"
    csr_benchmarks_button_locator = (By.ID, "btnRCMBenchmarks_1")
    filter_column_position = 1
    alerts_column_name =  "Alerts"
    # End: Customer Specific Routing Management tab locators

    # Start: CSR Benchmark page locators
    minimum_mos_column_locator = (By.XPATH, "//th[@data-title='Minimum MOS']")
    csr_benchmark_grid_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divRCBMain')]/descendant::a[text()='Save changes']")
    csr_benchmark_bulk_edit_button_locator = (By.XPATH, "//a[contains(@id, 'btnRCBBulkEdit')]")
    minimum_mos_bulk_edit_input_box_locator = (By.XPATH, "//div[@id='BulkEditableField-MOSMin']/descendant::input")
    minimum_mos_label_locator = (By.XPATH, "//label[text()='Minimum MOS']")
    # End: CSR Benchmark page locators

    # End: Route page locators

    def switch_to_route(self):
        """
        Implementing switch to route functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_route_page_title(self):
        """
        Implementing get route page title functionality
        :return: Route page title
        """
        self.wait().until(EC.visibility_of_element_located(self.default_tab_header_locator), 'default tab header not found before specified time')
        return self.page_title()

    def is_commercial_dashboard_tab_present(self):
        """
        Implementing is commercial dashboard tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.commercial_dashboard_tab_locator)
        return is_present

    def is_commercial_routing_tab_present(self):
        """
        Implementing is commercial routing tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.commercial_routing_tab_locator)
        return is_present

    def is_technical_routing_tab_present(self):
        """
        Implementing is technical routing tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.technical_routing_tab_locator)
        return is_present

    def is_manage_reasons_present(self):
        """
        Implementing is manage reasons present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.manage_reasons_locator)
        return is_present

    def is_transition_automation_present(self):
        """
        Implementing is transition automation present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.transition_automation_locator)
        return is_present

    def select_commercial_routing_tab(self):
        """
        Implementing select commercial routing tab functionality
        :return:
        """
        self.select_static_tab(self.commercial_routing_tab_locator, 'commercial routing tab not found before specified time')

    def get_commercial_routing_tab_header(self):
        """
        Implementing get commercial routing tab header functionality
        :return: Commercial Routing tab header
        """
        commercial_routing_tab_header_element = self.wait(30).until(EC.visibility_of_element_located(self.commercial_routing_tab_header_locator), 'commercial routing tab header not found before specified time')
        return commercial_routing_tab_header_element.text

    def select_technical_routing_tab(self):
        """
        Implementing select technical routing tab functionality
        :return:
        """
        self.select_static_tab(self.technical_routing_tab_locator, 'technical routing tab not found before specified time')

    def get_technical_routing_tab_header(self):
        """
        Implementing get technical routing tab header functionality
        :return: Technical Routing tab header
        """
        technical_routing_tab_header_element = self.wait(30).until(EC.visibility_of_element_located(self.technical_routing_tab_header_locator), 'technical routing tab header not found before specified time')
        return technical_routing_tab_header_element.text

    def click_benchmarks_button(self):
        """
        Implementing click benchmarks button functionality
        :return:
        """
        self.click_element(self.benchmarks_button_locator, True)

    def set_new_benchmark_values(self):
        """
        Implementing set new benchmark values functionality
        :return:
        """
        self.default_benchmark_values = []
        benchmarks_grid_number_of_rows = self.get_grid_row_count(self.route_class_benchmarks_grid_count_span_locator, 2)
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.route_class_benchmarks_grid_div_id, self.bench_mark_values_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        random_number = randint(10, 99)
        for row in range(benchmarks_grid_number_of_rows):
            row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr[%s]/td[%s]/descendant::span[@class='k-grid-cell']" % (self.route_class_benchmarks_grid_div_id, str(row+1), str(column_index)))
            row_column_element = self.wait().until(EC.visibility_of_element_located(row_column_locator), 'row column locator not found before specified time out')
            self.default_benchmark_values.append(row_column_element.text)
            self.set_value_into_input_field(row_column_locator, str(random_number), True, True)
            random_number = random_number - 5
            page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
            page_header_element.click()

    def set_default_benchmark_values(self):
        """
        Implementing set default benchmark values functionality
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.route_class_benchmarks_grid_div_id, self.bench_mark_values_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        for row in range(len(self.default_benchmark_values)):
            row_column_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::input[@type='checkbox']/../../descendant::td[%s]/span[@class='k-grid-cell'])[%s]" % (self.route_class_benchmarks_grid_div_id, str(column_index), str(row + 1)))
            self.set_value_into_input_field(row_column_locator, self.default_benchmark_values[row], True, True)
            page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
            page_header_element.click()

    def click_route_class_benchmarks_save_changes_button(self):
        """
        Implementing click route class benchmarks save changes button functionality
        :return:
        """
        route_class_benchmarks_save_changes_button_element = self.wait().until(EC.presence_of_element_located(self.route_class_benchmarks_save_changes_button_locator), 'locator not found before specified time out')
        self.script_executor_click(route_class_benchmarks_save_changes_button_element)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_create_new_suggestion_button(self):
        """
        Implementing click create new suggestion button functionality
        :return:
        """
        self.click_element(self.create_new_suggestion_button_locator, True, True)

    def is_new_suggestion_window_loaded_properly(self):
        """
        Implementing is new suggestion window loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.new_suggestion_window_title_locator)

    def click_commercial_routing_grid_search_button(self):
        """
        Implementing click commercial routing grid search button functionality
        :return:
        """
        self.click_element(self.commercial_routing_grid_search_button_locator, True)
        self.wait(300).until(EC.element_to_be_clickable(self.commercial_routing_grid_first_row_checkbox_locator), 'commercial routing grid first row checkbox locator not found before specified time out')

    def select_commercial_routing_grid_first_row_checkbox(self):
        """
        Implementing select commercial routing grid first row checkbox functionality
        :return:
        """
        self.click_element(self.commercial_routing_grid_first_row_checkbox_locator)

    def click_recalc_rgs_button(self):
        """
        Implementing click recalc rgs button functionality
        :return:
        """
        self.click_element(self.recalc_rgs_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.recalculate_success_message_locator), 'recalculate success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_commercial_routing_grid_cancel_changes_button(self):
        """
        Implementing click commercial routing grid cancel changes button functionality
        :return:
        """
        self.click_element(self.cancel_changes_button_locator)

    def click_commercial_routing_grid_first_row_inline_action_button(self):
        """
        Implementing click commercial routing grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.commercial_routing_grid_div_id, None, self.commercial_routing_grid_inline_action_column_number, True)

    def get_commercial_routing_grid_first_row_routing_product(self):
        """
        Implementing get commercial routing grid first row routing product functionality
        :return:
        """
        routing_product_column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='Routing Product']" % self.commercial_routing_grid_div_id)
        routing_product_column_element = self.wait().until(EC.presence_of_element_located(routing_product_column_locator), 'routing product column locator not found before specified time out')
        column_index = int(routing_product_column_element.get_attribute("data-index")) + 1
        column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/a" % (self.commercial_routing_grid_div_id, str(column_index)))
        column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value not found before specified time out')
        self.commercial_routing_grid_first_row_routing_product = column_value_element.text

    def compare_selected_routing_product(self):
        """
        Implementing compare selected routing product functionality
        :return: True/False
        """
        is_matched = None
        selected_routing_product_element = self.wait().until(EC.presence_of_element_located(self.benchmarks_routing_product_locator), 'benchmarks routing product locator not found before specified time out')
        selected_routing_product = selected_routing_product_element.text
        if str(selected_routing_product) == str(self.commercial_routing_grid_first_row_routing_product):
            is_matched = True
        else:
            is_matched = False
        return is_matched

    def is_benchmark_management_page_loaded_properly(self):
        """
        Implementing is benchmark management page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.benchmarks_management_page_header_locator)

    def is_exclusion_management_page_loaded_properly(self):
        """
        Implementing is exclusion management page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.exclusion_management_page_header_locator)

    def is_overrides_management_page_loaded_properly(self):
        """
        Implementing is overrides management page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.overrides_management_page_header_locator)

    def is_emergency_routing_page_loaded_properly(self):
        """
        Implementing is emergency routing page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.emergency_routing_page_header_locator)

    def select_commercial_routing_grid_inline_action_item(self, inline_item_name):
        """
        Implementing select commercial routing grid inline action item functionality
        :param inline_item_name:
        :return:
        """
        self.select_inline_action_item(inline_item_name, self.commercial_routing_data_grid_name)

    def select_max_route_commercial_tab(self):
        """
        Implementing select max route commercial tab functionality
        :return:
        """
        self.click_element(self.max_route_commercial_tab_locator, script_executor=True)

    def filter_max_route_commercial_grid(self, column_name, filter_item_text):
        """
        Implementing filter max route commercial grid functionality
        :param column_name:
        :param filter_item_text:
        :return:
        """
        self.grid_filter_with_textbox(self.max_route_commercial_grid_div_id, column_name, filter_item_text)

    def set_value_in_max_route_commercial_grid_column(self):
        """
        Implementing set value in max route commercial grid column functionality
        :return:
        """
        column_value = str(randint(0, 99))
        self.set_value_in_grid_column(self.max_route_commercial_grid_div_id, self.bench_mark_values_column_name, column_value, True)
        self.click_element(self.page_header_locator)

    def click_max_route_commercial_save_changes_button(self):
        """
        Implementing click max route commercial save changes button functionality
        :return:
        """
        self.click_element(self.max_route_commercial_save_changes_button_locator, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def select_max_trunks_per_switch_tab(self):
        """
        Implementing select max trunks per switch tab functionality
        :return:
        """
        self.click_element(self.max_trunks_per_switch_tab_locator, True)

    def set_max_trunks_per_switch_grid_new_benchmark_values(self):
        """
        Implementing set max trunks per switch grid new benchmark values functionality
        :return:
        """
        global column_value
        column_value = str(randint(0, 99))
        self.default_benchmark_values = []
        benchmarks_grid_number_of_rows = self.get_grid_row_count(self.max_trunks_per_switch_grid_count_span_locator, 2)
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.max_trunks_per_switch_grid_div_id, self.bench_mark_values_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        for row in range(benchmarks_grid_number_of_rows):
            row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr[%s]/td[%s]/descendant::span[@class='k-grid-cell']" % (self.max_trunks_per_switch_grid_div_id, str(row+1), str(column_index)))
            row_column_element = self.wait().until(EC.presence_of_element_located(row_column_locator), 'row column locator not found before specified time out')
            self.default_benchmark_values.append(row_column_element.text)
            self.set_value_into_input_field(row_column_locator, column_value, True, True)
            page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
            page_header_element.click()

    def compare_max_trunks_per_switch_grid_modified_benchmark_values(self):
        """
        Implementing compare max trunks per switch grid modified benchmark values functionality
        :return: True/False
        """
        global column_value
        is_compared = True
        benchmarks_grid_number_of_rows = self.get_grid_row_count(self.max_trunks_per_switch_grid_count_span_locator, 2)
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.max_trunks_per_switch_grid_div_id, self.bench_mark_values_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        for row in range(benchmarks_grid_number_of_rows):
            row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr[%s]/td[%s]/descendant::span[@class='k-grid-cell']" % (self.max_trunks_per_switch_grid_div_id, str(row+1), str(column_index)))
            row_column_element = self.wait().until(EC.presence_of_element_located(row_column_locator), 'row column locator not found before specified time out')
            if str(row_column_element.text) == str(column_value):
                is_compared = False
                break
        return is_compared

    def set_max_trunks_per_switch_grid_default_benchmark_values(self):
        """
        Implementing set max trunks per switch grid default benchmark values functionality
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.max_trunks_per_switch_grid_div_id, self.bench_mark_values_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        for row in range(len(self.default_benchmark_values)):
            row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr[%s]/td[%s]/descendant::span[@class='k-grid-cell']" % (self.max_trunks_per_switch_grid_div_id, str(row + 1), str(column_index)))
            self.set_value_into_input_field(row_column_locator, self.default_benchmark_values[row], True, True)
            page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
            page_header_element.click()

    def click_max_trunks_per_switch_save_changes_button(self):
        """
        Implementing click max trunks per switch save changes button functionality
        :return:
        """
        max_trunks_per_switch_save_changes_button_element = self.wait().until(EC.presence_of_element_located(self.max_trunks_per_switch_save_changes_button_locator), 'max trunk save button locator not found before specified time out')
        self.script_executor_click(max_trunks_per_switch_save_changes_button_element)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_override_button(self):
        """
        Implementing click override button functionality
        :return:
        """
        self.click_element(self.override_button_locator, True)

    def click_new_override_button(self):
        """
        Implementing click new override button functionality
        :return:
        """
        self.click_element(self.new_override_button_locator)

    def set_reason(self, reason_list):
        """
        Implementing set reason functionality
        :param reason_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.reason_kendo_dropdown_locator, reason_list)

    def set_override_route_class_for_search(self, route_class_list):
        """
        Implementing set override route class for search functionality
        :param route_class_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.override_route_class_search_kendo_dropdown_locator, route_class_list)

    def set_override(self, override_list):
        """
        Implementing set override functionality
        :param override_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.override_kendo_dropdown_locator, override_list)

    def set_switch(self, switch_list):
        """
        Implementing set switch functionality
        :param switch_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.switch_kendo_dropdown_locator, switch_list)

    def click_override_search_button(self):
        """
        Implementing click override search button functionality
        :return:
        """
        self.click_element(self.page_header_locator)
        self.click_element(self.override_search_button_locator, True)

    def set_new_override_switch(self, switch):
        """
        Implementing set new override switch functionality
        :param switch:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_override_switch_kendo_dropdown_locator, switch)

    def set_new_override_route_class(self, route_class_list):
        """
        Implementing set new override route class functionality
        :param route_class_list:
        :return:
        """
        self.click_element(self.new_override_route_class_kendo_dropdown_locator, True)
        self.wait_for_ajax_spinner_load()
        for item in route_class_list:
            dropdown_item_locator = (By.XPATH, "//ul[@id='ddlROCrRouteClass_listbox']/descendant::li[text()='%s']" % item)
            self.click_element(dropdown_item_locator, True)

    def set_new_override_account(self, account):
        """
        Implementing set new override account functionality
        :param account:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_override_account_kendo_dropdown_locator, account)

    def set_new_override_country(self, country):
        """
        Implementing set new override country functionality
        :param country:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_override_country_kendo_dropdown_locator, country)

    def set_new_override_trunk(self, trunk, switch):
        """
        Implementing set new override trunk functionality
        :param trunk:
        :return:
        """
        trunk = trunk + "/" + switch
        self.single_selection_from_static_kendo_dropdown(self.new_override_trunk_kendo_dropdown_locator, trunk)

    def set_new_override_routing_product(self, routing_product_list):
        """
        Implementing set new override routing product functionality
        :param routing_product_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_override_routing_product_kendo_dropdown_locator, routing_product_list)

    def set_new_override_routing_percentage(self, routing_percentage):
        """
        Implementing set new override routing percentage functionality
        :param routing_percentage:
        :return:
        """
        self.set_value_into_input_field(self.new_override_routing_percentage_textbox_locator, routing_percentage, True)

    def set_rank(self, rank):
        """
        Implementing set rank functionality
        :param rank:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.rank_kendo_dropdown_locator, rank)

    def set_new_override_reason(self, reason):
        """
        Implementing set new override reason functionality
        :param reason:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_override_reason_kendo_dropdown_locator, reason)

    def set_begin_date(self, begin_date):
        """
        Implementing set begin date functionality
        :param begin_date:
        :return:
        """
        self.set_value_into_input_field(self.begin_date_inputbox_locator, begin_date)

    def set_end_date(self, end_date):
        """
        Implementing set end date functionality
        :param end_date:
        :return:
        """
        self.set_value_into_input_field(self.end_date_inputbox_locator, end_date)

    def set_new_override_note(self, note):
        """
        Implementing set new override note functionality
        :param note:
        :return:
        """
        self.set_value_into_input_field(self.new_override_note_textarea_locator, note)

    def click_review_overrides_button(self):
        """
        Implementing click review overrides button functionality
        :return:
        """
        self.click_element(self.review_overrides_button_locator)

    def click_override_save_and_close_button(self):
        """
        Implementing click override save and close button functionality
        :return:
        """
        self.click_element(self.override_save_and_close_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.override_success_message_locator), 'override success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_overrides_grid_inline_action_button(self, row_identifier_text):
        """
        Implementing click overrides grid inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.overrides_grid_div_id, row_identifier_text, self.overrides_grid_inline_action_column_number)

    def select_route_module_inline_item(self, inline_item_name):
        """
        Implementing select route module inline item functionality
        :param inline_item_name:
        :return:
        """
        self.select_inline_action_item(inline_item_name, self.route_module_name)

    def confirm_release_overrides_pop_ups(self):
        """
        Implementing confirm release overrides pop ups functionality
        :return:
        """
        try:
            self.wait().until(EC.visibility_of_element_located(self.release_overrides_confirmation_message_locator), 'release overrides confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
            self.wait().until(EC.visibility_of_element_located(self.release_overrides_success_message_locator), 'release overrides success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def select_overrides_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select overrides grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.overrides_grid_div_id, row_identifier_text, self.overrides_grid_checkbox_column_number)

    def click_override_bulk_edit_button(self):
        """
        Implementing click override bulk edit button functionality
        :return:
        """
        self.click_element(self.override_bulk_edit_button_locator, True)

    def set_bulk_edit_percentage(self, percentage):
        """
        Implementing set bulk edit percentage functionality
        :param percentage:
        :return:
        """
        self.set_value_into_input_field(self.bulk_edit_percentage_locator, percentage)

    def click_override_save_changes_button(self):
        """
        Implementing click override save changes button functionality
        :return:
        """
        self.click_element(self.override_save_changes_button_locator)

    def get_overrides_grid_row_details(self):
        """
        Implementing get overrides grid row details
        :return: grid_row_details_dictionary
        """
        self.grid_row_data_dictionary.clear()
        self.grid_row_data_dictionary.update({"Trunk": "", "Route Class": "", "Routing Product": "", "Rank": "", "Reason": ""})
        return self.get_grid_row_details(self.overrides_grid_div_id, self.grid_row_data_dictionary, self.overrides_data_grid_name)

    def filter_overrides_grid(self, column_name, filter_item_list):
        """
        Implementing filter overrides grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list)

    def click_exclusion_button(self):
        """
        Implementing click exclusion button functionality
        :return:
        """
        self.click_element(self.exclusion_button_locator)

    def click_new_exclusion_button(self):
        """
        Implementing click new exclusion button functionality
        :return:
        """
        self.click_element(self.new_exclusion_button_locator)

    def set_new_exclusion_reason(self, reason):
        """
        Implementing set new exclusion reason functionality
        :param reason:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_exclusion_reason_dropdown_arrow_locator, reason)

    def set_new_exclusion_note(self, note_prefix):
        """
        Implementing set new exclusion note functionality
        :param note_prefix:
        :return:
        """
        note = note_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.new_exclusion_note_input_field_locator, note)

    def set_new_exclusion_account(self, account_list):
        """
        Implementing set new exclusion account functionality
        :param account_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_exclusion_account_dropdown_locator, account_list)
        self.click_element(self.trunks_section_text_locator)

    def set_new_exclusion_switch(self, switch_list):
        """
        Implementing set new exclusion switch functionality
        :param switch_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_exclusion_switch_dropdown_locator, switch_list)
        self.click_element(self.trunks_section_text_locator)

    def set_new_exclusion_trunk(self, list_of_trunks):
        """
        Implementing set new exclusion trunk functionality
        :param list_of_trunks:
        :return:
        """
        kendo_dropdown_element = self.wait().until(EC.element_to_be_clickable(self.new_exclusion_trunk_dropdown_locator), 'kendo dropdown locator not found before specified time out')
        kendo_dropdown_element.click()
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='ddlNETrunk_listbox']/li[contains(text(), '%s')]" % list_of_trunks)
        self.click_element(dropdown_item_locator, True)
        self.script_executor("var elements = document.getElementsByClassName('k-list-container k-popup k-group k-reset multiselect'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].style.display = 'none';}")
        self.script_executor("var elements = document.getElementsByClassName('k-list k-reset'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].setAttribute('aria-hidden', 'true');}")

    def click_trunk_section_go_button(self):
        """
        Implementing click trunk section go button functionality
        :return:
        """
        self.click_element(self.trunks_section_go_button_locator)

    def move_available_trunks_to_destination(self, list_of_trunks):
        """
        Implementing move available trunks to destination functionality
        :param list_of_trunks:
        :return:
        """
        item_selection_locator = (By.XPATH, "//select[@id='%s']/descendant::option[contains(text(), '%s')]" % (self.available_trunk_source_id, list_of_trunks))
        self.click_element(item_selection_locator)
        move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.trunk_move_button_locator), 'move single item button locator not found before specified time out')
        move_single_item_button_element.click()
        self.wait_for_ajax_spinner_load()

    def move_available_route_classes_to_destination(self):
        """
        Implementing move available route classes to destination functionality
        :return:
        """
        item_selection_locator = (By.XPATH, "//select[@id='%s']/descendant::option[1]" % (self.available_route_classes_source_id))
        self.click_element(item_selection_locator)
        move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.route_class_move_button_locator), 'move single item button locator not found before specified time out')
        move_single_item_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_new_exclusion_country(self, country_list):
        """
        Implementing set new exclusion country functionality
        :param country_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_exclusion_country_dropdown_locator, country_list)

    def click_products_section_go_button(self):
        """
        Implementing click products section go button functionality
        :return:
        """
        self.click_element(self.products_section_go_button_locator)

    def move_available_products_to_destination(self):
        """
        Implementing move available products to destination functionality
        :return:
        """
        item_selection_locator = (By.XPATH, "//select[@id='%s']/descendant::option[1]" % (self.available_products_source_id))
        self.click_element(item_selection_locator)
        move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.products_move_button_locator), 'move single item button locator not found before specified time out')
        move_single_item_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_review_exclusions_button(self):
        """
        Implementing click review exclusions button functionality
        :return:
        """
        self.click_element(self.review_exclusions_button_locator, True, True)

    def click_save_and_close_button(self):
        """
        Implementing click save and close button functionality
        :return:
        """
        self.click_element(self.save_and_close_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.exclusions_saved_success_message_locator), 'exclusions saved success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_reason_for_search(self, list_of_reasons):
        """
        Implementing set reason for search functionality
        :param list_of_reasons:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.reason_kendo_dropdown_locator, list_of_reasons)
        self.click_element(self.exclusions_page_header_locator)

    def set_switch_for_search(self, list_of_switch):
        """
        Implementing set switch for search functionality
        :param list_of_switch:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.switch_kendo_dropdown_locator, list_of_switch)
        self.click_element(self.exclusions_page_header_locator)

    def set_account_for_search(self, list_of_account):
        """
        Implementing set account for search functionality
        :param list_of_account:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.account_kendo_dropdown_locator, list_of_account)
        self.click_element(self.page_header_locator)

    def set_trunk_for_search(self, list_of_trunks):
        """
        Implementing set trunk for search functionality
        :param list_of_trunks:
        :return:
        """
        for i in range(len(list_of_trunks)):
            list_of_trunks = list(list_of_trunks)
            list_of_trunks[i] = list_of_trunks[i] + "/Commercial"
            list_of_trunks = tuple(list_of_trunks)
        self.multiple_items_selection_from_kendo_dropdown(self.trunk_kendo_dropdown_locator, list_of_trunks)
        self.click_element(self.page_header_locator)

    def set_country_for_search(self, list_of_country):
        """
        Implementing set country for search functionality
        :param list_of_country:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.country_kendo_dropdown_locator, list_of_country)

    def click_exclusions_grid_search_button(self):
        """
        Implementing click exclusions grid search button functionality
        :return:
        """
        self.click_element(self.exclusions_page_header_locator)
        self.click_element(self.exclusions_grid_search_button_locator, True)

    def select_exclusions_grid_first_row_checkbox(self):
        """
        Implementing select exclusions grid first row checkbox functionality
        :return:
        """
        self.click_element(self.exclusions_grid_first_row_checkbox_locator, True)

    def click_exclusions_grid_bulk_edit_button(self):
        """
        Implementing click exclusions grid bulk edit button functionality
        :return:
        """
        self.click_element(self.exclusion_grid_bulk_edit_button_locator, True)

    def set_bulk_edit_begin_date(self, begin_date):
        """
        Implementing set bulk edit begin date functionality
        :param begin_date:
        :return:
        """
        self.set_value_into_input_field(self.bulk_edit_begin_date_locator, begin_date)
        self.click_element(self.bulk_edit_window_title_locator)

    def set_bulk_edit_note(self, note):
        """
        Implementing set bulk edit note functionality
        :param note:
        :return:
        """
        self.set_value_into_input_field(self.bulk_edit_note_text_field_locator, note)
        self.click_element(self.bulk_edit_window_title_locator)

    def click_bulk_edit_undo_reset_button(self):
        """
        Implementing click bulk edit undo reset button functionality
        :return:
        """
        self.click_element(self.bulk_edit_undo_reset_button_locator, True, True)

    def is_input_field_reset(self, label_text):
        """
        Implementing is input field reset functionality
        :param label_text:
        :return: True/False
        """
        is_reset = False
        input_field_span_locator = (By.XPATH, "//label[text()='%s']/../descendant::span[@class='k-input']" % label_text)
        input_field_span_element = self.wait().until(EC.presence_of_element_located(input_field_span_locator), 'input field span locator not found before specified time out')
        if input_field_span_element.text.lower() == self.reset_text:
            is_reset = True
        return is_reset

    def is_bulk_edit_input_field_reset(self, label_text):
        """
        Implementing is bulk edit input field reset functionality
        :param label_text:
        :return: True/False
        """
        is_reset = False
        if label_text.lower() == "reason":
            is_reset = self.is_input_field_reset(label_text)
        else:
            if label_text.lower() == "note":
                input_field_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='%s']/../descendant::textarea" % label_text)
            else:
                input_field_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='%s']/../descendant::input" % label_text)
            input_field_element = self.wait().until(EC.presence_of_element_located(input_field_locator), 'input field locator not found before specified time out')
            data_dirty_attribute = input_field_element.get_attribute("data-dirty")
            if str(data_dirty_attribute) == "None":
                is_reset = True
        return is_reset

    def click_bulk_edit_cancel_button(self):
        """
        Implementing click bulk edit cancel button functionality
        :return:
        """
        self.click_element(self.bulk_edit_cancel_button_locator, True, True)

    def click_bulk_edit_submit_button(self):
        """
        Implementing click bulk edit submit button functionality
        :return:
        """
        self.click_element(self.bulk_edit_submit_button_locator, True, True)

    def click_exclusions_grid_save_changes_button(self):
        """
        Implementing click exclusions grid save changes button functionality
        :return:
        """
        self.click_element(self.exclusion_grid_save_changes_button_locator)

    def click_exclusions_grid_delete_button(self):
        """
        Implementing click exclusions grid delete button functionality
        :return:
        """
        self.click_element(self.exclusion_grid_delete_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.delete_confirmation_pop_up_locator), 'delete confirmation pop up locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
            self.wait().until(EC.visibility_of_element_located(self.exclusions_deleted_successful_message_locator), 'exclusions deleted successful message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def select_qos_tab(self):
        """
        Implementing select qos tab functionality
        :return:
        """
        self.click_element(self.qos_tab_locator, True)

    def click_qos_save_changes_button(self):
        """
        Implementing click qos save changes button functionality
        :return:
        """
        self.click_element(self.qos_save_changes_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_value_in_qos_grid_column(self, column_name):
        """
        Implementing set value in qos grid column functionality
        :param column_name:
        :return:
        """
        if column_name == "Target ASR":
            target_asr_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.qos_grid_div_id, column_name))
            target_asr_column_element = self.wait().until(EC.presence_of_element_located(target_asr_column_locator), 'column locator not found before specified time out')
            target_asr_column_index = int(target_asr_column_element.get_attribute("data-index")) + 1
            first_row_target_asr_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % (self.qos_grid_div_id, str(target_asr_column_index)))
            first_row_target_asr_column_element = self.wait().until(EC.element_to_be_clickable(first_row_target_asr_column_locator), 'first row column locator not found before specified time out')
            self.current_qos_grid_column_value = self.random_string_generator(2, string.digits)
            while float(first_row_target_asr_column_element.text) == float(self.current_qos_grid_column_value+".00"):
                self.current_qos_grid_column_value = self.random_string_generator(2, string.digits)
            column_value = self.current_qos_grid_column_value
        else:
            column_value = self.current_qos_grid_column_value
        self.set_value_in_grid_column(self.qos_grid_div_id, column_name, column_value)
        self.click_element(self.page_header_locator)

    def click_inclusion_button(self):
        """
        Implementing click inclusion button functionality
        :return:
        """
        self.click_element(self.inclusion_button_locator, True)

    def click_new_inclusion_button(self):
        """
        Implementing click new inclusion button functionality
        :return:
        """
        self.click_element(self.new_inclusion_button_locator, True)

    def set_inclusion_level(self, inclusion_level):
        """
        Implementing set inclusion level functionality
        :param inclusion_level:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.inclusion_level_kendo_dropdown_locator, inclusion_level)
        self.wait_for_ajax_spinner_load()

    def set_inclusion_begin_date(self, begin_date):
        """
        Implementing set inclusion begin date functionality
        :param begin_date:
        :return: begin_date, returns set begin date
        """
        if begin_date == "":
            begin_date = self.get_date(current_date=True)
        self.set_value_into_input_field(self.inclusion_begin_date_inputbox_locator, begin_date)
        return begin_date

    def set_new_inclusion_reason(self, reason):
        """
        Implementing set new inclusion reason functionality
        :param reason:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_inclusion_reason_kendo_dropdown_locator, reason)

    def set_note(self, note):
        """
        Implementing set note functionality
        :param note:
        :return:
        """
        self.set_value_into_input_field(self.note_textarea_locator, note)

    def set_new_inclusion_account(self, account_list):
        """
        Implementing set new inclusion account functionality
        :param account_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_inclusion_account_kendo_dropdown_locator, account_list)

    def set_new_inclusion_trunk(self, trunk_list):
        """
        Implementing set new inclusion trunk functionality
        :param trunk_list:
        :return:
        """
        kendo_dropdown_element = self.wait().until(EC.element_to_be_clickable(self.new_inclusion_trunk_kendo_dropdown_locator), 'kendo dropdown locator not found before specified time out')
        kendo_dropdown_element.click()
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='ddlNETrunk_listbox']/li[contains(text(), '%s')]" % trunk_list)
        self.click_element(dropdown_item_locator, True)
        self.script_executor("var elements = document.getElementsByClassName('k-list-container k-popup k-group k-reset multiselect'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].style.display = 'none';}")
        self.script_executor("var elements = document.getElementsByClassName('k-list k-reset'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].setAttribute('aria-hidden', 'true');}")

    def click_trunk_go_button(self):
        """
        Implementing click trunk go button functionality
        :return:
        """
        self.click_element(self.trunk_go_button_locator)

    def move_available_trunks_to_include(self, trunk_list):
        """
        Implementing move available trunks to include functionality
        :param trunk_list:
        :return:
        """
        item_selection_locator = (By.XPATH, "//select[@id='%s']/descendant::option[contains(text(), '%s')]" % (self.available_trunks_select_id, trunk_list))
        self.click_element(item_selection_locator)
        move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.trunk_move_button_locator), 'move single item button locator not found before specified time out')
        move_single_item_button_element.click()
        self.wait_for_ajax_spinner_load()

    def move_available_route_classes_to_include(self):
        """
        Implementing move available route classes to include functionality
        :return:
        """
        item_selection_locator = (By.XPATH, "//select[@id='%s']/descendant::option[1]" % (self.available_route_classes_select_id))
        self.click_element(item_selection_locator)
        move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.route_class_move_button_locator), 'move single item button locator not found before specified time out')
        move_single_item_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_new_inclusion_country(self, country_list):
        """
        Implementing set new inclusion country functionality
        :param country_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_inclusion_country_kendo_dropdown_locator, country_list)

    def move_available_products_to_include(self, product_list):
        """
        Implementing move available products to include functionality
        :param product_list:
        :return:
        """
        self.move_available_items_to_destination(self.available_products_select_id, product_list, self.products_move_button_locator)

    def click_product_go_button(self):
        """
        Implementing click product go button functionality
        :return:
        """
        self.click_element(self.product_go_button_locator)

    def click_review_inclusions_button(self):
        """
        Implementing click review inclusions button functionality
        :return:
        """
        self.click_element(self.review_inclusions_button_locator)

    def click_inclusion_save_and_close_button(self):
        """
        Implementing click save and close button functionality
        :return:
        """
        self.click_element(self.save_and_close_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.inclusion_success_message_locator), 'inclusion success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            pass

    def set_effective_date(self, effective_date):
        """
        Implementing set effective date functionality
        :param effective_date:
        :return:
        """
        self.set_value_into_input_field(self.effective_date_inputbox_locator, effective_date)

    def set_inclusion_type(self, inclusion_type):
        """
        Implementing set inclusion type functionality
        :param inclusion_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.inclusion_type_kendo_dropdown_locator, inclusion_type)

    def click_inclusion_search_button(self):
        """
        Implementing click inclusion search button functionality
        :return:
        """
        self.click_element(self.inclusion_search_button_locator, True)

    def get_inclusions_grid_row_details(self):
        """
        Implementing get inclusions grid row details functionality
        :return: inclusions_grid_row_data
        """
        self.grid_row_data_dictionary.clear()
        self.grid_row_data_dictionary = {"Commercial Trunk": "", "Route Class": "", "Routing Product": "", "Account": "", "Begin Date": "", "Reason": ""}
        inclusions_grid_row_data = self.get_grid_row_details(self.inclusions_grid_div_id, self.grid_row_data_dictionary, self.inclusions_data_grid_name)
        return inclusions_grid_row_data

    def select_inclusions_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select inclusions grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.inclusions_grid_div_id, row_identifier_text, self.inclusions_grid_checkbox_column_number)

    def click_inclusion_bulk_edit_button(self):
        """
        Implementing click inclusion bulk edit button functionality
        :return:
        """
        self.click_element(self.inclusion_bulk_edit_button_locator)

    def set_bulk_edit_reason(self, reason):
        """
        Implementing set bulk edit reason functionality
        :param reason:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_reason_kendo_dropdown_locator, reason)

    def click_inclusion_save_changes_button(self):
        """
        Implementing click inclusion save changes button functionality
        :return:
        """
        self.click_element(self.inclusion_save_changes_button_locator)
        self.wait_for_ajax_spinner_load()

    def click_inclusion_delete_button(self):
        """
        Implementing click inclusion delete button functionality
        :return:
        """
        self.click_element(self.inclusion_delete_button_locator, False, False)
        try:
            self.wait().until(EC.presence_of_element_located(self.delete_selected_rows_confirmation_message_locator), 'delete selected rows confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
            self.wait().until(EC.visibility_of_element_located(self.delete_inclusion_success_message_locator), 'delete inclusion success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def click_qos_import_button(self):
        """
        Implementing click qos import button functionality
        :return:
        """
        self.click_element(self.qos_import_button_locator)

    def click_import_browse_button(self):
        """
        Implementing click import browse button functionality
        :return:
        """
        self.kill_all_opened_file_browsing_dialogs()
        self.click_element(self.import_browse_button_locator)

    def click_upload_button(self):
        """
        Implementing click upload button functionality
        :return:
        """
        self.click_element(self.upload_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.upload_completed_success_message_locator), 'upload completed success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_upload_cancel_button(self):
        """
        Implementing click upload cancel button functionality
        :return:
        """
        self.click_element(self.upload_cancel_button_locator)

    def click_qos_export_button(self):
        """
        Implementing click qos export button functionality
        :return:
        """
        self.click_element(self.qos_export_button_locator, script_executor=True)

    def click_commercial_routing_grid_first_row_routing_product_link(self):
        """
        Implementing click commercial routing grid first row routing product link functionality
        :return:
        """
        self.click_element(self.first_row_routing_products_link_locator)

    def select_notes_tab(self):
        """
        Implementing select notes tab functionality
        :return:
        """
        self.click_element(self.notes_tab_locator, True)

    def click_add_note_button(self):
        """
        Implementing click add note button functionality
        :return:
        """
        delete_button_element = self.wait().until(EC.presence_of_element_located(self.add_note_button_locator), 'add note button locator not found before specified time')
        self.script_executor_click(delete_button_element)

    def set_note_in_notes_grid(self, note_prefix):
        """
        Implementing set note in notes grid functionality
        :param note_prefix:
        :return:
        """
        note = note_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.note_grid_textarea_locator, note)

    def click_add_note_save_button(self):
        """
        Implementing click add note save button functionality
        :return:
        """
        self.click_element(self.add_note_save_button_locator)

    def click_add_note_delete_button(self):
        """
        Implementing click add note delete button functionality
        :return:
        """
        delete_button_element = self.wait().until(EC.presence_of_element_located(self.add_note_delete_button_locator), 'add note delete button locator not found before specified time')
        delete_button_element.click()
        self.accept_alert_pop_up()

    def select_benchmarks_tab(self):
        """
        Implementing select benchmarks tab functionality
        :return:
        """
        self.click_element(self.benchmarks_tab_locator, script_executor=True)

    def set_new_benchmark_values_in_route_guide_tab(self):
        """
        Implementing set new benchmark values in route guide tab functionality
        :return:
        """
        self.default_benchmark_values = []
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.route_class_benchmarks_grid_div_id, self.benchmark_value_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        random_number = randint(0, 9)
        for row in range(2):
            row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr[%s]/td[%s]/descendant::span[@class='k-grid-cell']" % (self.route_class_benchmarks_grid_div_id, str(row+1), str(column_index)))
            row_column_element = self.wait().until(EC.visibility_of_element_located(row_column_locator), 'row column locator not found before specified time out')
            self.default_benchmark_values.append(row_column_element.text)
            if float(random_number) != float(row_column_element.text):
                self.set_value_into_input_field(row_column_locator, str(random_number), True, True)
            else:
                random_number += 1
                self.set_value_into_input_field(row_column_locator, str(random_number), True, True)
            random_number += randint(10, 99)
            page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
            page_header_element.click()

    def set_default_benchmark_values_in_route_guide_tab(self):
        """
        Implementing set default benchmark values in route guide tab functionality
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.route_class_benchmarks_grid_div_id, self.benchmark_value_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        for row in range(len(self.default_benchmark_values)):
            row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr[%s]/td[%s]/descendant::span[@class='k-grid-cell']" % (self.route_class_benchmarks_grid_div_id, str(row + 1), str(column_index)))
            self.set_value_into_input_field(row_column_locator, self.default_benchmark_values[row], True, True)
            page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
            page_header_element.click()

    def click_technical_routing_grid_search_button(self):
        """
        Implementing click technical routing grid search button functionality
        :return:
        """
        self.click_element(self.technical_routing_grid_search_button_locator, True)
        self.wait(300).until(EC.element_to_be_clickable(self.technical_routing_grid_first_row_checkbox_locator))

    def click_technical_routing_grid_first_row_inline_action_button(self):
        """
        Implementing click technical routing grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.technical_routing_grid_div_id, None, self.technical_routing_grid_inline_action_column_number, True)

    def is_fast_track_exclusion_window_loaded_properly(self):
        """
        Implementing is fast track exclusion window loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.fast_track_exclusion_window_title_locator)

    def close_fast_track_exclusion_window(self):
        """
        Implementing close fast track exclusion window functionality
        :return:
        """
        close_button_element = self.wait().until(EC.presence_of_element_located(self.fast_track_exclusion_window_close_button_locator), 'fast track exclusion window close button locator not found before specified time out')
        close_button_element.click()
        self.accept_alert_pop_up()

    def select_technical_routing_grid_first_row_checkbox(self):
        """
        Implementing select technical routing grid first row checkbox functionality
        :return:
        """
        self.click_element(self.technical_routing_grid_first_row_checkbox_locator, script_executor=True)

    def set_routing_status_for_search(self, routing_status):
        """
        Implementing set routing status for search functionality
        :param routing_status:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, routing_status)

    def click_technical_routing_grid_recalc_rgs_button(self):
        """
        Implementing click technical routing grid recalc rgs button functionality
        :return:
        """
        self.click_element(self.technical_route_recalc_rgs_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.recalculate_success_message_locator), 'recalculate success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.click_element(self.save_changes_button_locator)

    def click_move_to_excluded_button(self):
        """
        Implementing click move to excluded button functionality
        :return:
        """
        self.click_element(self.move_to_excluded_button_locator)

    def click_move_to_available_button(self):
        """
        Implementing click move to available button functionality
        :return:
        """
        self.click_element(self.move_to_available_button_locator)

    def click_available_trunks_grid_move_to_suggested_button(self):
        """
        Implementing click available trunks grid move to suggested button functionality
        :return:
        """
        self.click_element(self.available_trunks_grid_move_to_suggested_button_locator, True)

    def click_excluded_trunks_grid_move_to_suggested_button(self):
        """
        Implementing click excluded trunks grid move to suggested button functionality
        :return:
        """
        self.click_element(self.excluded_trunks_grid_move_to_suggested_button_locator, True)

    def click_save_and_recalculate_button(self):
        """
        Implementing click save and recalculate button functionality
        :return:
        """
        save_and_recalculate_button_element = self.wait().until(EC.element_to_be_clickable(self.save_and_recalculate_button_locator), 'save and recalculate button locator not found before specified time out')
        self.hover(save_and_recalculate_button_element)
        self.script_executor_click(save_and_recalculate_button_element)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load(120)

    def select_excluded_trunks_radio_button(self):
        """
        Implementing select excluded trunks radio button functionality
        :return:
        """
        self.click_element(self.excluded_trunks_radio_button_locator, True, True)

    def select_suggested_trunks_grid_first_row_checkbox(self):
        """
        Implementing select suggested trunks grid first row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.suggested_trunks_grid_div_id, None, self.suggested_trunks_grid_checkbox_column_number, True)
        suggested_trunks_grid_row_details = self.get_suggested_trunks_grid_first_row_details()
        self.suggested_trunks_grid_first_row_account = suggested_trunks_grid_row_details[self.account_column_name]

    def select_available_trunks_grid_first_row_checkbox(self):
        """
        Implementing select available trunks grid first row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.available_worksheets_grid_div_id, None, self.available_trunks_grid_checkbox_column_number, True)

    def select_excluded_trunks_grid_first_row_checkbox(self):
        """
        Implementing select excluded trunks grid first row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.excluded_trunks_grid_div_id, None, self.excluded_trunks_grid_checkbox_column_number, True)

    def get_suggested_trunks_grid_first_row_details(self):
        """
        Implementing get suggested trunks grid first row details functionality
        :return: suggested trunks grid row data
        """
        self.grid_row_data_dictionary.clear()
        self.grid_row_data_dictionary.update({"Trunk": "", "Account": "", "Rate": "", "Rate Eff. Date": "", "Begin Date": "", "End Date": ""})
        return self.get_grid_row_details(self.suggested_trunks_grid_div_id, self.grid_row_data_dictionary, self.suggested_trunks_data_grid_name)

    def get_excluded_trunks_grid_first_row_details(self):
        """
        Implementing get excluded trunks grid first row details functionality
        :return: excluded trunks grid row data
        """
        self.grid_row_data_dictionary.clear()
        self.grid_row_data_dictionary.update({"Trunk": "", "Account": "", "Rate": "", "Rate Eff. Date": ""})
        return self.get_grid_row_details(self.excluded_trunks_grid_div_id, self.grid_row_data_dictionary, self.excluded_trunks_data_grid_name)

    def get_available_trunks_grid_first_row_details(self):
        """
        Implementing get available trunks grid first row details functionality
        :return: available trunks grid row data
        """
        self.grid_row_data_dictionary.clear()
        self.grid_row_data_dictionary.update({"Trunk": "", "Account": "", "Rate": "", "Rate Eff. Date": ""})
        return self.get_grid_row_details(self.available_worksheets_grid_div_id, self.grid_row_data_dictionary, self.available_trunks_data_grid_name)

    def click_technical_routing_exclusion_button(self):
        """
        Implementing click technical routing exclusion button functionality
        :return:
        """
        self.click_element(self.technical_routing_exclusion_button)

    def set_new_exclusion_level(self, exclusion_level):
        """
        Implementing set new exclusion level functionality
        :param exclusion_level:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_exclusion_level_dropdown_arrow_locator, exclusion_level)

    def set_exclusion_begin_date(self, begin_date):
        """
        Implementing set exclusion begin date functionality
        :param begin_date:
        :return: begin_date, returns set begin date
        """
        if begin_date == "":
            begin_date = self.get_date(current_date=True)
        self.set_value_into_input_field(self.inclusion_begin_date_inputbox_locator, begin_date)
        self.exclusion_begin_date = begin_date
        return begin_date

    def set_exclusion_end_date(self, end_date):
        """
        Implementing set exclusion end date functionality
        :param end_date:
        :return:
        """
        if end_date == "":
            end_date = self.get_date(given_date=self.exclusion_begin_date, future_date=True, number_of_days_to_add=1)
        self.set_value_into_input_field(self.exclusion_end_date_inputbox_locator, end_date)

    def set_new_exclusion_category(self, category_list):
        """
        Implementing set new exclusion category functionality
        :param category_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_exclusion_category_dropdown_locator, category_list)

    def set_new_exclusion_group(self, group_list):
        """
        Implementing set new exclusion group functionality
        :param group_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_exclusion_group_dropdown_locator, group_list)

    def set_new_exclusion_service(self, service_list):
        """
        Implementing set new exclusion service functionality
        :param service_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_exclusion_service_dropdown_locator, service_list)

    def set_new_exclusion_routing_product(self, routing_product_list):
        """
        Implementing set new exclusion routing product functionality
        :param routing_product_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.new_exclusion_routing_product_dropdown_locator, routing_product_list)

    def set_exclusion_type(self, exclusion_type):
        """
        Implementing set exclusion type functionality
        :param exclusion_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.exclusion_type_dropdown_locator, exclusion_type)

    def get_exclusions_grid_row_details(self, row_identifier_text):
        """
        Implementing get exclusions grid row details functionality
        :param row_identifier_text:
        :return: exclusions_grid_row_data
        """
        self.grid_row_data_dictionary.clear()
        self.grid_row_data_dictionary = {"Trunk": "", "Route Class": "", "Routing Product": "", "Account": "", "Begin Date": "", "Reason": ""}
        exclusions_grid_row_data = self.get_grid_row_details_with_unique_identifier(self.exclusions_grid_div_id, self.grid_row_data_dictionary, row_identifier_text)
        return exclusions_grid_row_data

    def click_exclusions_grid_inline_action_button(self, row_identifier_text):
        """
        Implementing click exclusions grid inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.exclusions_grid_div_id, row_identifier_text, self.exclusions_grid_inline_action_column_number)

    def select_delete_exclusion_inline_item(self):
        """
        Implementing select delete exclusion inline item functionality
        :return:
        """
        self.select_route_module_inline_item(self.delete_exclusion_inline_item_name)
        try:
            self.wait().until(EC.visibility_of_element_located(self.delete_confirmation_pop_up_locator), 'delete confirmation pop up locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
            self.wait().until(EC.visibility_of_element_located(self.exclusions_deleted_successful_message_locator), 'exclusions deleted successful message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def select_exclusions_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select exclusions grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.exclusions_grid_div_id, row_identifier_text, self.exclusions_grid_checkbox_column_number)

    def click_technical_routing_override_button(self):
        """
        Implementing click technical routing override button functionality
        :return:
        """
        self.click_element(self.technical_routing_override_button_locator)

    def select_emergency_re_routing_available_trunks_grid_first_row_checkbox(self):
        """
        Implementing select emergency rerouting available trunks grid first row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.available_trunks_grid_div_id, None, self.available_trunks_grid_checkbox_column_number, first_row=True)

    def click_to_rank_button(self):
        """
        Implementing click to rank button functionality
        :return:
        """
        self.click_element(self.to_rank_button_locator, script_executor=True, hover=True)

    def move_available_trunk_into_rank_grid(self):
        """
        Implementing move available trunk into rank grid functionality
        :return:
        """
        try:
            target = self.wait().until(EC.presence_of_element_located(self.move_trunks_target_locator), 'target locator not found before specified time out')
            source_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::table[@data-role='sortable']/descendant::tr[1]" % self.available_trunks_grid_div_id)
            source = self.wait().until(EC.presence_of_element_located(source_locator), 'source locator not found before specified time out')
            remove_button_element = self.wait().until(EC.presence_of_element_located(self.remove_button_locator), 'remove button locator not found before specified time out')
            self.hover(remove_button_element)
            middle_row_element = self.wait().until(EC.presence_of_element_located(self.middle_row_locator), 'middle row locator not found before specified time out')
            self.hover(middle_row_element)
            self.drag_and_drop(source, target)
            self.wait_for_ajax_spinner_load()
        except:
            raise

    def set_route_percentage_values(self):
        """
        Implementing set route percentage values functionality
        :return:
        """
        to_rank_grid_number_of_rows = self.get_grid_row_count(self.rank_grid_count_span_locator, 2)
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.rank_grid_div_id, self.route_percentage_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        percentage_value = (100/int(to_rank_grid_number_of_rows))
        for row in range(to_rank_grid_number_of_rows):
            row_column_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::input[@type='checkbox']/../../descendant::td[%s]/span[@class='k-grid-cell'])[%s]" % (self.rank_grid_div_id, str(column_index), str(row+1)))
            self.set_value_into_input_field(row_column_locator, str(percentage_value), True, True)
            self.click_element(self.route_class_span_locator, hover=True)

    def get_ranked_trunks(self):
        """
        Implementing get ranked trunks functionality
        :return:
        """
        to_rank_grid_number_of_rows = self.get_grid_row_count(self.rank_grid_count_span_locator, 2)
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.rank_grid_div_id, self.trunk_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        for row in range(to_rank_grid_number_of_rows):
            row_column_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::input[@type='checkbox']/../../descendant::td[%s]/span[@class='k-grid-cell'])[%s]" % (self.rank_grid_div_id, str(column_index), str(row + 1)))
            row_column_element = self.wait().until(EC.visibility_of_element_located(row_column_locator), 'row column locator not found before specified time out')
            self.ranked_trunks_list.append(row_column_element.text)

    def click_emergency_routing_save_button(self):
        """
        Implementing click emergency routing save button functionality
        :return:
        """
        self.click_element(self.emergency_routing_save_button_locator, True, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def verify_priority_status_changed(self):
        """
        Implementing verify priority status changed functionality
        :return: True/False
        """
        status_changed = False
        self.grid_row_dictionary.clear()
        self.grid_row_dictionary = {"Priority": ""}
        commercial_routing_grid_row_data = self.get_grid_row_details(self.commercial_routing_grid_div_id, self.grid_row_dictionary)
        if commercial_routing_grid_row_data["Priority"] == "Emergency ReRoute":
            status_changed = True
        return status_changed

    def verify_suggested_trunks(self):
        """
        Implementing verify suggested trunks functionality
        :return: True/False
        """
        is_verified = False
        suggested_trunks_grid_number_of_rows = self.get_grid_row_count(self.suggested_trunks_grid_count_span_locator, 2)
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.suggested_trunks_grid_div_id, self.trunk_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        for row in range(suggested_trunks_grid_number_of_rows):
            row_column_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::input[@type='checkbox']/../../descendant::td[%s]/span[@class='k-grid-cell'])[%s]" % (self.suggested_trunks_grid_div_id, str(column_index), str(row + 1)))
            row_column_element = self.wait().until(EC.visibility_of_element_located(row_column_locator), 'row column locator not found before specified time out')
            self.suggested_trunks_list.append(row_column_element.text)
        if self.suggested_trunks_list == self.ranked_trunks_list:
            is_verified = True
        return is_verified

    def set_priority_for_search(self, priority):
        """
        Implementing set priority for search functionality
        :param priority:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.priority_dropdown_locator, priority)

    def get_selected_route_class(self):
        """
        Implementing get selected route class functionality
        :return: selected_route_class
        """
        selected_route_class_element = self.wait().until(EC.presence_of_element_located(self.route_class_input_locator), 'route class input locator not found before specified time out')
        self.selected_route_class = selected_route_class_element.text
        return self.selected_route_class

    def get_selected_routing_product(self):
        """
        Implementing get selected routing product functionality
        :return: selected_routing_product
        """
        selected_routing_product_element = self.wait().until(EC.presence_of_element_located(self.routing_product_input_locator), 'routing product input locator not found before specified time out')
        self.selected_routing_product = selected_routing_product_element.text
        return self.selected_routing_product

    def set_route_class_for_search(self, route_class_list):
        """
        Implementing set route class for search functionality
        :param route_class_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.route_class_dropdown_locator, route_class_list)
        self.click_element(self.page_header_locator)

    def set_routing_product_for_search(self, routing_product_list):
        """
        Implementing set routing product for search functionality
        :param routing_product_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.routing_product_dropdown_locator, routing_product_list)
        self.click_element(self.page_header_locator)

    def sort_column_in_ascending_order(self, column_name):
        """
        Implementing sort column in ascending order functionality
        :param column_name:
        :return:
        """
        column_locator = (By.XPATH, "//th[@data-title='%s']" % str(column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        sorted_status = column_element.get_attribute("aria-sort")
        if str(sorted_status).lower() == "ascending":
            pass
        elif str(sorted_status).lower() == "descending":
            for x in range(0,2):
                self.click_element(column_locator)
        else:
            self.click_element(column_locator)

    def is_commercial_routing_page_loaded_properly(self):
        """
        Implementing is commercial routing page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.commercial_route_guide_page_header_locator)

    def click_technical_routing_benchmarks_button(self):
        """
        Implementing click technical routing benchmarks button functionality
        :return:
        """
        self.click_element(self.technical_routing_benchmarks_button_locator)

    def compare_qos_grid_row_details_with_excel_data(self):
        """
        Implementing compare qos grid row details with excel data functionality
        :return: True/False
        """
        is_compared = True
        self.grid_row_data_dictionary.clear()
        self.grid_row_data_dictionary.update({"Route Class": "", "Routing Product": "", "Target ASR": "", "Minimum ASR": "", "Target ALOC": "", "Minimum ALOC": "", "Target NER": "", "Minimum NER": ""})
        qos_grid_row_details = self.get_grid_row_details(self.qos_grid_div_id, self.grid_row_data_dictionary, self.qos_data_grid_name)
        qos_grid_row_details.update({"Product": qos_grid_row_details.pop("Routing Product")})
        excel_data_dictionary = self.get_excel_data_dictionary()
        for key in qos_grid_row_details:
            if "Target" in key or "Minimum" in key:
                qos_grid_row_details[key] = float(qos_grid_row_details[key])
                excel_data_dictionary[key] = float(excel_data_dictionary[key])
            if qos_grid_row_details[key] != excel_data_dictionary[key]:
                is_compared = False
                break
        return is_compared

    def click_technical_routing_grid_first_row_routing_product_link(self):
        """
        Implementing click technical routing grid first row routing product link functionality
        :return:
        """
        self.click_element(self.technical_routing_grid_first_row_routing_product_link_locator)

    def filter_suggested_trunks_grid_account_column(self):
        """
        Implementing filter suggested trunks grid account column functionality
        :return:
        """
        filter_item_list = [self.suggested_trunks_grid_first_row_account]
        self.grid_filter_details(self.account_column_name, filter_item_list)

    def click_fast_track_exclusion_button(self):
        """
        Implementing click fast track exclusion button functionality
        :return:
        """
        self.click_element(self.fast_track_exclusion_button_locator)

    def set_fast_track_exclusion_begin_date(self, begin_date):
        """
        Implementing set fast track exclusion begin date functionality
        :param begin_date:
        :return:
        """
        self.set_value_into_input_field(self.fast_track_exclusion_begin_date_locator, begin_date)

    def set_fast_track_exclusion_end_date(self, end_date):
        """
        Implementing set fast track exclusion end date functionality
        :param end_date:
        :return:
        """
        self.set_value_into_input_field(self.fast_track_exclusion_end_date_locator, end_date)

    def set_fast_track_exclusion_note(self, note):
        """
        Implementing set fast track exclusion note functionality
        :param note:
        :return:
        """
        self.set_value_into_input_field(self.fast_track_exclusion_note_textarea_locator,note)

    def set_fast_track_exclusion_account(self, account_list):
        """
        Implementing set fast track exclusion account functionality
        :param account_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.fast_track_exclusion_account_kendo_dropdown_locator, account_list, self.account_kendo_dropdown_span_locator)

    def set_fast_track_exclusion_country(self, country_list):
        """
        Implementing set fast track exclusion country functionality
        :param country_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.fast_track_exclusion_country_kendo_dropdown_locator, country_list, self.country_kendo_dropdown_span_locator)

    def click_products_go_button(self):
        """
        Implementing click products go button functionality
        :return:
        """
        self.click_element(self.products_go_button_locator, hover=True)

    def click_fast_track_exclusion_save_button(self):
        """
        Implementing click fast track exclusion save button functionality
        :return:
        """
        self.click_element(self.fast_track_exclusion_save_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.save_fast_track_exclusion_success_message_locator), 'save fast track exclusion success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_trunks_go_button(self):
        """
        Implementing click trunks go button functionality
        :return:
        """
        self.click_element(self.trunks_go_button_locator)

    def click_transition_automation_link(self):
        """
        Implementing click transition automation link functionality
        :return:
        """
        self.click_element(self.transition_automation_locator)

    def click_new_transition_button(self):
        """
        Implementing click new transition button functionality
        :return:
        """
        self.click_element(self.new_transition_button_locator)

    def set_new_automated_transition_route_class(self, route_class):
        """
        Implementing set new automated transition route class functionality
        :param route_class:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.route_class_dropdown_arrow_locator, route_class)

    def set_new_automated_transition_country_type(self, country_type):
        """
        Implementing set new automated transition country type functionality
        :param country_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.country_type_dropdown_arrow_locator, country_type)

    def set_new_automated_transition_country(self, country):
        """
        Implementing set new automated transition country functionality
        :param country:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.country_dropdown_arrow_locator, country)

    def set_new_automated_transition_routing_product(self, routing_product):
        """
        Implementing set new automated transition routing product functionality
        :param routing_product:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.routing_product_dropdown_arrow_locator, routing_product)

    def set_new_automated_transition_value(self, transition):
        """
        Implementing set new automated transition value functionality
        :param transition:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.transition_dropdown_arrow_locator, transition)

    def select_automated_radio_button(self, choice):
        """
        Implementing select automated radio button functionality
        :param choice:
        :return:
        """
        if choice.lower() == "yes":
            self.click_element(self.automated_yes_radio_button_locator)
        elif choice.lower() == "no":
            self.click_element(self.automated_no_radio_button_locator)

    def set_new_automated_transition_resolution_order(self, resolution_order):
        """
        Implementing set new automated transition resolution order functionality
        :param resolution_order:
        :return:
        """
        self.set_value_into_input_field(self.resolution_order_input_field_locator, resolution_order, True)

    def click_save_button(self):
        """
        Implementing click save button functionality
        :return:
        """
        self.click_element(self.save_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_country_type_for_search(self, country_type_list):
        """
        Implementing set country type for search functionality
        :param country_type_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.country_type_kendo_dropdown_locator, country_type_list)

    def set_transition_for_search(self, transition_list):
        """
        Implementing set transition for search functionality
        :param transition_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.transition_kendo_dropdown_locator, transition_list)

    def set_transition_country_for_search(self, country_list):
        """
        Implementing set transition country for search functionality
        :param country_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.country_multiselect_kendo_dropdown_locator, country_list)

    def set_automated_choice_for_search(self, automated_choice):
        """
        Implemented set automated choice for search functionality
        :param automated_choice:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.automated_kendo_dropdown_locator, automated_choice)

    def click_transition_automation_search_button(self):
        """
        Implementing click transition automation search button functionality
        :return:
        """
        self.click_element(self.transition_automation_search_button_locator, True)

    def get_transition_automation_grid_row_details(self):
        """
        Implementing get transition automation grid row details functionality
        :return: transition_automation_grid_row_data
        """
        self.grid_row_dictionary.clear()
        self.grid_row_dictionary = {"Route Class": "", "Routing Product": "", "Country": "", "Transition State": ""}
        for key in self.grid_row_dictionary.keys():
            column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.transition_automation_grid_div_id, str(key)))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index"))+1
            column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/span" % (self.transition_automation_grid_div_id, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value not found before specified time out')
            column_value = column_value_element.text
            self.grid_row_dictionary[key] = str(column_value)
        return self.grid_row_dictionary

    def select_transition_automation_grid_first_row_checkbox(self):
        """
        Implementing select transition automation grid first row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.transition_automation_grid_div_id, None, self.transition_automation_grid_checkbox_column_number, True)

    def click_transition_automation_delete_button(self):
        """
        Implementing click transition automation delete button functionality
        :return:
        """
        self.click_element(self.transition_automation_delete_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.transition_automation_delete_success_message_locator), 'transition automation delete success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_transition_automation_bulk_edit_button(self):
        """
        Implementing click transition automation bulk edit button functionality
        :return:
        """
        self.click_element(self.transition_automation_bulk_edit_button_locator)

    def set_bulk_edit_automated_value(self, automated_value):
        """
        Implementing set bulk edit automated value functionality
        :param automated_value:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.bulk_edit_automated_dropdown_locator, automated_value)
        self.click_element(self.transition_automation_bulk_edit_window_title_locator)

    def set_bulk_edit_resolution_order(self, resolution_order):
        """
        Implementing set bulk edit resolution order functionality
        :param resolution_order:
        :return:
        """
        self.set_value_into_input_field(self.bulk_edit_resolution_order_locator, resolution_order)
        self.click_element(self.transition_automation_bulk_edit_window_title_locator)

    def click_transition_automation_save_changes_button(self):
        """
        Implementing click transition automation save changes button functionality
        :return:
        """
        self.click_element(self.transition_automation_save_changes_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_transition_automation_first_row_inline_action_button(self):
        """
        Implementing click transition automation first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.transition_automation_grid_div_id, None, self.transition_automation_grid_inline_action_column_number, True)

    def select_transition_automation_delete_inline_action_item(self):
        """
        Implementing select transition automation delete inline action item functionality
        :return:
        """
        self.select_inline_action_item(self.delete_inline_action_item, self.transition_automation_module_name)
        try:
            self.wait().until(EC.visibility_of_element_located(self.transition_automation_delete_success_message_locator), 'transition automation delete success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_inclusion_country_for_search(self, list_of_country):
        """
        Implementing set inclusion country for search functionality
        :param list_of_country:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.inclusion_county_kendo_dropdown_locator, list_of_country)

    def set_inclusion_routing_product_for_search(self, routing_product_list):
        """
        Implementing set inclusion routing product for search functionality
        :param routing_product_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.inclusion_routing_product_dropdown_locator, routing_product_list)
        self.click_element(self.page_header_locator)

    def set_new_suggestion_route_class_value(self, dropdown_value):
        """
        Implementing set new suggestion route class value functionality
        :param dropdown_value:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.new_suggestion_route_class_locator, dropdown_value)

    def set_new_suggestion_routing_product_value(self, dropdown_value):
        """
        Implementing set new suggestion routing product value functionality
        :param dropdown_value:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.new_suggestion_routing_product_locator, dropdown_value)

    def click_create_route_suggestion_button(self):
        """
        Implementing click create route suggestion button functionality
        :return:
        """
        self.click_element(self.create_route_suggestion_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_for_suggestion_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            pass

    def select_commercial_dashboard_tab(self):
        """
        Implementing select commercial dashboard tab functionality
        :return:
        """
        self.select_static_tab(self.commercial_dashboard_tab_locator, 'commercial dashboard tab not found before specified time')

    def click_manage_reason_link(self):
        """
        Implementing click manage reason link functionality
        :return:
        """
        self.click_element(self.manage_reasons_locator)

    def click_add_new_reason_button(self):
        """
        Implementing click add new reason button functionality
        :return:
        """
        self.click_element(self.add_new_reason_button_locator)

    def set_value_in_reason_column(self, prefix):
        """
        Implementing set value in reason column functionality
        :param prefix:
        :return:
        """
        global created_reason
        created_reason = prefix + self.random_string_generator(6)
        column_locator = (By.XPATH, "//th[@data-title='%s']" % self.reason_column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/input" % (self.manage_reasons_grid_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        first_row_column_element.click()
        self.wait_for_ajax_spinner_load()
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(str(created_reason))
        self.click_element(self.manage_reasons_header_locator)

    def get_created_reason(self):
        """
        Implementing get created reason functionality
        :return: created_reason
        """
        global created_reason
        return created_reason

    def set_value_in_scope_column(self, dropdown_value):
        """
        Implementing set value in scope column functionality
        :param dropdown_value:
        :return:
        """
        column_locator = (By.XPATH, "//th[@data-title='%s']" % self.scope_column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::span[@class='k-input']" % (self.manage_reasons_grid_div_id, str(column_index)))
        self.single_selection_from_static_kendo_dropdown(first_row_column_locator, dropdown_value)
        self.wait_for_ajax_spinner_load()

    def click_manage_reasons_save_button(self):
        """
        Implementing click manage reasons save button functionality
        :return:
        """
        column_locator = (By.XPATH, "//th[@data-role='droptarget']")
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::a" % (self.manage_reasons_grid_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        first_row_column_element.click()
        try:
            self.wait().until(EC.visibility_of_element_located(self.fixed_note_success_message_locator), 'fixed note success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_route_class_for_benchmark_management(self, route_class_list):
        """
        Implementing set route class for benchmark management functionality
        :param route_class_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.route_class_dropdown_locator_for_benchmark, route_class_list)
        self.click_element(self.page_header_locator)

    def click_technical_routing_benchmarks_search_button(self):
        """
        Implementing click technical routing benchmarks search button functionality
        :return:
        """
        self.click_element(self.technical_routing_benchmarks_search_button_locator, True)
        self.wait_for_ajax_spinner_load()

    def set_routing_product_for_benchmark_management(self, routing_product_list):
        """
        Implementing set routing product for benchmark management functionality
        :param routing_product_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.routing_product_dropdown_locator_for_benchmark, routing_product_list, True)
        self.click_element(self.page_header_locator)

    def click_route_guide_adjuster_button(self):
        """
        Implementing click route guide adjuster button functionality
        :return:
        """
        self.click_element(self.route_guide_adjuster_button_locator, True)
        self.wait_for_ajax_spinner_load()

    def click_view_trgs_button(self):
        """
        Implementing click view trgs button functionality
        :return:
        """
        self.click_element(self.view_rtgs_button_locator, True)

    def click_adjust_button(self):
        """
        Implementing click adjust button functionality
        :return:
        """
        self.click_element(self.adjust_button_locator, True)
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.guide_adjuster_success_message_locator), 'guide adjuster success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def get_all_rows_value_of_trunks_column_from_route_guide_adjuster_grid(self):
        """
        Implementing get all rows value of trunks column from route guide adjuster grid functionality
        :return: all_row_data
        """
        row_count = self.get_grid_row_count(self.route_guide_adjuster_grid_count_span_locator, 2)
        self.all_row_data = []
        next_page = False
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.route_guide_adjuster_grid_div_id, self.route_guide_adjuster_trunks_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        row = 1
        try:
            while row < row_count + 1:
                column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tbody[@role='rowgroup']/tr[%s]/td[%s]/a" % (self.route_guide_adjuster_grid_div_id, row, str(column_index)))
                column_value_element = self.wait(10).until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = str(column_value_element.get_attribute("innerHTML"))
                if column_value not in self.all_row_data:
                    self.all_row_data.append(column_value)
                else:
                    row_count += 1
                if row % 50 == 0:
                    next_page = True
                    next_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-arrow-e']" % self.route_guide_adjuster_grid_div_id)
                    self.click_element(next_page_button_locator, True)
                    row = 0
                    row_count -= 50
                row += 1
        except:
            pass
        if next_page is True:
            first_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-seek-w']" % self.route_guide_adjuster_grid_div_id)
            self.click_element(first_page_button_locator, True)

    def compare_rgs(self):
        """
        Implementing compare rgs functionality
        :return: True/False
        """
        is_matched = True
        column_locator = (By.XPATH, "//div[contains(@id, 'TechnicalRGAdjusterGrid')]/descendant::th[@data-title='Trunks']")

        for i in range(len(self.all_row_data)):
            self.single_selection_from_static_kendo_dropdown(self.trunks_kendo_dropdown_locator, self.all_row_data[i])
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index"))
            column_value_locator = (By.XPATH, "//div[contains(@id, 'TechnicalRGAdjusterGrid')]/descendant::tbody[@role='rowgroup']/tr[1]/td[%s]/span" % (str(column_index)))
            column_value_element = self.wait(10).until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')

            if (str(column_value_element.text) != str(self.all_row_data[i])):
                is_matched = False
                break
        return is_matched

    def is_trg_adjuster_tab_present(self):
        """
        Implementing is trg adjuster tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.trg_adjuster_tab_locator)
        return is_present

    def click_route_class_benchmarks_margin_save_changes_button(self):
        """
        Implementing click route class benchmarks margin save changes button functionality
        :return:
        """
        route_class_benchmarks_margin_save_changes_button_element = self.wait().until(EC.presence_of_element_located(self.route_class_benchmarks_margin_save_changes_button_locator), 'locator not found before specified time out')
        self.script_executor_click(route_class_benchmarks_margin_save_changes_button_element)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_route_guide_benchmarks_save_changes_button(self):
        """
        Implementing click route guide benchmarks save changes button functionality
        :return:
        """
        route_guide_benchmarks_save_changes_button_element = self.wait().until(EC.presence_of_element_located(self.route_guide_benchmarks_save_changes_button_locator), 'locator not found before specified time out')
        self.script_executor_click(route_guide_benchmarks_save_changes_button_element)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_customer_specific_routing_button(self):
        """
        Implementing click customer specific routing button functionality
        :return:
        """
        self.click_element(self.customer_specific_routing_button_locator)

    def set_destination_category_no_1(self, destination_category_list):
        """
        Implementing set destination category no 1 functionality
        :param destination_category_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.destination_category_no_1_dropdown_locator, destination_category_list)

    def set_destination_category_no_2(self, destination_category_list):
        """
        Implementing set destination category no 2 functionality
        :param destination_category_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.destination_category_no_2_dropdown_locator, destination_category_list)

    def click_customer_specific_routing_search_button(self):
        """
        Implementing click customer specific routing search button functionality
        :return:
        """
        self.click_element(self.customer_specific_routing_search_button_locator)

    def set_commercial_routing_grid_settings(self, grid_settings):
        """
        Implementing set commercial routing grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.commercial_routing_grid_div_id, grid_settings)

    def get_commercial_routing_grid_column_names_by_order(self):
        """
        Implementing get commercial routing grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.commercial_routing_grid_div_id)
        return self.column_name_list

    def drag_commercial_routing_grid_column(self, source_column, destination_column):
        """
        Implementing drag commercial routing grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.commercial_routing_grid_div_id, source_column, destination_column)

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

    def click_carrier_test_management_button(self):
        """
        Implementing click carrier test management button functionality
        :return:
        """
        self.click_element(self.carrier_test_management_button_locator)

    def click_new_test_button(self):
        """
        Implementing click new test button functionality
        :return:
        """
        self.click_element(self.new_test_button_locator)

    def set_carrier_new_test_account(self, account_name):
        """
        Implementing set carrier new test account functionality
        :param account_name:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.carrier_new_test_account_dropdown_arrow_locator, account_name)

    def set_carrier_new_test_trunk(self, trunk_name):
        """
        Implementing set carrier new test trunk functionality
        :param trunk_name:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.carrier_new_test_trunk_dropdown_arrow_locator, trunk_name)

    def set_carrier_new_test_routing_product(self, routing_product):
        """
        Implementing set carrier new test routing product functionality
        :param routing_product:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.carrier_new_test_routing_product_dropdown_arrow_locator, routing_product)

    def set_carrier_new_test_route_class(self, route_class):
        """
        Implementing set carrier new test route class functionality
        :param route_class:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.carrier_new_test_route_class_dropdown_arrow_locator, route_class)

    def click_create_test_button(self):
        """
        Implementing click create test button functionality
        :return:
        """
        self.click_element(self.create_test_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def is_specific_column_present(self, grid_div_id, column_name):
        """
        Implementing is specific selection column present functionality
        :param grid_div_id: 
        :param column_name: 
        :return: True/False
        """
        specific_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-field='%s']" % (grid_div_id, column_name))
        return self.is_element_present(specific_column_locator)

    def is_country_column_present_in_crgm_grid(self):
        """
        Implementing is country column present in crmg grid functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.commercial_routing_grid_div_id, self.country_column_name)

    def is_country_column_present_in_overrides_management_grid(self):
        """
        Implementing is country column present in overrides management grid functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.overrides_grid_div_id, self.country_column_name)

    def is_country_column_present_in_inclusion_management_grid(self):
        """
        Implementing is country column present in inclusion management grid functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.inclusions_grid_div_id, self.country_column_name)

    def is_country_column_present_in_exclusion_management_grid(self):
        """
        Implementing is country column present in exclusion management grid functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.exclusions_grid_div_id, self.country_column_name)

    def set_first_routing_product_for_search(self):
        """
        Implementing set first routing product for search functionality
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.routing_product_dropdown_locator, None, False, self.routing_product_listbox_id)
        self.click_element(self.page_header_locator)

    def clear_routing_product_dropdown_selection(self):
        """
        Implementing clear routing product dropdown selection functionality
        :return:
        """
        self.clear_multiselect_kendo_dropdown(self.routing_product_label)

    def click_new_csr_button(self):
        """
        Implementing click new csr button functionality
        :return:
        """
        self.click_element(self.new_csr_button_locator)

    def set_csr_product(self, product_name):
        """
        Implementing set csr product functionality
        :param product_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.csr_product_kendo_dropdown_locator, product_name)

    def set_csr_customer(self, carrier_name, trunk_name):
        """
        Implementing set csr customer functionality
        :param carrier_name:
        :param trunk_name:
        :return:
        """
        customer_name = carrier_name + " - " + trunk_name
        self.single_selection_from_static_kendo_dropdown(self.csr_customer_kendo_dropdown_locator, customer_name)

    def select_to_rank_grid_first_row_checkbox(self):
        """
        Implementing select to rank grid first row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.to_rank_grid_div_id, None, self.to_rank_grid_checkbox_column_number, True)

    def click_csr_to_rank_button(self):
        """
        Implementing click csr to rank button functionality
        :return:
        """
        self.click_element(self.crs_to_rank_button_locator)

    def set_value_in_rcn_to_rank_grid_column(self):
        """
        Implementing set value in rcn to rank grid column functionality
        :return:
        """
        column_value = "100"
        self.set_value_in_grid_column(self.rcn_to_rank_grid_div_id, self.route_column_name, column_value, True)
        self.click_element(self.crs_header_locator)

    def click_review_route_guides_button(self):
        """
        Implementing click review route guides button functionality
        :return:
        """
        self.click_element(self.review_route_guide_button_locator)

    def click_csr_save_and_create_button(self):
        """
        Implementing click csr save and create button functionality
        :return:
        """
        self.click_element(self.save_and_create_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_csrm_grid_first_row_routing_product_link(self):
        """
        Implementing click csrm grid first row routing product link functionality
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='Routing Product']" % self.csrm_grid_div_id)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        crsm_grid_first_row_routing_products_link_locator = (By.XPATH, "//div[contains(@id, 'divRCMGrid_')]/descendant::div[@class='k-grid-content']/descendant::tr[1]/td[%s]/a[@data-role='routing-product']" % str(column_index))
        self.click_element(crsm_grid_first_row_routing_products_link_locator)

    def is_specific_grid_present_in_route_guide_page(self, div_id):
        """
        Implementing is specific grid present in route guide page functionality
        :param div_id:
        :return: True/False
        """
        specific_grid_locator = (By.XPATH, "//div[contains(@id, '%s')]" % div_id)
        return self.is_element_present(specific_grid_locator)

    def is_suggested_trunk_grid_present(self):
        """
        Implementing is suggested trunk grid present functionality
        :return: True/False
        """
        return self.is_specific_grid_present_in_route_guide_page(self.suggested_trunks_grid_div_id)

    def is_available_worksheets_grid_present(self):
        """
        Implementing is available worksheets grid present functionality
        :return: True/False
        """
        return self.is_specific_grid_present_in_route_guide_page(self.available_worksheets_grid_div_id)

    def is_excluded_trunks_grid_present(self):
        """
        Implementing is excluded trunks grid present functionality
        :return: True/False
        """
        return self.is_specific_grid_present_in_route_guide_page(self.excluded_trunks_grid_div_id)

    def set_override_in_grid(self, override_rank):
        """
        Implementing set override in grid functionality
        :param override_rank:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.suggested_trunks_grid_div_id, self.override_column_name, override_rank, data_grid_name=self.suggested_trunks_data_grid_name)
        self.click_element(self.grid_row_count_locator)
        self.wait_for_ajax_spinner_load()

    def compare_suggested_trunks_grid_begin_date(self, actual_date):
        """
        Implementing compare suggested trunks grid begin date functionality
        :param actual_date:
        :return: True/False
        """
        is_matched = False
        if (str(actual_date) == str(self.get_current_date())):
            is_matched = True
        return is_matched

    def compare_suggested_trunks_grid_end_date(self, actual_date):
        """
        Implementing compare suggested trunks grid end date functionality
        :param actual_date:
        :return: True/False
        """
        is_matched = False
        if (str(actual_date) != ""):
            is_matched = True
        return is_matched

    def click_suggested_trunks_cancel_changes_button(self):
        """
        Implementing click suggested trunks cancel changes button functionality
        :return:
        """
        self.click_element(self.suggested_trunks_cancel_changes_button_locator)

    def is_available_worksheets_grid_not_present(self):
        """
        Implementing is available worksheets grid not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.available_worksheets_grid_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def get_suggested_trunks_grid_first_row_data(self, column_name):
        """
        Implementing get suggested trunks grid first row data functionality
        :param column_name: 
        :return: column_value
        """
        column_locator = (By.XPATH, "//div[contains(@id, 'divRgWorksheetSuggested_C') and @data-grid-name='RGWSuggestedGrid']/descendant::th[@data-title='%s']" % column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        column_value_locator = (By.XPATH, "//div[contains(@id, 'divRgWorksheetSuggested_C') and @data-grid-name='RGWSuggestedGrid']/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/span[@class='k-grid-cell']" % str(column_index))
        column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value not found before specified time out')
        column_value = column_value_element.text
        return  column_value

    def is_excluded_trunks_grid_not_present(self):
        """
        Implementing is excluded trunks grid not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.excluded_trunks_grid_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def is_csrm_grid_column_present(self, column_name):
        """
        Implementing is csrm grid column present functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.csrm_grid_div_id, column_name))
        return self.is_element_present(column_locator)

    def is_route_guide_grid_column_present(self, column_name):
        """
        Implementing is route guide grid column present functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.route_guide_grid_div_id, column_name))
        return self.is_element_present(column_locator)

    def set_route_guide_grid_override(self, override_rank):
        """
        Implementing set route guide grid override functionality
        :param override_rank:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.rg_worksheet_trunks_grid_div_id, self.override_column_name, override_rank, data_grid_name=self.rg_worksheet_data_grid_name)
        self.click_element(self.page_header_locator)
        self.wait_for_ajax_spinner_load()

    def set_route_guide_grid_end_date(self, end_date):
        """
        Implementing set route guide grid end date functionality
        :param end_date:
        :return:
        """
        self.set_value_in_grid_column(self.rg_worksheet_trunks_grid_div_id, self.end_date_column_name, end_date)
        self.click_element(self.page_header_locator)
        self.wait_for_ajax_spinner_load()

    def get_route_guide_grid_end_date(self):
        """
        Implementing get route guide grid end date functionality
        :return: end_date
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.rg_worksheet_trunks_grid_div_id, self.end_date_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/span" % (self.rg_worksheet_trunks_grid_div_id, str(column_index)))
        column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value not found before specified time out')
        return column_value_element.text

    def is_specific_column_present_in_csrrg_grid(self, column_name):
        """
        Implementing is specific column present in csrrg grid functionality
        :param column_name:
        :return: True/False
        """
        specific_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.route_guide_grid_div_id, column_name))
        return self.is_element_present(specific_column_locator)

    def click_csr_benchmarks_button(self):
        """
        Implementing click csr benchmarks button functionality
        :return:
        """
        self.click_element(self.csr_benchmarks_button_locator, script_executor=True, error_message='csr benchmarks button locator not found before specified time out')

    def is_minimum_mos_column_present_in_csr_benchmark_grid(self):
        """
        Implementing is minimum mos column present in csr benchmark grid functionality
        :return:
        """
        return self.is_element_visible(self.minimum_mos_column_locator)

    def set_minimum_mos_value_into_csr_benchmark_grid_first_row(self, minimum_mos):
        """
        Implementing set minimum mos value into csr benchmark grid first row functionality
        :param minimum_mos:
        :return:
        """
        global minimum_mos_value

        minimum_mos_column_element = self.wait().until(EC.presence_of_element_located(self.minimum_mos_column_locator))
        minimum_mos_column_position = int(minimum_mos_column_element.get_attribute('data-index')) + 1
        minimum_mos_cell_locator = (By.XPATH, "//div[@data-grid-name='CSRBenchmarkManagementGrid']/descendant::div[@class='k-grid-content']/descendant::tr/td[%d]/span" %(minimum_mos_column_position))
        try:
            minimum_mos_cell_element = self.wait().until(EC.presence_of_element_located(minimum_mos_cell_locator))
            current_minimum_mos_value = (minimum_mos_cell_element.text).strip()
            if current_minimum_mos_value == '5.00' or current_minimum_mos_value == '5':
                minimum_mos_value = 4
            else:
                minimum_mos_value = minimum_mos
            self.set_value_into_input_field(minimum_mos_cell_locator, minimum_mos_value, use_win32com=True)
            csr_benchmark_header_locator = (By.XPATH, "//h3[text()='CSR Benchmark']")
            self.click_element(csr_benchmark_header_locator)
        except:
            raise

    def click_csr_benchmark_grid_save_changes_button(self):
        """
        Implementing click csr benchmark grid save changes button functionality
        :return:
        """
        self.click_element(self.csr_benchmark_grid_save_changes_button_locator, error_message='csr benchmark grid save changes button locator not found before specified time out')
        self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
        self.click_element(self.ok_button_locator)

    def select_csr_benchmark_grid_multiple_rows(self, number_of_rows_to_select):
        """
        Implementing select csr benchmark grid multiple rows functionality
        :param number_of_rows_to_select:
        :return:
        """
        for row in range(1, (number_of_rows_to_select)):
            check_box_locator = (By.XPATH, "//div[@data-grid-name='CSRBenchmarkManagementGrid']/descendant::div[@class='k-grid-content']/descendant::tr[%d]/td[2]/input" % (row))
            self.click_element(check_box_locator, True)

    def click_csr_benchmark_bulk_edit_button(self):
        """
        Implementing click csr benchmark bulk edit button functionality
        :return:
        """
        self.click_element(self.csr_benchmark_bulk_edit_button_locator, error_message='csr benchmark bulk edit button locator not found before specified time out')

    def set_minimum_mos_bulk_edit_value(self):
        """
        Implementing set minimum mos bulk edit value functionality
        :return:
        """
        global minimum_mos_value
        minimum_mos_value = '3.00'
        self.set_value_into_input_field(self.minimum_mos_bulk_edit_input_box_locator, minimum_mos_value)
        self.click_element(self.minimum_mos_label_locator)

    def is_updated_value_persist_in_the_csr_benchmark_grid_after_bulk_edit(self):
        """
        Implementing is updated value persist in the csr benchmark grid after bulk edit functionality
        :return:
        """
        status = False
        global minimum_mos_value
        minimum_mos_column_element = self.wait().until(EC.presence_of_element_located(self.minimum_mos_column_locator))
        minimum_mos_column_position = int(minimum_mos_column_element.get_attribute('data-index')) + 1
        minimum_mos_cell_locator = (By.XPATH, "//div[@data-grid-name='CSRBenchmarkManagementGrid']/descendant::div[@class='k-grid-content']/descendant::tr/td[%d]/span" % (minimum_mos_column_position))
        try:
            minimum_mos_cell_element = self.wait().until(EC.presence_of_element_located(minimum_mos_cell_locator))
            current_minimum_mos_value = (minimum_mos_cell_element.text).strip()
            if current_minimum_mos_value == str(minimum_mos_value):
                status = True
        except:
            raise
        finally:
            return status

    def filter_customer_specific_routing_grid_alerts_column(self, filter_item_list):
        """
        Implementing filter customer specific routing grid alerts column functionality
        :param filter_item_list:
        :return:
        """
        column_name_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']/a[1]" % (self.csrm_grid_div_id, self.alerts_column_name))
        column_name_element = self.wait().until(EC.presence_of_element_located(column_name_locator), 'column name locator not found before specified time out')
        self.hover(column_name_element)
        self.script_executor_click(column_name_element)
        filter_option_locator = (By.XPATH, self.filter_option_locator_string + "li[%s]" % self.filter_column_position)
        filter_option_element = self.wait().until(EC.visibility_of_element_located(filter_option_locator), 'filter option locator not found before specified time out')
        self.wait_for_ajax_spinner_load()
        filter_option_element.click()
        filter_input_textbox_element = self.wait().until(EC.element_to_be_clickable(self.filter_input_textbox_locator), 'kendo dropdown locator not found before specified time out')
        self.script_executor_click(filter_input_textbox_element)
        self.wait_for_ajax_spinner_load()
        for item in filter_item_list:
            dropdown_item_locator = (By.XPATH, "//div[contains(@class, 'k-list-container k-popup k-group k-reset multiselect')]/descendant::li[text()='%s')]" % item)
            self.click_element(dropdown_item_locator)
        filter_button_element = self.wait().until(EC.presence_of_element_located(self.filter_button_locator), 'filter button locator not found before specified time out')
        self.wait_for_ajax_spinner_load()
        self.script_executor_click(filter_button_element)
        self.wait_for_ajax_spinner_load()

    def is_specific_column_present_in_csrm_grid(self, column_name):
        """
        Implementing is specific column present in csrm grid functionality
        :param column_name:
        :return: True/False
        """
        specific_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.csrm_grid_div_id, column_name))
        return self.is_element_present(specific_column_locator)

    def select_csrm_grid_first_row_checkbox(self):
        """
        Implementing select csrm grid first row checkbox functionality
        :return:
        """
        self.click_element(self.csrm_grid_first_row_checkbox_locator)

    def is_new_customer_route_guide_pop_up_present(self):
        """
        Implementing is new customer route guide pop up present functionality
        :return: True/False
        """
        return self.is_element_present(self.crs_header_locator)

    def is_benchmark_management_margin_grid_empty(self):
        """
        Implementing is benchmark management margin grid empty functionality
        :return: True/False
        """
        is_empty = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.benchmark_grid_data_count_locator))
            is_empty = False
        except:
            is_empty = True
        finally:
            return is_empty

    def click_first_row_of_benchmark_management_margin_first_grid(self):
        """
        Implementing click first row of benchmark management margin first grid functionality
        :return:
        """
        element = self.wait().until(EC.element_to_be_clickable(self.benchmark_margin_first_grid_first_row_locator), 'locator not found before specified time out')
        element.click()

    def is_ajax_spinner_load_present(self):
        """
        Implementing is ajax spinner load present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.ajax_spinner_load_locator)
        self.wait_for_ajax_spinner_load()
        return is_present

    def click_first_row_of_benchmark_management_max_route_commercial_first_grid(self):
        """
        Implementing click first row of benchmark management max route commercial first grid functionality
        :return:
        """
        element = self.wait().until(EC.element_to_be_clickable(self.benchmark_max_route_commercial_first_grid_first_row_locator), 'locator not found before specified time out')
        element.click()

    def select_bulk_test_call_tab(self):
        """
        Implementing select bulk test call tab functionality
        :return:
        """
        self.click_element(self.bulk_test_call_tab_locator, script_executor=True)

    def get_message_delivered_column_value_from_bulk_test_call_grid(self):
        """
        Implementing get message delivered column value from bulk test call grid functionality
        :return: last modified date
        """
        global message_delivered_column_value
        message_delivered_column_value = ""
        column_locator = (By.XPATH, "//th[@data-title='%s']" % self.message_delivered_column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        try:
            column_value_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_26_') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::tbody/tr[1]/td[%s]/descendant::span[@class='k-grid-cell']" % (self.route_class_benchmark_data_grid_name, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            message_delivered_column_value = str(column_value_element.text).strip()
        except:
            raise
        finally:
            return message_delivered_column_value

    def set_message_delivered_in_grid(self, dropdown_value):
        """
        Implementing set message delivered in grid functionality
        :param dropdown_value:
        :return:
        """
        if dropdown_value == "":
            dropdown_value = self.get_message_delivered_column_value_from_bulk_test_call_grid()
        column_locator = (By.XPATH, "//th[@data-title='%s']" % self.message_delivered_column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_26_') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::tbody/tr[1]/td[%s]/descendant::span[@class='k-grid-cell']" % (self.route_class_benchmark_data_grid_name, str(column_index)))
        self.click_element(first_row_column_locator, True)
        kendo_dropdown_item_locator = (By.XPATH, "//ul[@id='BenchMarkValue_listbox']/descendant::li[text()='%s']" % dropdown_value)
        kendo_dropdown_item_element = self.wait().until(EC.presence_of_element_located(kendo_dropdown_item_locator), 'item locator not found before specified time out')
        self.script_executor_click(kendo_dropdown_item_element)

    def is_ajax_spinner_load_not_present(self):
        """
        Implementing is ajax spinner load not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.ajax_spinner_load_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def set_message_delivered_in_grid_with_opposite_of_selected_value(self):
        """
        Implementing set message delivered in grid with opposite of selected value functionality
        :return:
        """
        global message_delivered_column_value
        if message_delivered_column_value == "Yes":
            dropdown_value = "No"
        else:
            dropdown_value = "Yes"
        column_locator = (By.XPATH, "//th[@data-title='%s']" % self.message_delivered_column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, 'divRouteClass_26_') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::tbody/tr[1]/td[%s]/descendant::span[1]" % (self.route_class_benchmark_data_grid_name, str(column_index)))
        self.click_element(first_row_column_locator, True)
        kendo_dropdown_item_locator = (By.XPATH, "//ul[@id='BenchMarkValue_listbox']/descendant::li[text()='%s']" % dropdown_value)
        kendo_dropdown_item_element = self.wait().until(EC.presence_of_element_located(kendo_dropdown_item_locator), 'item locator not found before specified time out')
        self.script_executor_click(kendo_dropdown_item_element)

    def click_bulk_test_call_save_changes_button(self):
        """
        Implementing click bulk test call save changes button functionality
        :return:
        """
        self.click_element(self.bulk_test_call_save_changes_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
