*** Settings ***
Documentation     Price Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${PRICE POLICY COLUMN NAME}             Price Policy            # Price Policy column name, not Editable
${JOBS TAB NAME}                        Jobs                    # Jobs tab name, not Editable
${VIEW PRICE POLICY INLINE ITEM}        View Price Policy       # View Price Policy inline item, not Editable
${USER DEFINED PARAMETERS INLINE ITEM}  User Defined Parameters  # User Defined Parameters inle item, not Editable
${FORMULAS TAB NAME}                    Price Policies Formulas     # Formulas tab name, not Editable
# End: Constant Variables
# Start: Test Data For Validate Navigation to View Cost Policy Screen
${COLUMN NAME TO FILTER}            Cost Policy                             # Cost policy column name, not Editable.
${VIEW COST POLICY INLINE ITEM}     View Cost Policy                        # View cost policy inline item, not Editable.
# End: Test Data For Validate Navigation to View Cost Policy Screen

# Start: Test Data For Update and Delete Cost Policy Formulas
${EDIT FORMULA VALUE}			                500                         # Value for edit formula, Editable.
${RATE TYPE}                                    Rate  3                    # Rate type, can be blank, Editable.
${BEGIN DATE}                                   ${EMPTY}                    # Begin date, Editable, current date by default.
${COST FORMULA}                                 0.1 * CACPMR                # Cost formula, Editable.
${FORMULA TYPE}                                 Destination                 # Fromula type, not Editable.
${EDIT FORMULA INLINE ITEM}                     Edit Formula                # Edit formula inline action, not Editable
# End: Test Data For Update and Delete Cost Policy Formulas

# Start: Test Data For Create and Verify Cost Formulas
${CATEGORY FOR FORMULA POP UP}              AFR-PC                          # Formula category, Editable.
${RATE TYPE FOR DESTINATION}                Rate  1                        # Rate type for Destination, can be blank, Editable.
${BEGIN DATE FOR DESTINATION}               ${EMPTY}                        # Begin date for Destination, Editable, current date by default.
${COST FORMULA FOR DESTINATION}             0.1 * CACPMR                    # Cost formula for Destination, not Editable.
${RATE TYPE FOR GLOBAL}                     ${EMPTY}                        # Rate type for Global, can be blank, Editable.
${BEGIN DATE FOR GLOBAL}                    ${EMPTY}                        # Begin date for Global, Editable, current date by default.
${COST FORMULA FOR GLOBAL}                  0.1 * CACPMR + .12              # Cost formula for Global, not Editable.
${RATE TYPE FOR CATEGORY}                   ${EMPTY}                        # Rate type for Category, can be blank, Editable.
${BEGIN DATE FOR CATEGORY}                  ${EMPTY}                        # Begin date for Category, Editable, current date by default.
${COST FORMULA FOR CATEGORY}                0.1 * CCPMR                     # Cost formula for Category, not Editable.
${FORMULA TYPE FOR DESTINATION}             Destination                     # Destination formula type, not Editable.
${FORMULA TYPE FOR GLOBAL}                  Global                          # Global formula type, not Editable.
${FORMULA TYPE FOR CATEGORY}                Category                        # Category formula type, not Editable.
${NOTES COLUMN NAME}                        Notes                           # Notes column name, not Editable.
${RATE TYPE FOR DESTINATION FOR COPY}       Rate  2                        # Rate type for Destination, can be blank, Editable.
# End: Test Data For Create and Verify Cost Formulas

# Start: Test Data To Validate The Edit User Defined Parameter
${VALUE FOR VALUE COLUMN}                   1.020000                        # Value for value column, must have 6 digits to the right of the decimal point, Editable.
${VALUE FOR UPDATING VALUE COLUMN}          1.200000                        # Value for value column, must have 6 digits to the right of the decimal point, Editable.
${VALUE FOR UPDATING END DATE COLUMN}       11/7/2017                       # End date, must be a future date, Editable.
${VALUE COLUMN NAME}                        Value                           # Value column name, not Editable.
${END DATE COLUMN NAME}                     End Date                        # End date column name, not Editable.
# End: Test Data To Validate The Edit User Defined Parameter

