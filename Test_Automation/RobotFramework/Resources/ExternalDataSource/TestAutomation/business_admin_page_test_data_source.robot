*** Settings ***
Documentation     Business Admin Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${VIEW ORIGIN SET DETAILS INLINE ITEM}                  View Origin Set Details               # Inline item name, not editable.
${BUSINESS ADMIN MODULE NAME}                           business admin                        # Inline item name, not editable.
${NUMBER PLAN UPLOADS TAB NAME}			    Number Plan Uploads			    # Number Plan Uploads tab name, not editable.
${UPLOAD DETAILS INLINE ITEM}               Upload Details                  # Upload Details inline item name, not editable.
${DIAL DIGITS INLINE ITEM}                  Dial Digits                     # Dial Digits inline item name, not editable.
${CSNP ANALYSIS INLINE ITEM}                CSNP Analysis                   # CSNP Analysis inline item name, not editable.
${ANALYZE INLINE ITEM}                      Analyze                         # Analyze inline item name, not editable.
${NUMBER PLAN UPLOAD DETAILS TAB NAME}      Number Plan Upload Details      # Number plan upload details tab name, not editable.
${REFRESH FROM JOB CHECKBOX LABEL TEXT}              Refresh From Job                # Refresh from job checkbox label text, not editable.
${AUTOMATE GENERATION CHECKBOX LABEL TEXT}           Automate Generation             # Automate Generation checkbox label text, not editable.
${INCLUDE CLI CHECKBOX LABEL TEXT}                   Include CLI                     # Include CLI checkbox label text, not editable.
${COMPOUND RPL CHECKBOX LABEL TEXT}                  Compound RPL                    # Compound RPL checkbox label text, not editable.
${COUNTRY TAB NAME}                         Country                         # Country tab name, not editable
${REGION COLUMN NAME}                       Region                          # Region column name, not editable.
${REGION ABBREVIATION COLUMN NAME}          Region Abbreviation             # Region abbreviation column name, not editable.
${REGION TAB NAME}                          Region                          # Region tab name, not editable.
${COUNTRY GROUP GRID INLINE ACTION ITEM}            View/Edit Country Group          # Country group grid inline action item, not editable.
${MAPPING DETAILS INLINE ITEM NAME}                  Mapping Details                 # Mapping details inline item name, not editable.
${CATEGORY COLUMN NAME}                     Category                        # Category column name, not editable
${ROUTE CLASS COLUMN NAME}                  Route Class                     # Route class column name, not editable.
${ROUTE CLASS ABBREVIATION COLUMN NAME}     Route Class Abbrv               # Route class abbreviation column name, not editable.
${EDIT INLINE ITEM}                         Edit                            # Inline action item name, not editable.
${VIEW EDIT NETWORK CODES INLINE ITEM}		View/Edit Network Codes 		# View edit network codes inline item name, not editable.
${VIEW EDIT CDR MATCHES INLINE ITEM}		View/Edit CDR Matches  			# View edit cdr matches inline item name, not editable.
${CDR MATCHES POPUP NAME}					CDR Matches 					# CDR matches popup name, not editable.
${NETWORK CODES POPUP NAME}					Network Codes 					# Network codes popup name, not editable.
${NETWORK DESTINATION COLUMN NAME}			Network Destination 		    # Network destination column name, not editable.
${DESTINATION ABBREVIATION COLUMN NAME}		Destination Abbreviation 	    # Destination abbreviation column name, not editable.
${BEGIN DATE COLUMN NAME}					Begin Date 					    # Begin date column name, not editable.
${END DATE COLUMN NAME}						End Date 					    # End date column name, not editable.
${INTERNAL CODE COLUMN NAME}				Internal Code 				    # Internal code column name, not editable.
${EXTERNAL CODE COLUMN NAME}				External Code 				    # External code column name, not editable.
${CUSTOMER SOURCE TYPE}                         Customer                        # Customer source type, not editable.
${VENDOR SOURCE TYPE}                           Vendor                          # Vendor source type, not editable.
${ORIGIN REFERENCE PRICE LIST SOURCE TYPE}      Origin Reference Price List     # Origin Reference Price List source type, not editable.
${REFERENCE PRICE LIST SOURCE TYPE}             Reference Price List            # Reference Price List source type, not editable.
${SWITCH SOURCE TYPE}                           Switch                          # Switch source type, not editable.
${ACTIVE STATUS}                                Active                          # Active status, not editable.
${PRICE COST BASIS SOURCE TYPE}					Price Cost Basis			    # Source type, not editable.
${QUALITY OF SERVICE SOURCE TYPE}               Quality of Service              # Source type, not editable.
${REFERENCE ACCOUNT SOURCE TYPE}                Reference Account               # Reference Account source type, not editable.
${REFERENCE PRICING POLICY SOURCE TYPE}         Reference Pricing Policy        # Reference pricing policy source type, not editable.
${TARGET BUY LIST SOURCE TYPE}					Target Buy List			        # Source type, not editable.
${MINIMUM DIRECT PERCENT LABEL TEXT}            minimum direct percent          # Minimum direct percentage label text, not editable.
${TARGET FULFILLMENT ORDER LABEL TEXT}          target fulfillment order        # Target fulfillment order label text, not editable.
${CAPACITY SATURATION ORDER LABEL TEXT}         capacity saturation order       # Capacity saturation order label text, not editable.
${ROUTE CLASS FIELD LABEL TEXT}                 route class                     # Route class label text, not editable.
${CURRENCY TAB NAME}						    Currency  					    # Currency tab name, not editable.
@{TRADE DESTINATION CATEGORY TYPE}              Trade Destination Category #1       # Category type list, not editable.
${CHECK COMPOUND RPL CHECKBOX}                  ${TRUE}                         # Compoun rpl checkbox true, not editable.
${SOURCE COLUMN NAME}                           Source                          # Source column name, not editable.
${RESET ALL GRID SETTINGS}                      Reset All                       # Reset all grid settings item name, not editable.
${RESET COLUMN ORDER GRID SETTINGS}             Reset Column Order              # Reset column order grid settings item name, not editable.
${COUNTRY GROUP TAB NAME}                          Country Group                          # Country group tab name, not editable.
${MOBILE COUNTRY CODE COLUMN NAME}              Mobile Country Code             # Mobile country code column name, not editable.
${EXCHANGE RATES TAB NAME}                      Exchange Rates                  # Exchange rates tab name, not editable.
${COPY SOURCE INLINE ACTION ITEM}               Copy Source                     # Copy source inline action item, not editable.
${COMPANY COLUMN NAME}                          Company                         # Company column name, not editable.
${COMPANY CODE COLUMN NAME}                     Company Code                    # Company Code column name, not editable.
${INTERCOMPANY ACCOUNT COLUMN NAME}             InterCompany Account            # InterCompany Account column name, not editable.
${COUNTRY COLUMN NAME}                          Country                         # Country column name, not editable.
${LAST MODIFIED COLUMN NAME}                    Last Modified                   # Last Modified column name, not editable.
${LAST MODIFIED BY COLUMN NAME}                 Last Modified By                # Last Modified By column name, not editable.
${RESET SORT GRID SETTINGS}                     Reset Sort                      # Reset sort grid settings item name, not editable.
${EXPORT TO EXCEL GRID SETTINGS}                Export to Excel                 # Export to Excel grid settings item name, not editable.
${SAVE SETTINGS GRID SETTINGS}                  Save Settings                   # Save Settings grid settings item name, not editable.
${COMPANY TAB NAME}                             Company                         # Company tab name, not editable.
${OUTBOUND REF NUMBER PLAN}			            Outbound Ref.		            # Number plan, not editable.
${REFERENCE NUMBER PLAN TYPE}				    Reference Number Plan		    # Reference number plan type, not editable.
${ORIGIN SET NUMBER PLAN TYPE}				    Origin Set		                # Origin Set number plan type, not editable.
${CONTRACT COMPLEX NUMBER PLAN TYPE}			Contract Complex Number Plan	# Contract Complex Number Plan type, not editable.
${UNIQUE CSNP FOR RATING NUMBER PLAN TYPE}		Unique CSNP for Rating	        # Unique CSNP for Rating Number Plan type, not editable.
${BUY AND SELL DEAL DETAIL POP UP NAME}         Buy and Sell Deal Detail        # Buy and Sell Deal Detail pop up name, not editable.
@{ENTERED STATUS}                               Entered                         # Entered status, not editable.
@{DEAL DETAILS INLINE ITEM}                     Deal Details                    # Deal Details inline item, not editable.
${COUNTRY GROUP SCOPE COLUMN NAME}              Country Group Scope             # Company group scope column name, not editable.
${COUNTRY GROUP COLUMN NAME}                    Country Group                   # Company group column name, not editable.
${COUNTRIES COLUMN NAME}                        Countries                       # Countries column name, not editable.
${MODIFIED BY COLUMN NAME}                      Modified By                     # Modified By column name, not editable.
${COUNTRY GROUPS TAB NAME}                      Country Groups                  # Country Groups tab name, not editable.
${AUTOMATE EXPORT COLUMN NAME}                  Automate Export                 # Automate Export column name, not editable.
${BULK EDIT POP UP NAME}                        Bulk Edit                       # Bulk Edit pop up name, not editable.
${CUSTOM FIELD NAME}                            Custom Field 1                 # Custom field name, not editable.
@{STATUS LIST FOR JOB}                          Completed   Failed              # Status list for job, not editable.
${CATEGORY SCOPE ACCOUNT}                       Account                         # Category scope, not editable.
${DELETE INLINE ITEM}                       Delete                         # Delete inline item, not editable.
# End: Constant Variables

