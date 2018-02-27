*** Settings ***
Documentation     Carrier Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${CARRIER NAME COLUMN NAME}                     Carrier Name                # Carrier Name column name, not Editable
${CARRIER RELATIONSHIPS INLINE ITEM}            Carrier Relationships       # Carrier Ralationships inline item name, not Editable
${CARRIER DIALED DIGITS INLINE ITEM}			Carrier Dialed Digits		# Inline item name, not Editable.
${PRICE LISTS HISTORY INLINE ITEM}              Price Lists History         # Price Lists History inline item name, not Editable
${CARRIER PROFILE INLINE ITEM}                  Carrier Profile             # Carrier Profile inline item name, not Editable.
${CARRIER PROFILE TAB NAME}                     Carrier Profile             # Carrier Profile tab name, not Editable
${CARRIER STATUS COLUMN NAME}                   Carrier Status              # Carrier Status column name, not Editable
${ACTIVE STATUS}                                Active                      # Active status, not Editable
${NAME COLUMN NAME}                             Name                        # Name column name, not Editable
${EDIT INLINE ITEM}                             Edit                        # Inline item name, not Editable
${INACTIVE STATUS}                              Inactive                    # Inactive status, not Editable
${INACTIVE STATUS IN GRID}                      InActive                    # Inactive status in grid, not Editable
${VIEW PRICE LIST DETAIL INLINE ITEM}           View Price List Detail      # Inline item name, not Editable.
${CARRIER RATES INLINE ITEM}                    Carrier Rates               # Inline item name, not Editable.
${NAME COLUMN NAME}                             Name                        # Name column name, not Editable
${RATE PLAN COLUMN NAME}			            Rate Plan 			        # Rate plan column name, not Editable
${PRICE LISTS HISTORY TAB NAME}                 Price Lists History         # Price lists history tab name, not Editable.
${CREDIT PROFILE INLINE ITEM}                   Credit Profile              # Credit profile inline item name, not Editable.
${TRANSACTION ID COLUMN NAME}                   Transaction Id              # Transaction id column name, not Editable.
${CREDIT PROFILE TAB NAME}		    		    Credit Profile  		  	# Credit profile tab name, not Editable.
${THRESHOLD LEVEL 1 TEXT}		    		    Level 1  				  		# Threshold level 1 text, not Editable.
${THRESHOLD LEVEL 2 TEXT}		    		    Level 2  				  		# Threshold level 2 text, not Editable.
${THRESHOLD LEVEL 3 TEXT}		    		    Level 3  				  		# Threshold level 3 text, not Editable.
${THRESHOLD SHUTOFF TEXT}		    		    Shut-off  				  		# Threshold shut-off text, not Editable.
${CREDIT PROFILE INLINE ITEM} 	                Credit Profile                  # Credit management grid's inline item, not Editable.
${MONITORING DETAILS INLINE ITEM} 	            Monitoring Details              # Credit management grid's inline item, not Editable.
${ENTER TRANSACTIONS INLINE ITEM} 	            Enter Transactions              # Credit management grid's inline item, not Editable.
${DEACTIVATE CREDIT LIMIT INLINE ITEM}	        Deactivate Credit Limit         # Credit management grid's inline item, not Editable.
${BILL ACCOUNT TYPE}                            bill                        # Bill account type, not Editable.
${AUDIT ACCOUNT TYPE}                           audit                       # Audit account type, not Editable.
${ACCOUNT TYPE COLUMN NAME}                     Account Type                # Account type column name, not Editable.
${OUT AUDIT ACCOUNT TYPE}                       Out Audit Account                           # Out audit account type, not Editable.
${COMMERCIAL TRUNK COLUMN NAME}					Commercial Trunk 			                # Commercial Trunk column name, not Editable
${NEW EVENT CASE POP UP NAME}					New Event Case - Event Scenario Group		# New event case pop up name, not Editable
${EDIT EVENT CASE POP UP NAME}					Edit Event Case : Event Scenario Group		# Edit event case pop up name, not Editable
${CARRIER COLUMN NAME}                          Carrier  				  		# Carrier column name, not Editable.
${CARRIER DESTINATION INLINE ITEM}			    Carrier Destinations            # Carrier destinations inline item, not Editable.
${TRUNK COLUMN NAME}						    Trunk                           # Trunk column name, not Editable.
${CALL TYPE COLUMN NAME}			            Call Type 			            # Call Type column name, not Editable
${SOURCE TYPE COLUMN NAME}			            Source Type 			        # Source Type column name, not Editable
# End: Constant Variables

# Start: Test Data To Validate Search Functionality In Dialed Digits Destination
${DIALED DIGITS BUSINESS TYPE}					${EMPTY}						# Business type, Editable.
${DIALED DIGITS NUMBER PLAN TYPE}				${EMPTY}						# Number plan type, Editable.
@{DIALED DIGITS NUMBER PLAN}					        						# Number plan drop down item, Editable. Blank if no data.
${DIALED DIGITS DESTINATION}					${EMPTY}						# Destination, Editable.
${DIALED DIGIT}									${EMPTY}						# Dialed digit, Editable.
${DIALED DIGITS BEGIN DATE}						${EMPTY}						# Begin date, Editable.
${DIALED DIGITS END DATE}						${EMPTY}						# End date, Editable.
@{COUNTRY FOR DESTINATIONS SEARCH}				        						# Country drop down item, Editable, Blank if no data.
${DESTINATION FOR DESTINATIONS SEARCH}			${EMPTY}						# Destination, Editable.
@{DESTINATIONS NUMBER PLAN}						        						# Number plan drop down item, Editable,  Blank if no data.
${DESTINATIONS BEGIN DATE}						${EMPTY}						# Begin date, Editable.
${DESTINATIONS END DATE}						${EMPTY}						# End date, Editable.
# End: Test Data To Validate Search Functionality In Dialed Digits Destination