# Start: Test Data To Create and Verify Cost Policies
${COST POLICY ACTIVE STATUS}                Active                          # Cost policy active status, not Editable
${COST POLICY INACTIVE STATUS}              Inactive                        # Cost policy inactive status, not Editable
${COST POLICY TYPE}                         Uploaded                        # Cost policy type, Editable.
${CALL TYPE}                                ISDN                            # Call type, Editable.
${ROUTE CLASS}                              Standard                        # Route class, Editable.
${COST POLICY COLUMN NAME}                  Cost Policy                     # Cost policy column name, not Editable.
${COST POLICY TAB NAME TEXT}                Cost Policy                     # Cost policy tab name prefix, not Editable.
${STATUS COLUMN NAME}                       Status                          # Status column name, not Editable.
${VIEW COST POLICY INLINE ITEM}             View Cost Policy                # View cost policy inline item, not Editable.
${COSTS INLINE ITEM}                        Costs                           # Cost inline item, not Editable
# End: Test Data To Create and Verify Cost Policies

# Start: Test Data For Copy Cost Policy Formulas Screen
${NEW START DATE}                               9/7/2015                        # Start date, Editable.
# End: Test Data For Copy Cost Policy Formulas Screen

# Start: Test Data For Create and Edit Price Formulas
${CATEGORY FOR PRICE FORMULA}                   AFR-RB                  # Formula Category, Editable.
${RATE TYPE FOR DESTINATION PRICE FORMULA}      Rate  4                # Rate type for Destination, can be blank, Editable.
${BEGIN DATE FOR DESTINATION PRICE FORMULA}     ${EMPTY}                # Begin date for Destination, Editable, current date by default.
${TARGET FOR DESTINATION}                       0.1                     # Target for destination, not Editable.
${MINIMUM FOR DESTINATION}                      0.1                     # Minimum for destination, not Editable.
${COST FOR DESTINATION}                         0.1                     # Cost for destination, not Editable.
${RATE TYPE FOR GLOBAL PRICE FORMULA}           ${EMPTY}                # Rate type for Global, can be blank, Editable.
${BEGIN DATE FOR GLOBAL PRICE FORMULA}          ${EMPTY}                # Begin date for Global, Editable, current date by default.
${TARGET FOR GLOBAL}                            0.2                     # Target for Global, not Editable.
${MINIMUM FOR GLOBAL}                           0.2                     # Minimum for Global, not Editable.
${COST FOR GLOBAL}                              0.2                     # Cost for Global, not Editable.
${RATE TYPE FOR CATEGORY PRICE FORMULA}         ${EMPTY}                # Rate type for Category, can be blank, Editable.
${BEGIN DATE FOR CATEGORY PRICE FORMULA}        ${EMPTY}                # Begin date for Category, Editable, current date by default.
${TARGET FOR CATEGORY}                          0.3                     # Target for Category, not Editable.
${MINIMUM FOR CATEGORY}                         0.3                     # Minimum for Category, not Editable.
${COST FOR CATEGORY}                            0.3                     # Cost for Category, not Editable.
${FORMULA TYPE FOR DESTINATION PRICE FORMULA}   Destination             # Destination formula type, not Editable.
${FORMULA TYPE FOR GLOBAL PRICE FORMULA}        Global                  # Global formula type, not Editable.
${FORMULA TYPE FOR CATEGORY PRICE FORMULA}      Category                # Category formula type, not Editable.
${EDIT FORMULA ITEM}                            Edit Formula            # Edit formula inline item, not Editable.
${TARGET FOR EDIT}                              0.3                     # Target for Edit, not Empty.
${MINIMUM FOR EDIT}                             0.2                     # Target for Edit, not Empty.
${COST FOR EDIT}                                0.1                     # Target for Edit, not Empty.
${NOTES COLUMN NAME FOR PRICE FORMULA}          Notes                   # Notes column name, not Editable.
${RATE TYPE FOR DESTINATION PRICE FORMULA FOR COPY}      Rate  5                # Rate type for Destination, can be blank, Editable.
${RATE TYPE FOR DESTINATION PRICE FORMULA FOR BULK EDIT}      Rate  6                # Rate type for Destination, can be blank, Editable.
# End: Test Data For Create and Edit Price Formulas