# Start: Test Data to Validate CSNP Upload Functionality
${NUMBER PLAN TYPE FOR UPLOAD}		Customer Specific Number Plan		# Number plan type for upload, editable; Mandatory.
@{STATUS LIST FOR SEARCH}	        Pending								# Status list, not editable.
${NUMBER PLAN NOTE PREFIX}			UAT_AUTO_Notes_						# Number plan note prefix, editable.
${NUMBER PLAN UPLOAD FILE PATH}		CustomerSpecificNumberPlanTemplate.xls 				# Number plan upload file path, editable.
${REFERENCE NUMBER PLAN UPLOAD FILE PATH}		ReferenceNumberPlanTemplate.xls 				# Reference number plan upload file path, editable.
# End: Test Data to Validate CSNP Upload Functionality

# Start: Test Data For Business Admin Origin Set Management To Validate Add Dialed Digits Functionality
${ADD DIALED DIGITS BEGIN DATE}                         11/1/2016               # Begin date, editable.
${ADD DIALED DIGITS END DATE}                           ${EMPTY}                # End date, editable.
${DIAL DIGIT TYPE FOR ADD DIALED DIGITS}                Dialed Digit            # Dial digit type, editable.
# End: Test Data For Business Admin Origin Set Management To Validate Add Dialed Digits Functionality