# Start: Test Data To Validate Compare Price List Functionality
@{STATUS LIST FOR COMPARE}                                              # Status list dropdown items, Editable. Default blank.
${PRICE LIST TYPE FOR COMPARE}              ${EMPTY}                    # Price list type name, Editable
${DESTINATIONS FOR COMPARE}                 ${EMPTY}                    # Destinations, Editable
${FROM DATE FOR COMPARE}                    1/1/2014                    # Price list type name, Editable
${TO DATE FOR COMPARE}                      ${EMPTY}                    # To date, Editable
@{PRICE LISTS LIST TO COMPARE}              20160623073552458_test_newanalog1   20160623073013208_test_newanalog1       # List of Price Lists, Editable
# End: Test Data To Validate Compare Price List Functionality

# Start: Test Data To Validate Create And Edit Customer Functionality
${CARRIER NAME FOR CREATE CUSTOMER}             Afghanistan Telecom         # Carrier Name, Editable.
${CUSTOMER NAME PREFIX}                         UAT_AUTO_CustomerName_      # Customer name prefix, not Editable
${CUSTOMER ABBREVIATION PREFIX}                 UATAUTOVA_                  # Customer abbreviation prefix, not Editable
# End: Test Data To Validate Create And Edit Customer Functionality

# Start: Test Data To Validate The Behavior When Customer And Price List Options Are Changed
${FROM DATE FOR PRICE LIST HISTORY}                  9/7/2014                                   # From date, Editable.
@{STATUS LIST FOR SEARCH}                                                                       # Status list, Editable.
${PRICE LIST TYPE FOR SEARCH}                        ${EMPTY}                                   # Price list type, Editable.
${DESTINATION FOR SEARCH}                            ${EMPTY}                                   # Destination, Editable.
${TO DATE FOR PRICE LIST HISTORY}                    ${EMPTY}                                   # To date, Editable.
# End: Test Data To Validate The Behavior When Customer And Price List Options Are Changed

# Start: Test Data To Validate Create New Rate Functionality
${END DATE FOR ADD NEW RATE}					${EMPTY}				        # End date, Editable.
${PRODUCT NAME FOR ADD NEW RATE}                Afghanistan-ISDN		                # Product name, Editable, combination with rate plan must be unique.
${CLI FOR ADD NEW RATE}                         Yes                             # Cli, Editable.
# End: Test Data To Validate Create New Rate Functionality

# Start: Test Data To Validate Create And Edit Trunks Functionality
${CLLI FOR CREATE}                              ${EMPTY}                    # Clli, Editable
${EFFECTIVE DATE FOR CREATE}                    ${EMPTY}                    # Effective Date, Editable, Mandatory; Current date by default
${DIRECTION FOR CREATE}                         Bidirectional               # Direction, Editable, Mandatory
${DESCRIPTION FOR CREATE}                       Test Automation             # Description, Editable
# End: Test Data To Validate Create And Edit Trunks Functionality

# Start: Test Data To Validate Create And Edit Vendor Functionality
@{CARRIER NAME LIST FOR CREATE VENDOR}          Afghanistan Telecom         # Carrier Name List, Editable.
${CARRIER NAME FOR CREATE VENDOR}               Afghanistan Telecom         # Carrier Name, Editable.
${RATE PLAN FOR CREATE VENDOR}                  test                        # Rate plan, Editable, Mandatory
${VENDOR SOURCE TYPE}                           Vendor                      # Source type, not Editable.
# End: Test Data To Validate Create And Edit Vendor Functionality

# Start: Test Data To Validate Create And Edit New Rate Plan Functionality
${INCREASE NOTICE PERIOD DAYS}				${EMPTY}				# Increase notice period days, Editable
${DECREASE NOTICE PERIOD DAYS}				${EMPTY}				# Decrease notice period days, Editable
${DIAL DIGIT CHANGE NOTICE PERIOD DAYS}		${EMPTY}				# Dial Digit notice period days, not Editable
${BUSINESS TYPE}							International			# Business type item, Editable
${TRAFFIC DIRECTION}						Outbound				# Traffic direction item, Editable
${INBOUND TRAFFIC DIRECTION}                Inbound                 # Inbound Traffic direction item, Editable
${TARIFF TYPE}								Hubbing					# Tariff type item, Editable
${CURRENCY}									USD						# Currency item, Editable
${PRODUCT CATALOG}							Vendor Specific Destination Rating Product 		# Product catalog item, Editable
${RATE PLAN SCOPE}							${EMPTY}				# Rate plan scope item, Editable
${COST PRICE INDICATOR}						False					# Cost pricing indicator, Editable; True/False
${RATE PLAN CAT 1}							${EMPTY}				# Rate plan catergory #1 item, Editable
${RATE PLAN CAT 2}							${EMPTY}				# Rate plan catergory #2 item, Editable
${BEGIN DATE}								${EMPTY}				# Begin date, Editable; Current date by default
${END DATE}									${EMPTY}				# End date, Editable; Greater than begin date by defalut
${NOTE FOR RATE PLAN}						Test Automation			# Note, Editable
${INCREASE NOTICE PERIOD DAYS FOR EDIT}				${EMPTY}				# Increase notice period days, Editable
${DECREASE NOTICE PERIOD DAYS FOR EDIT}				${EMPTY}				# Decrease notice period days, Editable
${DIAL DIGIT CHANGE NOTICE PERIOD DAYS FOR EDIT}	${EMPTY}				# Dial Digit notice period days, not Editable
${SERVICE LEVEL FOR EDIT}							${EMPTY}				# Service level item, Editable
${PRODUCT CATALOG FOR EDIT}							${EMPTY} 				# Product catalog item, Editable
${RATE PLAN SCOPE FOR EDIT}							${EMPTY}				# Rate plan scope item, Editable
${RATE PLAN CAT 1 FOR EDIT}							${EMPTY}				# Rate plan catergory #1 item, Editable
${RATE PLAN CAT 2 FOR EDIT}							${EMPTY}				# Rate plan catergory #2 item, Editable
${NOTE FOR RATE PLAN FOR EDIT}						${EMPTY}				# Note, Editable
${INBOUND TRAFFIC DIRECTION}						Inbound				    # Inbound Traffic direction item, Editable
# End: Test Data To Validate Create And Edit New Rate Plan Functionality