# Start: Test Data To Create and Verify Price Policy
${PRICE POLICY ACTIVE STATUS}                Active                     # Active status, not Editable.
${PRICE POLICY INACTIVE STATUS}              Inactive                   # Inactive status, not Editable.
${PRICE POLICY CALL TYPE}                    ISDN                       # Price policy call type, Editable.
${PRICE POLICY ROUTE CLASS}                  Premium                    # Price policy route class, Editable.
${PRICE POLICY COLUMN NAME}                  Price Policy               # Price policy column name, not Editable.
${PRICE POLICY TAB NAME TEXT}                Price Policy               # Price policy tab name prefix, not Editable.
${PRICE POLICY STATUS COLUMN NAME}           Status                     # Status column name, not Editable.
${VIEW PRICE POLICY INLINE ITEM}             View Price Policy          # View price policy inline item, not Editable.
# End: Test Data To Create and Verify Price Policy

# Start: Test Data To Validate Price Overrides Screen Bulk Edit
${PRICE OVERRIDES END DATE}                 11/17/2017                          # End date, must be a current date/future date, Editable.
# End: Test Data To Validate Price Overrides Screen Bulk Edit

# Start: Test Data To Validate Navigation To View Price Policy Screen
${VIEW PRICE POLICY INLINE ITEM NAME}           View Price Policy       # View cost policy inline item, not Editable.
# End: Test Data To Validate Navigation To View Price Policy Screen

# Start: Test Data To Validate Copy Price Policy Formulas Screen
${SELECT DATE FOR COPY POLICIY}             ${EMPTY}                        # Date for copy cost policy, Editable, not mandatory.
${START DATE FOR COPY POLICIY}              11/13/2016                      # Start date for copy cost policy, Editable.
# End: Test Data To Validate Copy Price Policy Formulas Screen

# Start: Test Data To Validate Create and Edit User Defined Parameter Functionality
${VALUE FOR CREATE USER DEFINED PARAMETER}                  0.231                               # User defined parameter value, Editable.
${EDIT DESCRIPTION VALUE}                                   UAT_Edit_UserDefined_Desciption     # Value for edit description, not Editable.
${PARAMETER COLUMN NAME}                                    Parameter                           # Parameter column name, not Editable.
${DESCRIPTION COLUMN NAME}                                  Description                         # Description column name, not Editable.
${VALUE COLUMN NAME}                                        Value                               # Value column name, not Editable.
${START DATE COLUMN NAME}                                   Start Date                          # Start Date column name, not Editable.
${END DATE COLUMN NAME}                                     End Date                            # End Date column name, not Editable.
${END DATE VALUE}                                           10/11/2017                          # End date, must be a future date, Editable.
# End: Test Data To Validate Create and Edit User Defined Parameter Functionality

# Start: Test Data To Validate Reference Price Generation
@{AVAILABLE DESTINATIONS LIST}              Afghanistan         # List of available destinations, Editable.
# End: Test Data To Validate Reference Price Generation

# Start: Test Data To Validate The Copied Parameters Are Displayed In The Grid
${START DATE FOR COPY UDP}                  11/13/2016                      # Start date, Editable.
# End: Test Data To Validate The Copied Parameters Are Displayed In The Grid

# Start: Test Data To Validate The Process to Approve A Reference Price
@{REFERENCE PRICE STATUS LIST}          Requested                           # Status for filter, not Editable.
${APPROVED STATUS}                      Approved                            # Approved status, not Editable.
# End: Test Data To Validate The Process to Approve A Reference Price

# Start: Test Data To Validate The Process to Reject A Reference Price
@{REFERENCE PRICE STATUS LIST FOR REJECT}          Requested                # Status for filter, not Editable.
${REJECTED STATUS}                                 Rejected                 # Rejected status, not Editable.
${REFERANCE PRICES TAB NAME}                       Reference Prices         # Reference prices tab name, not Editable
# End: Test Data To Validate The Process to Reject A Reference Price

# Start: Test Data To Validate Upload The Costs
${SELECT DATE TO UPLOAD}            ${EMPTY}                                        # Select Date, Editable; Empty by default
${COST POLICY FOR UPLOAD}           Aircel GD1                                      # Cost policy name, not Editable
${TEMPLATE NAME}                   CostsTemplate.xls            # Template name, Editable
${JOBS TAB NAME}                    Jobs                                            # Jobs tab name, not Editable
# End: Test Data To Validate Upload The Costs

# Start: Test Data To Validate Upload Functionality
${PRICE OVERRIDES TEMPLATE NAME}      PricePolicyOverrideTemplate.xls       # Template name, Editable
# End: Test Data To Validate Upload Functionality