# Start: Test Data to Validate Number Plan Upload Details Information With The Record Selected
${NUMBER PLAN TYPE FOR UPLOAD DETAILS}		            Customer Specific Number Plan		# Number plan type for upload, editable; Mandatory.
@{STATUS LIST FOR SEARCH UPLOAD DETAILS}	            Pending								# Status list, not editable.
${FROM DATE FOR UPLOAD DETAILS}			                1/1/2014						    # From date, editable.
# End: Test Data to Validate Number Plan Upload Details Information With The Record Selected

# Start: Test Data For Business Admin Origin Set Management To Validate Origin Settlement Creation
${NEW SETTLEMENT ORIGIN BEGIN DATE}                     12/27/2016                          # Settlement origin begin date, editable.
${NEW SETTLEMENT ORIGIN END DATE}                       ${EMPTY}                            # Settlement origin end date, editable.
${DIALED DIGIT TYPE}                                    Dialed Digit                        # Dialed digit type, editable.
# End: Test Data For Business Admin Origin Set Management To Validate Origin Settlement Creation

# Start: Test Data to Validate Number Plan Uploads Inline Action Functionality
${NUMBER PLAN TYPE FOR INLINE ACTION}		            Customer Specific Number Plan		# Number plan type for upload, editable; Mandatory.
@{STATUS LIST FOR SEARCH INLINE ACTION}	                Pending								# Status list, not editable.
# End: Test Data to Validate Number Plan Uploads Inline Action Functionality

# Start: Test Data For Business Admin Origin Set Management To Validate Origin Set Creation Functionality
${RULE OF MISSING A FOR ADD ORIGIN SET}                System Configuration Setting            # Rule of missing a, editable.
# End: Test Data For Business Admin Origin Set Management To Validate Origin Set Creation Functionality

# Start: Test Data For Business Admin Origin Set Management To Validate Edit Origin Details Functionality
${NEW ORIGIN SET FOR EDIT}                           ${EMPTY}                                # Origin set for edit, editable.
${RULE OF MISSING A FOR EDIT}                        ${EMPTY}                                # Rule of missing a for edit, editable.
# End: Test Data For Business Admin Origin Set Management To Validate Edit Origin Details Functionality

# Start: Test Data For Business Admin Origin Set Management To Validate Upload Functionality
${EFFECTIVE DATE FOR UPLOAD ORIGIN SET}                12/28/2016                                          # Effective date, editable.
${FILE PATH FOR UPLOAD ORIGIN SET}                     OriginSetTemplate.xls                             # File path, editable.
# End: Test Data For Business Admin Origin Set Management To Validate Upload Functionality