# Start: Test Data To Validate Export Functionality
@{STATUS LIST FOR EXPORT}                                              # Status list dropdown items, Editable
${PRICE LIST TYPE FOR EXPORT}               ${EMPTY}                   # Price list type name, Editable
${DESTINATIONS FOR EXPORT}                  ${EMPTY}                   # Destinations, Editable
${FROM DATE FOR EXPORT}                     1/1/2014                   # Price list type name, Editable
${TO DATE FOR EXPORT}                       ${EMPTY}                   # To date, Editable
# End: Test Data To Validate Export Functionality

# Start: Test Data To Validate Create And Edit Bill Account Functionality
${BILL ACCOUNT NAME PREFIX}							UAT_AUTO_BillName_			# Bill account name prefix, Editable.
${BILL ACCOUNT ABBREVIATION PREFIX}					UATAUTOBillAccount_			# Abbreviation name prefix, Editable.
${BILL ACCOUNT LEGAL NAME PREFIX}					UAT_AUTO_LegalName_			# Legal name prefix, Editable.
${BILLING METHOD}									Self Declaration			# Billing method, Editable.
${BILLING TERMS NUMBER}								1							# Billing terms number, Editable.
${BILLING TERMS BASE PERIOD}						Month(s)					# Billing terms base period, Editable.
${BILLING TERMS DATE TYPE}							Settlement End Date			# Billing terms date type, Editable.
${PAYMENT TERMS NUMBER}								1							# Payment terms number, Editable.
${PAYMENT TERMS BASE PERIOD}						Month(s)					# Payment terms base period, Editable.
${PAYMENT TERMS DATE TYPE}							Settlement End Date			# Payment terms date type, Editable.
${RECEIVING ACCOUNT}								Telarix International		# Receiving account, Editable.
${USAGE TIME ZONE}									System Call Date			# Usage time zone, Editable.
${ACCOUNTING CODE}									${EMPTY}					# Accounting code, Editable.
${ORIGIN BASED RATING}								Yes							# Origin based rating, Editable.
${BILLING CYCLE TEMPLATE}							Monthly						# Billing cycle template, Editable.
${SETTLEMENT CYCLE TEMPLATE}						Monthly						# Settlement cycle template, Editable.
${BILLING CYCLE BEGIN DATE}							11/1/2016					# Billing cycle begin date, 1st date of previous month, Editable.
${BILLING CYCLE END DATE}							${EMPTY}					# Billing cycle end date, Editable.
${SETTLEMENT CYCLE BEGIN DATE}						11/1/2016					# Settlement cycle begin date, 1st date of previous month, Editable.
${SETTLEMENT CYCLE END DATE}						${EMPTY}					# Settlement cycle end date, 1st date of previous month, Editable.
${RESIDUAL TRAFFIC WINDOW NUMBER}					1							# Residual traffic window number, Editable.
${BILLING ANALYST NAME}								priya prabhu				# Billing analyst name, Editable.
${BILLING MANAGER NAME}								Gayathri Devi				# Billing manager name, Editable.
${COVER LETTER TEMPLATE}							Declaration Template - USD		# Cover letter template, Editable.
${STATEMENT TEMPLATE}								Credit Note Template            # Statement template, Editable.
${STATEMENT NUMBER TEMPLATE}						Invoice Numbering Template		# Statement number template, Editable.
${POSITIVE ADJUSTMENT STATEMENT TEMPLATE}			Invoice Numbering Template		# Positive adjustment statement template, Editable.
${NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}			Invoice Numbering Template		# Negative adjustment statement template, Editable.
${RESIDUAL TRAFFIC TREATMENT}						Include in Current Open Statement		# Residual traffic treatment, Editable.
${SHORTFALL APPROVAL METHOD}						Manual						# Shortfall approval method, Editable.
${ABBREVIATION FOR EDIT BILL ACCOUNT}				UATAUTOBillAccount_Edited_      # Abbreviation name for edit, Editable.
${BILL ACCOUNT LEGAL NAME FOR EDIT}					UAT_AUTO_LegalName_Edited_		# Legal name for edit, Editable.
${BILLING ANALYST NAME FOR EDIT}					Praveen Narala				# Billing analyst name for edit, Editable.
${BILLING MANAGER NAME FOR EDIT}					Mahyar Ghasemali				# Billing manager name for edit, Editable.
# End: Test Data To Validate Create And Edit Bill Account Functionality

# Start: Test Data To Validate The Bulk Edit Functionality In Credit Management
${CARRIER ACTIVE PROVISIONING STATUS}               Carrier Active				# Provisioning status, Editable.
# End: Test Data To Validate The Bulk Edit Functionality In Credit Management

