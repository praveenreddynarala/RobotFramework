*** Settings ***
Documentation     Sell Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${RESET ALL GRID SETTINGS}              Reset All                       # Reset all grid settings item name, not editable.
${CUSTOMER COLUMN NAME}            		Customer                        # Customer column name, not editable.
${CARRIER COLUMN NAME}                  Carrier                         # Carrier column name, not editable.
${CUSTOMER RATES INLINE ITEM}           Customer Rates                  # Customer rates inline item name, not editable.
${RATING PRODUCT COLUMN NAME}           Rating Product                  # Rating product column name, not editable.
${RATE1 COLUMN NAME}                    Rate1                           # Rate1 column name, not editable.
${CUSTOMER DIGITS INLINE ITEM}          Customer Digits                 # Customer digits inline item name, not editable.
${DESTINATION COLUMN NAME}              Destination                     # Rating product column name, not editable.
${BEGIN DATE COLUMN NAME}               Begin Date                      # Begin date column name, not editable.
${CUSTOMER DESTINATION INLINE ITEM}     Customer Destination            # Customer destination inline item name, not editable.
${RESET COLUMN ORDER GRID SETTINGS}     Reset Column Order              # Reset column order grid settings item name, not editable.
${PRICE LIST COLUMN NAME}               Price List                      # Price list column name, not editable.
${VIEW PRICE LIST DETAIL INLINE ITEM NAME}      View Price List Detail      # View price list detail inline item name, not editable.
${CPE PERFORMANCE TAB NAME}             CPE Performance                 # CPE performance tab name, not editable.
@{APPROVED AND DELETED STATUS ITEM LIST}             Approved    Deleted                                 #Status item, not Editable
${CUSTOMER DIALED DIGITS-MCC-MNC INLINE ITEM}        Customer Dialed Digits/MCC-MNC           # VCustomer Dialed Digits/MCC-MNC Inline item, not Editable
${DIALED DIGITS-MCC-MNC TAB NAME}            Dialed Digits/MCC-MNC           # VCustomer Dialed Digits/MCC-MNC tab name, not Editable
${DIALED DIGITS-MCC-MNC COLUMN NAME}               Dialed Digits/MCC-MNC           # VCustomer Dialed Digits/MCC-MNC column name, not Editable
${CUSTOMER MCC-MNC INLINE ITEM NAME}				Customer MCC-MNC  			    # Customer MCC-MNC inline item name, not editable.
${MCC-MNC TAB NAME}                    MCC-MNC                         # MCC-MNC tab name, not Editable
${MCC-MNC COLUMN NAME}                 MCC-MNC                         # MCC-MNC column name, not Editable
${CUSTOMER DIALED DIGITS INLINE ITEM NAME}				Customer Dialed Digits  			    # Customer Dialed Digits inline item name, not editable.
${DIALED DIGITS TAB NAME}                    Dialed Digits                         # Dialed Digits tab name, not Editable
${DIALED DIGITS COLUMN NAME}                    Dialed Digits                         # Dialed Digits column name, not Editable
${UPLOAD CUSTOMER PRICE LISTS POP UP NAME}             Upload Customer Price Lists          # Upload Customer Price Lists pop up name, not Editable
${CUSTOMER PROFILE TAB NAME}            Customer Profile           # Customer Profile tab name, not Editable
@{APPROVED AND REQUESTED STATUS ITEM LIST}             Approved    Requested                                 #Status item, not Editable
@{APPROVED STATUS ITEM LIST}                     Approved                        # Approved Status item, not editable
${APPROVED STATUS ITEM}                     Approved                        # Approved Status item, not editable
${TEMPLATE NAME COLUMN NAME}           Template Name                  # Template Name column name, not editable.
${STATUS COLUMN NAME}                   Status                  # Status column name, not editable.
${CYCLE TYPE COLUMN NAME}                   Cycle Type                  # Cycle Type column name, not editable.
${BEGIN OF RANGE PERIOD COLUMN NAME}                   Begin of Range Period                  # Begin of Range Period column name, not editable.
${END OF RANGE PERIOD COLUMN NAME}                   End of Range Period                  # End of Range Period column name, not editable.
${AUTO NEW CPE COLUMN NAME}                   Auto New CPE                  # Auto New CPE column name, not editable.
${AUTO NEW RPL COLUMN NAME}                   Auto New RPL                  # Auto New RPL column name, not editable.
${CHECK NON AUTO PERIOD COLUMN NAME}                   Check Non-Auto Period                  # Check Non-Auto Period column name, not editable.
${AUTO IF PENDING RPL COLUMN NAME}                   Auto if Pending RPL                  # Auto if Pending RPL column name, not editable.
${AUTO IF PENDING CPE COLUMN NAME}                   Auto if Pending CPE                  # Auto if Pending CPE column name, not editable.
# End: Constant Variables