# Start: Test Data to Validate The CSNP Number Plan Uploads Grid Inline Actions Available
${NUMBER PLAN TYPE FOR INLINE ITEM AVAILABILITY}		        Customer Specific Number Plan		# Number plan type for upload, editable; Mandatory.
@{STATUS LIST FOR SEARCH INLINE ITEM AVAILABILITY}	            Pending								# Status list, not editable.
# End: Test Data to Validate The CSNP Number Plan Uploads Grid Inline Actions Available

# Start: Test Data to Validate Sources & Policies Bulk Edit Functionality
${SOURCE TYPE FOR BULK EDIT}					Customer			# Source type, not editable.
${NUMBER PLAN FOR BULK EDIT}					${EMPTY}			# Number plan item, editable.
${CALL TYPE FOR BULK EDIT}						${EMPTY}			# Call type item, editable.
${REFERENCE PRICE LIST FOR BULK EDIT}			${EMPTY}			# Reference price list item, editable.
${QUALITY OF SERVICE FOR BULK EDIT}				${EMPTY}			# Quality of service item, editable.
${ORIGIN REFERENCE PRICE LIST FOR BULK EDIT}	${EMPTY}			# Origin reference price list item, editable.
# End: Test Data to Validate Sources & Policies Bulk Edit Functionality

# Start: Test Data For Business Admin Source And Policies To Validate Add New Customer Source Functionality
${SOURCE ACTIVE STATUS}                         Active                              # Active status, editable.
${SOURCE CALL TYPE}                             ITFS                                # Call type, editable.
${SOURCE INACTIVE STATUS}                       InActive                            # Inactive status, editable.
# End: Test Data For Business Admin Source And Policies To Validate Add New Customer Source Functionality

# Start: Test Data For Business Admin Source And Policies To Validate Vendor Source Bulk Edit Functionality
${BULK EDIT CALL TYPE}                        ${EMPTY}                          # Call type for bulk edit, editable.
# End: Test Data For Business Admin Source And Policies To Validate Vendor Source Bulk Edit Functionality

# Start: Test Data For Business Admin Source And Policies To Validate Add And Delete New Vendor Source Functionality
${VENDOR SOURCE CALL TYPE}                             ISDN                                # Call type, editable.
# End: Test Data For Business Admin Source And Policies To Validate Add And Delete New Vendor Source Functionality

# Start: Test Data For Business Admin Source And Policies To Validate Reference Pricing Policy Bulk Edit Functionality
${REFERENCE PRICING POLICY BULK EDIT CALL TYPE}                 ${EMPTY}                          # Call type for bulk edit, editable.
${REFERENCE PRICING POLICY BULK EDIT ROUTE CLASS}               ${EMPTY}                          # Route class for bulk edit, editable.
# End: Test Data For Business Admin Source And Policies To Validate Reference Pricing Policy Bulk Edit Functionality

# Start: Test Data For Business Admin Source And Policies To Validate Reference Price List Bulk Edit Functionality
${REFERENCE PRICE LIST BULK EDIT CALL TYPE}                     ${EMPTY}                        # Call type for bulk edit, editable.
${REFERENCE PRICE LIST BULK EDIT ROUTE CLASS}                   ${EMPTY}                        # Route class for bulk edit, editable.
${REFERENCE PRICE LIST BULK EDIT REFERENCE PRICING POLICY}      ${EMPTY}                        # Reference pricing policy for bulk edit, editable.
${REFERENCE PRICE LIST BULK EDIT AZ MIN SELECTION THRESHOLD}    ${EMPTY}                        # Az min selection threshold for bulk edit, editable.
${REFERENCE PRICE LIST BULK EDIT COMPOUND RPL}                  ${FALSE}                        # Compound rpl for bulk edit, editable. True/False
# End: Test Data For Business Admin Source And Policies To Validate Reference Price List Bulk Edit Functionality

# Start: Test Data For Business Admin Source And Policies To Add And Delete New Switch Source Functionality
${SWITCH SOURCE ACTIVE STATUS}                         Active                              # Active status, editable.
${SWITCH SOURCE CALL TYPE}                             ISDN                                # Number plan, editable.
${SWITCH SOURCE NOTE}                                  Test Automation                     # Note, editable.
# End: Test Data For Business Admin Source And Policies To Add And Delete New Switch Source Functionality