# Start: Test Data To Validate Monitoring Create Transaction Functionality In Credit Management
${TRANSACTION DATE}								    12/7/2016						# Transaction date, Editable.
${TRANSACTION TYPE}								    Adjustment						# Transaction type, Editable.
${TRANSACTION ACCOUNT TYPE}							${EMPTY}	    				# Transaction account type, Editable.
${TRANSACTION ACCOUNT}							    ${EMPTY}	    				# Transaction account, Editable.
${TRANSACTION AMOUNT}							    5000.25                        # Transaction amount, Editable, must have 2 digits after decimal point.
${TRANSACTION CURRENCY}							    USD	    				        # Transaction currency, Editable.
${EXTERNAL REFERENCE 1}							    ${EMPTY}	    				# External Reference 1, Editable.
${EXTERNAL REFERENCE 2}							    ${EMPTY}	    				# External Reference 2, Editable.
${STATEMENT BEGIN DATE}							    ${EMPTY}	    				# Statement begin date, Editable.
${STATEMENT END DATE}							    ${EMPTY}	    				# Statement end date, Editable.
# End: Test Data To Validate Monitoring Create Transaction Functionality In Credit Management

# Start: Test Data To Validate Activate Credit Limit Functionality In Credit Management
${CARRIER NAME FOR ACTIVATE CREDIT LIMIT}		    Cable And Wireless  				# Carrier name, Editable.
${CREDIT MANAGEMENT STATUS}		    		        Yes  				  			# Credit management status, Editable.
${PRE PAID CUSTOMER STATUS}		    		        No  				  			# Pre paid customer status, Editable.
${CURRENCY FOR ACTIVATE CREDIT LIMIT}		    	USD  				  			# Currency, Editable.
${CREDIT LIMIT FOR ACTIVATE CREDIT LIMIT}		    10000.00  				  		# Credit limit, Editable, must have 2 digits after decimal point.
${THRESHOLD LEVEL 1 VALUE}		    		        20  				  			# Threshold level 1 value, Editable.
${THRESHOLD LEVEL 2 VALUE}		    		        15  				  			# Threshold level 2 value, Editable, must be smaller than level 1 value.
${THRESHOLD LEVEL 3 VALUE}		    		        10  				  			# Threshold level 3 value, Editable, must be smaller than level 2 value.
${THRESHOLD SHUTOFF VALUE}		    		        5  				  			    # Threshold shut-off value, Editable, must be smaller than level 3 value.
${CREDIT LIMIT MONITORING}		    		        Carrier Tariff Type(s)  		# Credit limit monitoring, Editable.
${TARRIF TYPE ASSIGNMENT}		    		        Hubbing  		  		  		# Tarrif type assignment, Editable.
# End: Test Data To Validate Activate Credit Limit Functionality In Credit Management

# Start: Test Data To Validate Create Transaction Functionality In Credit Management
${MONITORING TRANSACTION DATE}								    12/11/2016						# Transaction date, Editable.
${MONITORING TRANSACTION TYPE}								    Adjustment						# Transaction type, Editable.
${MONITORING TRANSACTION ACCOUNT TYPE}							${EMPTY}	    				# Transaction account type, Editable.
${MONITORING TRANSACTION ACCOUNT}							    ${EMPTY}	    				# Transaction account, Editable.
${MONITORING TRANSACTION AMOUNT}							    5675.75                         # Transaction amount, Editable, must have 2 digits after decimal point.
${MONITORING TRANSACTION CURRENCY}							    USD	    				        # Transaction currency, Editable.
${MONITORING EXTERNAL REFERENCE 1}							    ${EMPTY}	    				# External Reference 1, Editable.
${MONITORING EXTERNAL REFERENCE 2}							    ${EMPTY}	    				# External Reference 2, Editable.
${MONITORING STATEMENT BEGIN DATE}							    ${EMPTY}	    				# Statement begin date, Editable.
${MONITORING STATEMENT END DATE}							    ${EMPTY}	    				# Statement end date, Editable.
# End: Test Data To Validate Create Transaction Functionality In Credit Management

# Start: Test Data For Carrier To Validate Credit Management Grid Inline Actions Availibility
${TRUNK PROVISIONING STATUS FOR SHUTOFF}                        Carrier Shutoff Approved        # Trunk Providing Status For Shutoff, not Editable.
# End: Test Data For Carrier To Validate Credit Management Grid Inline Actions Availibility

# Start: Test Data To Validate Credit Profile Edit Functionality In Credit Management
${CREDIT MANAGEMENT STATUS FOR EDIT}		        Yes  				  			# Credit management status, Editable.
${PRE PAID CUSTOMER STATUS FOR EDIT}		    	No  				  			# Pre paid customer status, Editable.
${CURRENCY FOR EDIT}		    			    	USD  				  			# Currency, Editable.
${CREDIT LIMIT FOR EDIT}		    		    	${EMPTY}  				  		# Credit limit, Editable, must have 2 digits after decimal point.
${THRESHOLD LEVEL 1 VALUE FOR EDIT}		    		20  				  			# Threshold level 1 value, Editable.
${THRESHOLD LEVEL 2 VALUE FOR EDIT}		    		15  				  			# Threshold level 2 value, Editable, must be smaller than level 1 value.
${THRESHOLD LEVEL 3 VALUE FOR EDIT}		    		10  				  			# Threshold level 3 value, Editable, must be smaller than level 2 value.
${THRESHOLD SHUTOFF VALUE FOR EDIT}		    		5  				  			    # Threshold shut-off value, Editable, must be smaller than level 3 value.
${CREDIT LIMIT MONITORING FOR EDIT}		    		Carrier Tariff Type(s)  		# Credit limit monitoring, Editable.
${TARRIF TYPE ASSIGNMENT FOR EDIT}		    		Hubbing  		  		  		# Tarrif type assignment, Editable.
${USER ACTIVATION APPROVAL STATUS}                  ${EMPTY} 		  		  		# User activation approval status, Editable.
${USER SHUTOFF APPROVAL STATUS}                     ${EMPTY} 		  		  		# User shutoff approval status, Editable.
# End: Test Data To Validate Credit Profile Edit Functionality In Credit Management

