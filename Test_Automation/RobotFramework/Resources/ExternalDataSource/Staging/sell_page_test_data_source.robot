*** Settings ***
Documentation     Sell Page External Test Data Source

*** Variables ***
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
${BULK EDIT ESTIMATED VALUE}            ${EMPTY}                                # Bulk Edit Estimated Value, Editable; Empty by default
# End: Test Data To Validate Bulk Edit Functionality With Manual Approval Required

# Start: Test Data To Validate Customer Price Exceptions Upload Functionality
${COMPLETED STATUS}                                 Completed               # Status for search in price exceptions grid, not Editable
${JOBS TAB NAME PREFIX}                             Jobs                    # Jobs tab name, not Editable
${PRICE EXCEPTION TEMPLATE NAME}                    PriceExceptionsTemplate_2.xls     # Template name, Editable
# End: Test Data To Validate Customer Price Exceptions Upload Functionality