# Start: Test Data For Business Admin Source And Policies To Validate Add And Delete New Reference Account Source Functionality
${REFERENCE ACCOUNT SOURCE NUMBER PLAN}			Outbound Ref.		# Number plan, editable.
${REFERENCE ACCOUNT SOURCE NOTE}                Test Automation     # Note, editable.
${WHOLESALE SOLUTION TYPE}  					Voice				# Wholesale solution type, editable.
# End: Test Data For Business Admin Source And Policies To Validate Add And Delete New Reference Account Source Functionality

# Start: Test Data to Validate Sources & Policies Switch Bulk Edit Functionality
${SOURCE TYPE FOR SWITCH BULK EDIT}			Switch			            # Source type, not editable.
${CALL TYPE FOR SWITCH BULK EDIT}			${EMPTY}			        # Call type item, editable.
# End: Test Data to Validate Sources & Policies Switch Bulk Edit Functionality

# Start: Test Data For Business Admin Sources and Policies To Validate Target Buy List Bulk Edit Functionality
${CALL TYPE FOR TARGET BUY LIST BULK EDIT}							${EMPTY}			    # Call type item, editable.
${ROUTE CLASS FOR TARGET BUY LIST BULK EDIT}						${EMPTY}			    # Route class item, editable.
${CHECK STATUS FOR REFRESH FROM JOB CHECKBOX}                          ${FALSE}                # Refresh from job checkbox check status, editable: ${TRUE}/${FALSE}.
${CHECK STATUS FOR AUTOMATE GENERATION CHECKBOX}                       ${FALSE}                # Automate Generation checkbox check status, editable: ${TRUE}/${FALSE}.
${CHECK STATUS FOR INCLUDE CLI CHECKBOX}                               ${FALSE}                # Include CLI checkbox check status, editable: ${TRUE}/${FALSE}.
# End: Test Data For Business Admin Sources and Policies To Validate Target Buy List Bulk Edit Functionality

# Start: Test Data For Business Admin Source And Policies To Validate Quality Of Service Bulk Edit Functionality
${QUALITY OF SERVICE SOURCE TYPE}                               Quality of Service              # Source type, not editable.
# End: Test Data For Business Admin Source And Policies To Validate Quality Of Service Bulk Edit Functionality

# Start: Test Data For Business Admin Sources and Policies To Validate Reference Account Bulk Edit Functionality
${REFERENCE ACCOUNT SOURCE TYPE}				        Reference Account			# Source type, not editable.
${NUMBER PLAN FOR REFERENCE ACCOUNT BULK EDIT}			${EMPTY}			        # Number plan item, editable.
# End: Test Data For Business Admin Sources and Policies To Validate Reference Account Bulk Edit Functionality

# Start: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Target Buy List Source Functionality
${CALL TYPE FOR ADD TARGET BUY LIST}							ISDN			        # Call type item, editable.
${ROUTE CLASS FOR ADD TARGET BUY LIST}						Standard			    # Route class item, editable.
${REFRESH FROM JOB CHECKBOX CHECK STATUS FOR ADD TARGET BUY LIST}                      ${FALSE}                # Refresh from job label check status, editable: ${TRUE}/${FALSE}.
${AUTOMATE GENERATION CHECKBOX CHECK STATUS FOR ADD TARGET BUY LIST}                   ${FALSE}                # Automate Generation label check status, editable: ${TRUE}/${FALSE}.
${INCLUDE CLI CHECKBOX CHECK STATUS FOR ADD TARGET BUY LIST}                           ${FALSE}                # Include CLI label check status, editable: ${TRUE}/${FALSE}.
${NOTE FOR ADD TARGET BUY LIST}						            Test Automation		    # Note, editable.
# End: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Target Buy List Source Functionality

# Start: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Price Cost Basis Source Functionality
${CALL TYPE FOR ADD PRICE COST BASIS}							ISDN			        # Call type item, editable.
${ROUTE CLASS FOR ADD PRICE COST BASIS}						    Standard			    # Route class item, editable.
${NOTE FOR ADD PRICE COST BASIS}						        Test Automation		    # Note, editable.
# End: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Price Cost Basis Source Functionality

# Start: Test Data For Business Admin Sources and Policies To Validate Price Cost Basis Bulk Edit Functionality
${PRICE COST BASIS SOURCE TYPE}										Price Cost Basis									# Source type, not editable.
${CALL TYPE FOR PRICE COST BASIS BULK EDIT}							${EMPTY}			    						    # Call type item, editable.
${ROUTE CLASS FOR PRICE COST BASIS BULK EDIT}						${EMPTY}			    						    # Route class item, editable.
# End: Test Data For Business Admin Sources and Policies To Validate Price Cost Basis Bulk Edit Functionality