# Start: Test Data To Validate Create And Edit In Audit Account Functionality
${CARRIER NAME FOR CREATE AUDIT ACCOUNT}             	Afghanistan Telecom         # Carrier Name, Editable.
${BILLING METHOD FOR AUDIT}								Self Declaration			# Billing method, Editable.
${BILLING TERMS NUMBER FOR AUDIT}						1							# Billing terms number, Editable.
${BILLING TERMS BASE PERIOD FOR AUDIT}					Month(s)					# Billing terms base period, Editable.
${BILLING TERMS DATE TYPE FOR AUDIT}					Settlement End Date			# Billing terms date type, Editable.
${PAYMENT TERMS NUMBER FOR AUDIT}						1							# Payment terms number, Editable.
${PAYMENT TERMS BASE PERIOD FOR AUDIT}					Month(s)					# Payment terms base period, Editable.
${PAYMENT TERMS DATE TYPE FOR AUDIT}					Settlement End Date			# Payment terms date type, Editable.
${DISPUTE TERMS NUMBER FOR AUDIT}						1							# Dispute terms number, Editable.
${DISPUTE TERMS BASE PERIOD FOR AUDIT}					Month(s)					# Dispute terms base period, Editable.
${DISPUTE TERMS DATE TYPE FOR AUDIT}					Statement End Date			# Dispute terms date type, Editable.
${PAYING ACCOUNT FOR AUDIT}								Telarix International		# Paying account, Editable.
${RECEIVING ACCOUNT FOR AUDIT}							Afghanistan Telecom			# Receiving account, Editable.
${USAGE TIME ZONE FOR AUDIT}							System Call Date			# Usage time zone, Editable.
${ACCOUNTING CODE FOR AUDIT}							ACTest						# Accounting code, Editable.
${BILLING CYCLE TEMPLATE FOR AUDIT}						Monthly						# Billing cycle template, Editable.
${SETTLEMENT CYCLE TEMPLATE FOR AUDIT}					Monthly						# Settlement cycle template, Editable.
${BILLING CYCLE BEGIN DATE FOR AUDIT}					${EMPTY}					# Billing cycle begin date, 1st date of previous month, Editable.
${BILLING CYCLE END DATE FOR AUDIT}						${EMPTY}					# Billing cycle end date, Editable.
${SETTLEMENT CYCLE BEGIN DATE FOR AUDIT}				${EMPTY}					# Settlement cycle begin date, 1st date of previous month, Editable.
${SETTLEMENT CYCLE END DATE FOR AUDIT}					${EMPTY}					# Settlement cycle end date, 1st date of previous month, Editable.
${RESIDUAL TRAFFIC WINDOW NUMBER FOR AUDIT}				1							# Residual traffic window number, Editable.
${AUDIT ANALYST NAME}									priya prabhu				# Audit analyst name, Editable.
${AUDIT MANAGER NAME}									Gayathri Devi				# Audit manager name, Editable.
${DEFAULT DISPUTE FOR AUDIT}							A - High Probability		# Default dispute, Editable.
${AUDIT ACCOUNT ACTIVE STATUS}						    Active						# Active Status, not Editable.
${ABBREVIATION FOR EDIT AUDIT ACCOUNT}					UATAUTOAuditAccount_Edited_         # Abbreviation name for edit, Editable.
${AUDIT ACCOUNT LEGAL NAME FOR EDIT}					UAT_AUTO_LegalName_Edited_		    # Legal name for edit, Editable.
${AUDIT ANALYST NAME FOR EDIT}							Praveen Narala				# Audit analyst name for edit, Editable.
${AUDIT MANAGER NAME FOR EDIT}							Mahyar Ghasemali			# Audit manager name for edit, Editable.
# End: Test Data To Validate Create And Edit In Audit Account Functionality

# Start: Test Data To Validate Create And Edit Out Audit Account Functionality
@{CARRIER NAME LIST FOR CREATE OUT AUDIT ACCOUNT}        	Afghanistan Telecom         # Carrier Name List, Editable.
${CARRIER NAME FOR CREATE OUT AUDIT ACCOUNT}             	Afghanistan Telecom         # Carrier Name, Editable.
${BILL ACCOUNT FOR CREATE OUT AUDIT ACCOUNT}             	UAT_AUTO_BillName_8H40FM       # Bill account name, Editable.
${USAGE TIME ZONE FOR OUT AUDIT}							System Call Date			# Usage time zone, Editable.
${DISPUTE TERMS NUMBER FOR OUT AUDIT}						1							# Dispute terms number, Editable.
${DISPUTE TERMS BASE PERIOD FOR OUT AUDIT}					Month(s)					# Dispute terms base period, Editable.
${DISPUTE TERMS DATE TYPE FOR OUT AUDIT}					Statement End Date			# Dispute terms date type, Editable.
${ACCOUNTING CODE FOR OUT AUDIT}							ACTest						# Accounting code, Editable.
${ANALYST NAME FOR OUT AUDIT}							    priya prabhu				# Audit analyst name, Editable.
${MANAGER NAME FOR OUT AUDIT}							    Gayathri Devi				# Audit manager name, Editable.
${DEFAULT DISPUTE FOR OUT AUDIT}							A - High Probability		# Default dispute, Editable.
${OUT AUDIT ACCOUNT ACTIVE STATUS}						    Active						# Active Status, not Editable.
${OUT AUDIT ANALYST NAME FOR EDIT}							Praveen Narala				# Audit analyst name for edit, Editable.
${OUT AUDIT MANAGER NAME FOR EDIT}							Mahyar Ghasemali			# Audit manager name for edit, Editable.
# End: Test Data To Validate Create And Edit Out Audit Account Functionality