# Start: Test Data For Create Customer
${CALL TYPE DROPDOWN ITEM}               ISDN                           # Call type dropdown item, Editable
${STATUS COLUMN NAME TO CLEAR FILTER}    Status                         # Status column name, not Editable
${CREATE CUSTOMER TAB NAME}              Create Customer                # Create Customer tab name, not Editable
${CALL TYPE FOR SECOND CUSTOMER}         VoIP                           # Call type for create second customer, Editable
# End: Test Data For Create Customer

# Start: Test Data For Edit Customer Profile
${COLUMN NAME TO FILTER}                Customer                # Customer column name to filter, not Editable
${INLINE ACTION ITEM NAME}              Customer Profile        # Customer Profile Inline action item, not Editable
${TAB NAME TO CLOSE}                    Customer Profile        # Customer Profile tab name, not Editable
${COLUMN NAME TO CLEAR FILTER}          Customer                # Customer column name to clear filter, not Editable
${ACTIVE STATUS}                        Active                  # Status, not Editable; Active
${INACTIVE STATUS}                      InActive                # Status, not Editable; InActive
# End: Test Data For Edit Customer Profile

# Start: Test Data For Validate Price Exception Search
@{STATUS ITEM LIST}                     Approved                        # Status item, editable
${SELECT DATE}                          10/27/2016                      # Select date, editable
${DESTINATION}                          Afghanistan                           # Destination, editable
# End: Test Data For Validate Price Exception Search

# Start: Test Data For Validate Compare Price List Functionality
${CUSTOMER PRICE LIST TEMPLATE NAME}         CustomerPriceListUpload_SingleOrigTemplate.xls     # Template name, Editable
# End: Test Data For Validate Compare Price List Functionality

# Start: Test Data For Validate Price Exception Creation
@{STATUS ITEM LIST FOR PRICE EXCEPTIONS CREATION}           Not Entered                             # Status item, not Editable; Not Entered
${SELECT DATE FOR PRICE EXCEPTIONS CREATION}                1/1/2012                                # Select date, not Editable
${REQUESTED PRICE}                                          12345                                   # Requested price, Editable
${BEGIN DATE}                                               ${EMPTY}                                # Begin date, Editable; Must be a future date
${APPROVAL TYPE}                                            ${EMPTY}                                # Approval type, Editable; Empty by default
${STATUS DROPDOWN LABEL}                                    Status                                  # Status dropdown label, not Editable
# End: Test Data For Validate Price Exception Creation

# Start: Test Data For Validate Pricing Exception Performance Report Generation
${PRICE EXCEPTIONS PERFORMANCE INLINE ITEM}     Price Exceptions Performance        # Price Exceptions Performance Inline item, not Editable
${PERFORMANCE REPORT BEGIN DATE}                1/1/2010                            # Performance Report Begin date, Editable; not Mandatory, may be empty
# End: Test Data For Validate Pricing Exception Performance Report Generation