# Start: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Origin Reference Price List Source Functionality
${CALL TYPE FOR ADD ORIGIN REFERENCE PRICE LIST}			ISDN			                # Call type item, editable.
${NOTE FOR ADD ORIGIN REFERENCE PRICE LIST}					Test Automation		            # Note, editable.
# End: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Origin Reference Price List Source Functionality

# Start: Test Data For Business Admin Sources and Policies To Validate Add New Quality Of Service Source Functionality
${NOTE FOR ADD QUALITY OF SERVICE}						           Test Automation		                          # Note, editable.
# End: Test Data For Business Admin Sources and Policies To Validate Add New Quality Of Service Source Functionality

# Start: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Reference Price List Source Functionality
${REFERENCE PRICE LIST SOURCE STATUS}                       	Active                              # Status, editable.
${CALL TYPE FOR ADD REFERENCE PRICE LIST}						ISDN			        			# Call type item, editable.
${COMPOUND RPL CHECKBOX FOR ADD REFERENCE PRICE LIST}  			${FALSE}                			# Compound rpl checkbox check status, editable: ${TRUE}/${FALSE}.
${AZ MIN SELECTION THRESHOLD FOR ADD REFERENCE PRICE LIST}		5							        # Az min selection threshold, editable: integer, default 0, should not be more than 100.
${NOTE FOR ADD REFERENCE PRICE LIST}							Test Automation		    			# Note, editable.
# End: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Reference Price List Source Functionality

# Start: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Reference Pricing Policy Source Functionality
${REFERENCE PRICING POLICY SOURCE ACTIVE STATUS}                            Active                                       # Active status, editable.
${CALL TYPE FOR ADD REFERENCE PRICING POLICY}							    ISDN			        # Call type item, editable.
${ROUTE CLASS FOR ADD REFERENCE PRICING POLICY}						        Standard			    # Route class item, editable.
${NOTE FOR ADD REFERENCE PRICING POLICY}						            Test Automation		    # Note, editable.
# End: Test Data For Business Admin Sources and Policies To Validate Add And Delete New Reference Pricing Policy Source Functionality

# Start: Test Data For Business Admin Groups and Category For Assigning and Removing Categories
@{CATEGORY SCOPE FOR SEARCH}				        Country		    # Category scope list, not editable.
# End: Test Data For Business Admin Groups and Category For Assigning and Removing Categories

# Start: Test Data For Business Admin Country Verify Create, Edit and Delete new Country groups.
${COUNTRY GROUP SCOPE}                      iXTradeBuy                         # Country group scope, editable.
${COUNTRY GROUP SCOPE FOR EDIT}             iXTradeSell                    # Country group scope for edit, editable.
# End: Test Data For Business Admin Country Verify Create, Edit and Delete new Country groups.

# Start: Test Data For Business Admin Country Verify Create And Bulk Edit New Country
${NEW COUNTRY COUNTRY NAME}             India          # Country name, editable.
${NEW COUNTRY COUNTRY TYPE}             Other               # Country type, editable.
# End: Test Data For Business Admin Country Verify Create And Bulk Edit New Country

# Start: Test Data For Business Admin Sources and Policies To Validate Origin Reference Price List Bulk Edit Functionality
${CALL TYPE FOR ORIGIN REFERENCE PRICE LIST BULK EDIT}                ${EMPTY}                                                      # Call type item, editable.
${NOTE PREFIX FOR ORIGIN REFERENCE PRICE LIST BULK EDIT}              Test Automation_                                              # Note prefix for bulk edit, editable.
# End: Test Data For Business Admin Sources and Policies To Validate Origin Reference Price List Bulk Edit Functionality

# Start: Test Data For Business Admin Country To Validate Create And Delete Region
${REGION ABBREVIATION}          AUTOR               # Region abbreviation, editable.
# End: Test Data For Business Admin Country To Validate Create And Delete Region

# Start: Test Data For Business Admin Groups And Categories To Validate Create And Delete Category Functionality
${CATEGORY SCOPE}           Country                 # Category scope, editable.
@{CATEGORY SCOPE LIST}      Country                 # Category scope list, editable.
@{CATEGORY TYPE LIST}       Country Category #1     # Category type list, editable.
@{CATEGORY NAME LIST}       AUTO Category           # Category name list, editable.
${CATEGORY ABBREVIATION}    AUTOC                   # Category abbreviation, editable.
# End: Test Data For Business Admin Groups And Categories To Validate Create And Delete Category Functionality