# Start: Test Data To Validate Create Edit And Delete Scenarios Functionality
${SCENARIO TYPE FOR CREATE SCENARIO}			    Country						# Scenario Type item name, Editable, Mandatory
${TRAFFIC DIRECTION FOR CREATE SCENARIO}		    Outbound					# Traffic Direction item name, Editable, Mandatory
${COUNTRY FOR CREATE SCENARIO}					    United States Of America					# Country item name, Editable, Mandatory
${SERVICE FOR CREATE SCENARIO}					    ISDN						# Service item name, Editable, Mandatory
${BEGIN DATE FOR CREATE SCENARIO}				    ${EMPTY}					# Begin Date, Editable, Mandatory; Current date by default
${END DATE FOR CREATE SCENARIO}				        ${EMPTY}					# End Date, Editable, not Mandatory; Empty by default
${PAYING PARTY}									    Telarix						# Paying Party, Editable
# End: Test Data To Validate Create Edit And Delete Scenarios Functionality

# Start: Test Data To Verify Threshold Bulk Edit Functionality in Credit Management
${THRESHOLD TYPE FOR BULK EDIT}                     Remaining Credit %          # Threshold type, Editable.
${WARNING LEVEL 1}		    		                20  				  		# Warning level 1 value, Editable.
${WARNING LEVEL 2}		    		                15  				  		# Warning level 2 value, Editable, must be smaller than level 1 value.
${WARNING LEVEL 3}		    		                10  				  		# Warning level 3 value, Editable, must be smaller than level 2 value.
${SHUTOFF RECOMMENDED}		    	                5  				  			# Shut-off recommended, Editable, must be smaller than level 3 value.
${LEVEL 1 TEXT}		    	                        level 1  				  	# Warning level 1 text, not Editable.
${LEVEL 2 TEXT}		    	                        level 2  				  	# Warning level 2 text, not Editable.
${LEVEL 3 TEXT}		    	                        level 3  				  	# Warning level 3 text, not Editable.
${SHUTOFF RECOMMENDED TEXT}		    	            shutoff  				  	# Shut-off recommended text, not Editable.
# End: Test Data To Verify Threshold Bulk Edit Functionality in Credit Management

# Start: Test Data For Carrier To Validate Monitoring Details Edit Functionality
${CARRIER NAME FOR MONITORING DETAILS}		    Afghanistan Telecom     # Carrier name, Editable
${TRUNK PROVISIONING STATUS}		    		Carrier Active       	# Trunk provisioning status, Editable
# End: Test Data For Carrier To Validate Monitoring Details Edit Functionality

# Start: Test Data For Buy Verify Upload Network Codes
@{CARRIER NAME LIST FOR NETWORK CODE}		Afghanistan Telecom 				# Carrier name list, Editable.
${NUMBER PLAN COMMERCIAL TRUNK}				CT006 								# Number plan commercial trunk, Editable.
${NUMBER PLAN DIRECTION}					Outbound 							# Number plan direction, Editable.
${NUMBER PLAN BEGIN DATE}					${EMPTY} 							# Number plan begin date, Editable.
@{TRUNK NAME LIST}							CT006								# Commercial trunk name list, Editable.
${NUMBER PLAN TYPE FOR SEARCH}				Vendor Specific Number Plan 		# Number plan for search, not Editable.
${BEGIN DATE FOR SEARCH}					2/3/2017 							# Begin date for search, not Editable.
# End: Test Data For Buy Verify Upload Network Codes