# Start: Test Data For Validate the copy functionality of Price Exceptions
${NUMBER PLAN FOR COPY PRICE EXCEPTIONS}                  Outbound Ref.                             #Number plan item, not Editable
@{STATUS ITEM LIST FOR COPY PRICE EXCEPTIONS}             Approved                                  #Status item, not Editable
@{ENTERED STATUS ITEM LIST}                               Entered                                  #Status item, not Editable
@{REQUESTED STATUS ITEM LIST}                             Requested                                  #Status item, not Editable
${BEGIN DATE FOR CHANGE ENTERED STATUS}                   5/15/2017                                  #Begin date, not Editable
@{ALL STATUS ITEM LIST}                                   Requested    Rejected     Approved                                    #Status item, not Editable
# End: Test Data For Validate the copy functionality of Price Exceptions

# Start: Test Data For Validate Price Status Updation
@{STATUS ITEM LIST BEFORE STATUS UPDATION}          Entered                                 # Status item before Status Updation, not Editable
${SELECT DATE FOR STATUS UPDATION}                  ${EMPTY}                                # Select Date, Editable; Current Date by default
@{STATUS ITEM LIST AFTER STATUS UPDATION}           Requested                               # Status item after Status Updation, not Editable
${PRICE EXCEPTION GRID STATUS}                      Requested                               # Price Exception Grid Status, not Editable
${STATUS DROPDOWN LABEL FOR STATUS UPDATION}        Status                                  # Status Dropdown Label, not Editable
# End: Test Data For Validate Price Status Updation

# Start: Test Data For Validate Navigation to View Price Exception Details Screen
@{PRICE EXCEPTIONS STATUS ITEM LIST}                Entered                                # Price Exceptions Status item, editable
${VIEW PRICE EXCEPTIONS DETAILS INLINE ITEM}        View Price Exceptions Details           # View Price Exceptions Details Inline item, not Editable
${PRICE EXCEPTIONS DETAILS POP UP NAME}             View Pricing Exception Details          # View Price Exceptions Details pop up name, not Editable
# End: Test Data For Validate Navigation to View Price Exception Details Screen

# Start: Test Data To Validate Bulk Edit Functionality With Manual Approval Required
@{STATUS LIST FOR BULK EDIT}            Not Entered                                 # Status for Bulk Edit, Editable; Entered/Not Entered
${SELECT DATE FOR BULK EDIT}            ${EMPTY}                                # Select Date for Bulk Edit, Editable; Current Date by default
${BULK EDIT STATUS}                     Requested                               # Bulk Edit Status, not Editable
${BULK EDIT REQUESTED PRICE}            0.21                                    # Bulk Edit Requested Price, Editable
${BULK EDIT APPROVAL TYPE}              ${EMPTY}                                # Bulk Edit Approval Type, Editable; Empty by default
${BULK EDIT BEGIN DATE}                 ${EMPTY}                                # Bulk Edit Begin Date, Editable; Curren Date by default
${BULK EDIT END DATE}                   ${EMPTY}                                # Bulk Edit End Date, Editable; Empty by default
${BULK EDIT ESTIMATED VALUE}            123                                # Bulk Edit Estimated Value, Editable; Empty by default
# End: Test Data To Validate Bulk Edit Functionality With Manual Approval Required

# Start: Test Data To Validate Customer Price Exceptions Upload Functionality
${COMPLETED STATUS}                                 Completed               # Status for search in price exceptions grid, not Editable
${JOBS TAB NAME PREFIX}                             Jobs                    # Jobs tab name, not Editable
${PRICE EXCEPTION TEMPLATE NAME}                    PriceExceptionsTemplate_2.xls     # Template name, Editable
${PRICE EXCEPTION VALID TEMPLATE NAME}                    PriceExceptionsTemplate_valid.xls     # Template name, Editable
# End: Test Data To Validate Customer Price Exceptions Upload Functionality

# Start: Test Data To Validate Qos Screen
${QOS IMPORT TEMPLATE NAME}     qos_import_template.xls     # Qos import template name, not editable.
# End: Test Data To Validate Qos Screen