# Start: Test Data For Business Admin Currency and Exchange To Verify Creating New Exchange Rate Functionality
@{EXCHANGE RATE TYPE LIST}      iXBillExchangeRate          # Exchange rate type list, not editable.
${EXCHANGE RATE TYPE}           iXBillExchangeRate          # Exchange rate type, editable.
${EXCHANGE RATE}                ${EMPTY}                    # Exchange rate, editable; Random number by default, must have four digits after decimal point.
${EXCHANGE RATE BEGIN DATE}     ${EMPTY}                    # Begin date, editable; Current date by default.
# End: Test Data For Business Admin Currency and Exchange To Verify Creating New Exchange Rate Functionality

# Start: Test Data For Business Admin Routing Route Class To Validate All Duplicate Routing Class Field Values
${ROUTE CLASS PREFIX FOR DUPLICATE VALUE}                           ${EMPTY}                                   # Route class prefix for duplicate input, not editable.
${ROUTE CLASS ABBREVIATION PREFIX FOR DUPLICATE VALUE}              ${EMPTY}                                   # Route class abbreviation prefix for duplicate input, not editable.
${MINIMUM DIRECT PERCENT FOR NEW VALUE}                             5                                          # Minimum direct percentage for new entry, editable.
${MINIMUM DIRECT PERCENT FOR INVALID VALUE}                         101                                        # Minimum direct percentage for invalid entry, editable.
${MINIMUM DIRECT PERCENT FOR DUPLICATE VALUE}                       ${EMPTY}                                   # Minimum direct percentage for duplicate entry, not editable.
${MINIMUM DIRECT PERCENT AUTO SUGGESTED VALUE}                      0                                          # Minimum direct percentage auto suggested value, not editable.
${TARGET FULFILLMENT ORDER AUTO SUGGESTED VALUE}                    -1                                         # Target fulfillment order auto suggested value, not editable.
${CAPACITY SATURATION ORDER AUTO SUGGESTED VALUE}                   -1                                         # Capacity saturation order auto suggested value, not editable.
${SUCCESS MESSAGE VALIDATION TEXT FOR NEW ENTRY}                    success                                    # Text for success message validation, not editable.
# End: Test Data For Business Admin Routing Route Class To Validate All Duplicate Routing Class Field Values

# Start: Test Data For Business Admin Routing Route Class To Validate Create And Edit International Route Class Functionality
${ROUTE CLASS ABBREVIATION PREFIX}                         AB_                                    # Route class abbreviation prefix, editable.
${AEP DISTRIBUTION GROUP}                                  ${EMPTY}                               # AEP distribution group, editable.
${MINIMUM DIRECT PERCENT VALUE}                            5.00                                   # Minimum direct percentage value, editable.
${CDR ROUTE CLASS}                                         ${EMPTY}                               # CDR Route class, editable.
${AUTO SUGGEST CHECKBOX SELECTION STATUS}                  ${False}                               # Checkbox selection status, editable.
${SELECTED FOR ROUTING CHECKBOX SELECTION STATUS}          ${False}                               # Checkbox selection status, editable.
${CLI GUARANTEE CHECKBOX SELECTION STATUS}                 ${False}                               # Checkbox selection status, editable.
${WHOLESALE TYPE}                                          Voice                              # Checkbox wholesale type, editable.
# End: Test Data For Business Admin Routing Route Class To Validate Create And Edit International Route Class Functionality

# Start: Test Data For Network Codes To Validate Add Network Code And CDR Match Functionality
${CDR MATCH}					CDR Match  		# Cdr match, editable.
# End: Test Data For Network Codes To Validate Add Network Code And CDR Match Functionality

# Start: Test Data For Network Codes To Validate Add Network Destination Functionality
${DESTINATION ABBREVIATION}				    AUTOND								# Destination abbreviation, editable.
${NETWORK DESTINATION COUNTRY}			    Bangladesh							# Country name, editable.
${CALL CHAR}							    Regular								# Call char, editable.
${INTERNAL CODE}						    AUTO13123							# Internal code, editable.
${EXTERNAL CODE}						    EXT123								# External code, not editable.
${EDIT DESTINATION ABBREVIATION}			AUTO_ND								# Destination abbreviation, editable.
# End: Test Data For Network Codes To Validate Add Network Destination Functionality