# Start: Test Data For Djezzy IXConnect Carrier To Validate Create A Periodic Billing Cycle
@{PERIODIC CYCLE CARRIER NAME LIST FOR CREATE BILL ACCOUNT}        Afghanistan Telecom         # Carrier Name List, editable.
${PERIODIC CYCLE CARRIER NAME FOR CREATE BILL ACCOUNT}             Afghanistan Telecom         # Carrier Name, editable.
${PERIODIC CYCLE BILLING METHOD}                                   Self Declaration            # Billing method, editable.
${PERIODIC CYCLE BILLING TERMS NUMBER}                             1                           # Billing terms number, editable.
${PERIODIC CYCLE BILLING TERMS BASE PERIOD}                        Month(s)                    # Billing terms base period, editable.
${PERIODIC CYCLE BILLING TERMS DATE TYPE}                          Settlement End Date         # Billing terms date type, editable.
${PERIODIC CYCLE PAYMENT TERMS NUMBER}                             1                           # Payment terms number, editable.
${PERIODIC CYCLE PAYMENT TERMS BASE PERIOD}                        Month(s)                    # Payment terms base period, editable.
${PERIODIC CYCLE PAYMENT TERMS DATE TYPE}                          Settlement End Date         # Payment terms date type, editable.
${PERIODIC CYCLE PAYING ACCOUNT}                                   Afghanistan Telecom         # Paying account, editable.
${PERIODIC CYCLE RECEIVING ACCOUNT}                                Telarix International       # Receiving account, editable.
${PERIODIC CYCLE USAGE TIME ZONE}                                  System Call Date            # Usage time zone, editable.
${PERIODIC CYCLE ACCOUNTING CODE}                                  ${EMPTY}                    # Accounting code, editable.
${PERIODIC CYCLE ORIGIN BASED RATING}                              Yes                         # Origin based rating, editable.
${PERIODIC CYCLE SETTLEMENT CYCLE TEMPLATE}                        Monthly                     # Settlement cycle template, editable.
${PERIODIC CYCLE BILLING CYCLE END DATE}                           ${EMPTY}                    # Billing cycle end date, editable.
${PERIODIC CYCLE SETTLEMENT CYCLE END DATE}                        ${EMPTY}                    # Settlement cycle end date, 1st date of previous month, editable.
${PERIODIC CYCLE RESIDUAL TRAFFIC WINDOW NUMBER}                   1                           # Residual traffic window number, editable.
${PERIODIC CYCLE BILLING ANALYST NAME}                             priya prabhu                # Billing analyst name, editable.
${PERIODIC CYCLE BILLING MANAGER NAME}                             Gayathri Devi               # Billing manager name, editable.
${PERIODIC CYCLE COVER LETTER TEMPLATE}                            Declaration Template - USD               # Cover letter template, editable.
${PERIODIC CYCLE STATEMENT TEMPLATE}                               Credit Note Template                     # Statement template, editable.
${PERIODIC CYCLE STATEMENT NUMBER TEMPLATE}                        Invoice Numbering Template               # Statement number template, editable.
${PERIODIC CYCLE POSITIVE ADJUSTMENT STATEMENT TEMPLATE}           Invoice Numbering Template               # Positive adjustment statement template, editable.
${PERIODIC CYCLE NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}           Invoice Numbering Template               # Negative adjustment statement template, editable.
${PERIODIC CYCLE RESIDUAL TRAFFIC TREATMENT}                       Include in Current Open Statement        # Residual traffic treatment, editable.
${PERIODIC CYCLE SHORTFALL APPROVAL METHOD}                        Manual                      # Shortfall approval method, editable.
# End: Test Data For Djezzy IXConnect Carrier To Validate Create A Periodic Billing Cycle

# Start: Test Data For Djezzy IXConnect Carrier To Validate Set Up Multiple Statement Numbering Templates
@{SNT CARRIER NAME LIST FOR CREATE BILL ACCOUNT}      Afghanistan Telecom         # Carrier Name List, editable.
${SNT CARRIER NAME FOR CREATE BILL ACCOUNT}           Afghanistan Telecom         # Carrier Name, editable.
${SNT BILLING METHOD}                                 Self Declaration            # Billing method, editable.
${SNT BILLING TERMS NUMBER}                           1                           # Billing terms number, editable.
${SNT BILLING TERMS BASE PERIOD}                      Month(s)                    # Billing terms base period, editable.
${SNT BILLING TERMS DATE TYPE}                        Settlement End Date         # Billing terms date type, editable.
${SNT PAYMENT TERMS NUMBER}                           1                           # Payment terms number, editable.
${SNT PAYMENT TERMS BASE PERIOD}                      Month(s)                    # Payment terms base period, editable.
${SNT PAYMENT TERMS DATE TYPE}                        Settlement End Date         # Payment terms date type, editable.
${SNT PAYING ACCOUNT}                                 Afghanistan Telecom         # Paying account, editable.
${SNT RECEIVING ACCOUNT}                              Telarix International       # Receiving account, editable.
${SNT USAGE TIME ZONE}                                System Call Date            # Usage time zone, editable.
${SNT ACCOUNTING CODE}                                ${EMPTY}                    # Accounting code, editable.
${SNT ORIGIN BASED RATING}                            Yes                         # Origin based rating, editable.
${SNT BILLING CYCLE TEMPLATE}                         Monthly                     # Billing cycle template, Editable.
${SNT SETTLEMENT CYCLE TEMPLATE}                      Monthly                     # Settlement cycle template, editable.
${SNT BILLING CYCLE BEGIN DATE}						  11/1/2016					  # Billing cycle begin date, 1st date of previous month, Editable.
${SNT BILLING CYCLE END DATE}						  ${EMPTY}					  # Billing cycle end date, Editable.
${SNT SETTLEMENT CYCLE BEGIN DATE}					  11/1/2016					  # Settlement cycle begin date, 1st date of previous month, Editable.
${SNT SETTLEMENT CYCLE END DATE}                      ${EMPTY}                    # Settlement cycle end date, 1st date of previous month, editable.
${SNT RESIDUAL TRAFFIC WINDOW NUMBER}                 1                           # Residual traffic window number, editable.
${SNT BILLING ANALYST NAME}                           priya prabhu                # Billing analyst name, editable.
${SNT BILLING MANAGER NAME}                           Gayathri Devi               # Billing manager name, editable.
${SNT COVER LETTER TEMPLATE}                          Declaration Template - USD               # Cover letter template, editable.
${SNT STATEMENT TEMPLATE}                             Credit Note Template                     # Statement template, editable.
${SNT POSITIVE ADJUSTMENT STATEMENT TEMPLATE}         Invoice Numbering Template               # Positive adjustment statement template, editable.
${SNT NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}         Invoice Numbering Template               # Negative adjustment statement template, editable.
${SNT RESIDUAL TRAFFIC TREATMENT}                     Include in Current Open Statement        # Residual traffic treatment, editable.
${SNT SHORTFALL APPROVAL METHOD}                      Manual                      # Shortfall approval method, editable.
# End: Test Data For Djezzy IXConnect Carrier To Validate Set Up Multiple Statement Numbering Templates

# Start: Test Data For Djezzy Carrier To Create A New Company Create Carrier Details For A New Interconnect Partner
${DJEZZY CARRIER NAME PREFIX}                       UAT_AUTO_CarrierName_            # Carrier name prefix, editable.
${DJEZZY CARRIER ABBREVIATION PREFIX}               uatautoc_                        # Carrier abbreviation prefix, editable.
${DJEZZY COMPANY NAME FOR CREATE}                   Telarix International            # Company name, editable.
${INTERCOMPANY CARRIER TYPE}                        InterCompany                     # Intercompany carrier type, not editable.
# End: Test Data For Djezzy Carrier To Create A New Company Create Carrier Details For A New Interconnect Partner

# Start: Test Data For Djezzy Carrier Carrier Relationship To Validate Create A Bilateral Billing Account
@{BILATERAL CARRIER NAME LIST FOR CREATE BILL ACCOUNT}      Afghanistan Telecom         # Carrier Name List, editable.
${BILATERAL CARRIER NAME FOR CREATE BILL ACCOUNT}           Afghanistan Telecom         # Carrier Name, editable.
${BILATERAL BILLING METHOD}                                 Declaration                 # Billing method, editable.
${BILATERAL BILLING TERMS NUMBER}                           1                           # Billing terms number, editable.
${BILATERAL BILLING TERMS BASE PERIOD}                      Month(s)                    # Billing terms base period, editable.
${BILATERAL BILLING TERMS DATE TYPE}                        Settlement End Date         # Billing terms date type, editable.
${BILATERAL PAYMENT TERMS NUMBER}                           1                           # Payment terms number, editable.
${BILATERAL PAYMENT TERMS BASE PERIOD}                      Month(s)                    # Payment terms base period, editable.
${BILATERAL PAYMENT TERMS DATE TYPE}                        Settlement End Date         # Payment terms date type, editable.
${BILATERAL PAYING ACCOUNT}                                 Telarix International       # Paying account, editable.
${BILATERAL RECEIVING ACCOUNT}                              Afghanistan Telecom         # Receiving account, editable.
${BILATERAL USAGE TIME ZONE}                                System Call Date            # Usage time zone, editable.
${BILATERAL ACCOUNTING CODE}                                ${EMPTY}                    # Accounting code, editable.
${BILATERAL ORIGIN BASED RATING}                            Yes                         # Origin based rating, editable.
${BILATERAL BILLING CYCLE TEMPLATE}                         Monthly                     # Billing cycle template, editable.
${BILATERAL SETTLEMENT CYCLE TEMPLATE}                      Monthly                     # Settlement cycle template, editable.
${BILATERAL BILLING CYCLE BEGIN DATE}                       11/1/2016                   # Billing cycle begin date, 1st date of previous month, editable.
${BILATERAL BILLING CYCLE END DATE}                         ${EMPTY}                    # Billing cycle end date, editable.
${BILATERAL SETTLEMENT CYCLE BEGIN DATE}                    11/1/2016                   # Settlement cycle begin date, 1st date of previous month, editable.
${BILATERAL SETTLEMENT CYCLE END DATE}                      ${EMPTY}                    # Settlement cycle end date, 1st date of previous month, editable.
${BILATERAL RESIDUAL TRAFFIC WINDOW NUMBER}                 1                           # Residual traffic window number, editable.
${BILATERAL BILLING ANALYST NAME}                           priya prabhu                # Billing analyst name, editable.
${BILATERAL BILLING MANAGER NAME}                           Gayathri Devi               # Billing manager name, editable.
${BILATERAL COVER LETTER TEMPLATE}                          Declaration Template - USD               # Cover letter template, editable.
${BILATERAL STATEMENT TEMPLATE}                             Credit Note Template                     # Statement template, editable.
${BILATERAL STATEMENT NUMBER TEMPLATE}						Invoice Numbering Template		         # Statement number template, editable.
${BILATERAL POSITIVE ADJUSTMENT STATEMENT TEMPLATE}         Invoice Numbering Template               # Positive adjustment statement template, editable.
${BILATERAL NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}         Invoice Numbering Template               # Negative adjustment statement template, editable.
${BILATERAL RESIDUAL TRAFFIC TREATMENT}                     Include in Current Open Statement        # Residual traffic treatment, editable.
${BILATERAL SHORTFALL APPROVAL METHOD}                      Manual                          # Shortfall approval method, editable.
${BILATERAL ABBREVIATION FOR EDIT BILL ACCOUNT}				UATAUTOBillAccount_Edited_      # Abbreviation name for edit, editable.
${BILATERAL BILL ACCOUNT LEGAL NAME FOR EDIT}				UAT_AUTO_LegalName_Edited_		# Legal name for edit, editable.
${BILATERAL BILLING ANALYST NAME FOR EDIT}					Praveen Narala				    # Billing analyst name for edit, editable.
${BILATERAL BILLING MANAGER NAME FOR EDIT}					Mahyar Ghasemali				# Billing manager name for edit, editable.
# End: Test Data For Djezzy Carrier Carrier Relationship To Validate Create A Bilateral Billing Account

# Start: Test Data For Carrier Relationship Create And Edit Number Plan
${DIRECTION FOR CREATE NUMBER PLAN}                  Bidirectional               # Direction, Editable, Mandatory
${NUMBER PLAN FOR CREATE NUMBER PLAN}                Outbound Ref.               # Number plan, Editable, Mandatory
${BEGIN DATE FOR CREATE NUMBER PLAN}				 ${EMPTY}					 # Begin Date, Editable, Mandatory; Current date by default
# End: Test Data For Carrier Relationship Create And Edit Number Plan