# Start: Test Data For Djezzy Business Admin Categories To Validate The Functionality For Assigning Categories
@{DJEZZY CATEGORY SCOPE FOR SEARCH}				    Destination		    		# Category scope list, not editable.
@{DJEZZY CATEGORY TYPE LIST FOR SEARCH}				Destination Category #1     Destination Category #2		    # Category type list, editable.
${DJEZZY VIEW EDIT CATEGORY TYPE}					Destination Category #1		# Category type, editable.
${DJEZZY VIEW EDIT NUMBER PLAN TYPE}				Reference Number Plan		# Number plan type, editable.
${DJEZZY VIEW EDIT NUMBER PLAN}						ALL							# Number plan, editable.
@{DJEZZY CATEGORY LIST FOR ASSIGNING}		        Afghanistan Auto Test - Outbound Ref.   Afghanistan Auto Test Mob - Outbound Ref.   Afghanistan Auto Test New - Outbound Ref.   Afghanistan-network - Outbound Ref.		    # Category list, editable.
# End: Test Data For Djezzy Business Admin Categories To Validate The Functionality For Assigning Categories

# Start: Test Data to Validate Create New CSNP Functionality
${CSNP TYPE}                        Uploaded CSNP           # CSNP type, not editable.
@{SERVICES LIST}                    ISDN                    # Services list, editable.
${PRIMARY BLENDING METHOD}          Min/Max Blending        # Primary blending method, editable.
${DEFAULT DESTINATION TYPE}         Fixed                   # Default destination type, editable.
${DEFAULT CALL CHAR}                Regular                 # Default call char, editable.
${ENTER MIN}                        30.00                   # Enter min, editable.
${ENTER MAX}                        70.00                   # Enter max, editable.
${FIXED BLENDING SECURITY}          50.00                   # Fixed blending security, editable.
${MINMAX BLENDING SECURITY}         50.00                   # Minmax blending security, editable.
# End: Test Data to Validate Create New CSNP Functionality

# Start: Test Data For Verify If User Is Able To Perform All Actions On Country Group Screen With L2 Roles Assigned.
${SELL COUNTRY GROUP SCOPE}                      iXTradeSell                         # Country group scope, editable.
# End: Test Data For Verify If User Is Able To Perform All Actions On Country Group Screen With L2 Roles Assigned.

# Start: Test Data For Verify Country Dropdown In Countrygroup Screen Search Panel Is Multiselect Dropdown
@{SINGLE COUNTRY LIST}          Afghanistan                     # Single country list, editable.
@{MULTIPLE COUNTRY LIST}        Afghanistan     India           # Multiple country list, editable.
# End: Test Data For Verify Country Dropdown In Countrygroup Screen Search Panel Is Multiselect Dropdown

# Start: Test Data To Validate Business Admin Search Bulk Edit In Buy And Sell Deal Management Screen
${BUY AND SELL MANAGEMENT START DATE}       1/1/2010        # Buy and sell management start date, editable.
@{BUY AND SELL MANAGEMENT STATUS}           Requested       # Buy and sell management status, editable.
# End: Test Data To Validate Business Admin Search Bulk Edit In Buy And Sell Deal Management Screen

# Start: Test Data To Validate Internal Cost Adjustment Parameters For Invalid Entries
${COST PER MINUTE FIELD LABEL TEXT}     Cost Per Minute       # Cost Per Minute field label text, not editable.
${ERROR MESSAGE VALIDATION TEXT FOR COST PER MINUTE LABEL}      Please enter either Cost Per Minute or Percentage      # Text for error message validation, not editable.
${PERCENTAGE FIELD LABEL TEXT}     Percentage       # Percentage field label text, not editable.
${ROUTE CLASS FIELD LABEL TEXT WITH UPPERCASE R}     Route Class       # Route Class field label text, not editable.
${ERROR MESSAGE VALIDATION TEXT FOR ROUTE CLASS LABEL}      The Route Class field is required      # Text for error message validation, not editable.
${ROUTING PRODUCT FIELD LABEL TEXT}     Routing Product        # Routing Product field label text, not editable.
${ERROR MESSAGE VALIDATION TEXT FOR ROUTING PRODUCT LABEL}      The Routing Product field is required.     # Text for error message validation, not editable.
${ERROR MESSAGE VALIDATION TEXT FOR BEGIN DATE LABEL}      The Begin Date field is required      # Text for error message validation, not editable.
${BEGIN DATE FIELD LABEL TEXT}     Begin Date         # Begin Date field label text, not editable.
# End: Test Data To Validate Internal Cost Adjustment Parameters For Invalid Entries

# Start: Test Data To Validate Create Category
${ACCOUNT CATEGORY TYPE#1}              Account Category #1         # Category type Account Category #1.
${ACCOUNT CATEGORY TYPE#2}              Account Category #2         # Category type Account Category #2.
# End: Test Data To Validate Create Category
