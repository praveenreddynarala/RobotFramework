*** Settings ***
Documentation     Bill and Audit Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${ADJUSTMENT FOLDER COLUMN NAME}			Adjustment Folder 			# Adjustment Folder column name, not editable.
${CHARGES INLINE ITEM}						Charges 					# Charges inline item, not editable.
${CHARGE NAME COLUMN NAME}					Charge Name 				# Charge name column name, not editable.
${ADJUSTMENT FOLDER CHARGES TAB NAME}		Adjustment Folders 		    # Adjustment Folder Charge tab name, not editable.
${DISPUTES INLINE ITEM}                     Disputes 					# Disputes inline item, not editable.
${NON TRAFFIC CHARGES INLINE ITEM}          Non-Traffic Charges         # Non traffic charges inline item, not editable.
${OUTBOUND STATEMENT TAB NAME PREFIX}       Outbound Statement          # Outbound statement tab name prefix, not editable.
${STATEMENT DETAILS INLINE ITEM}            Statement Details			# Statement details inline item, not editable.
${MINUTES/QUANTITY COLUMN NAME}				Minutes/Quantity			# Minutes/Quantity column name, not editable.
${RATE COLUMN NAME}				        	Rate				        # Rate column name, not editable.
${INBOUND STATEMENTS TAB NAME}		    	Inbound Statement: 		    # Adjustment Folder Charge tab name, not editable.
${AUDIT ACCOUNT LABEL TEXT}						Audit Account				# Audit account label text, not editable.
${STATEMENT NUMBER LABEL TEXT}					Statement Number			# Statement number label text, not editable.
${STATEMENT CURRENCY LABEL TEXT}				Statement Currency			# Statement currency label text, not editable.
${TOTAL AMOUNT LABEL TEXT}						Total Amount				# Total amount label text, not editable.
${STATEMENT BEGIN DATE LABEL TEXT}				Statement Begin Date		# Statement begin date label text, not editable.
${STATEMENT END DATE LABEL TEXT}				Statement End Date			# Statement end date label text, not editable.
${ISSUED DATE LABEL TEXT}						Issued Date					# Issued date label text, not editable.
${RECEIVED DATE LABEL TEXT}						Received Date				# Received date label text, not editable.
${DUE DATE LABEL TEXT}							Due Date					# Due date label text, not editable.
${PRODUCT COLUMN NAME}				        	Product				        # Product column name, not editable.
${MAP LINE ITEMS INLINE ITEM}                   Map Line Items              # Map line items inline item name, not editable.
${STATEMENT NUMBER COLUMN NAME}                 Statement Number            # Statement number column name, not editable.
${KEYWORDS COLUMN NAME}					        Keywords 				    # Keywords column name, not editable.
${ORDER COLUMN NAME}					        Order 				        # Order column name, not editable.
${REFERENCE NUMBER COLUMN NAME}					Reference Number 			# Reference number column name, not editable.
${CREDIT DEBIT COLUMN NAME}                     Credit/Debit                # Credit/Debit column name, not editable.
${DATE COLUMN NAME}                             Date                        # Date column name, not editable.
${TRANSACTION DETAILS COLUMN NAME}              Transaction Details         # Transaction details column name, not editable.
${CURRENCY COLUMN NAME}                         Currency                    # Currency column name, not editable.
${AMOUNT COLUMN NAME}                           Amount                      # Amount column name, not editable.
${TARIFF TYPE COLUMN NAME}                  Tariff Type                 # Tariff type column name, not editable.
${LINE ITEM TYPE COLUMN NAME}               Line Item Type              # Line item type column name, not editable.
${BULK ADD NUMBER OF ROWS}                         1                           # Bulk Add number of rows, not editable.
${RECEIVED CHARGES TAB NAME}                    Received Charges            # Received charges tab name, not editable.
${STATEMENT VALIDATION TAB NAME}                Statement Validation        # Statement Validation tab name, not editable.
${DOCUMENTS TAB NAME}                           Documents                   # Documents tab name, not editable.
${STATEMENT FIELDS TAB NAME}                    Statement Fields            # Statement fields tab name, not editable.
${WORKFLOW TAB NAME}                            Workflow                    # Workflow tab name, not editable.
${STATEMENT NUMBER COLUMN NAME}             Statement Number            # Statement number column name, not editable.
${STATEMENT VALIDATION INLINE ITEM}         Statement Validation        # Statement validation inline item, not editable.
${NOTES INLINE ITEM NAME}                   Notes                       # Inline item name, not editable.
${NOTE CONTENT COLUMN NAME}                 Note Content                # Note Content Column name, not editable.
${RESOLUTION INLINE ITEM NAME}                   Resolution                  # Resolution inline item name, not editable.
${DESCRIPTION COLUMN NAME}                  Description                 # Description column name, not editable.
${DISPUTE LINE ITEM TAB NAME PREFIX}        Dispute Line Item Group:         # Dispute Line Item Group tab name prefix, not editable.
${AUDIT ACCOUNT COLUMN NAME}                    Audit Account                    # Audit Account column name, not editable.
${STATEMENT NUMBER COLUMN NAME}                 Statement Number                 # Statement Number column name, not editable.
${STATEMENT STATUS LABEL TEXT}                  Statement Status                 # Statement status label text, not editable.
${RATING QUANTITY COLUMN NAME}			    Rating Quantity 			# Rating quantity column name, not editable.
${RATE COLUMN NAME}						    Rate 						# Rate column name, not editable.
${SUMMARY INLINE ITEM}					    Summary 					# Summary inline item, not editable.
${DISPUTE LINE ITEM TAB NAME}			    Dispute Line Item Group 	# Dispute line item tab name, not editable.
${RESOLUTION INLINE ACTION ITEM}		    Resolution 					# Resolution inline item, not editable.
${DESCRIPTION COLUMN NAME}		    	    Description 				# Description column name, not editable.
${RESOLUTION TYPE COLUMN NAME}		    	Resolution Type 			# Resolution Type column name, not editable.
${DISCREPANCY SOURCE COLUMN NAME}		    Discrepancy Source 			# Discrepancy Source column name, not editable.
${RESOLUTION AMOUNT COLUMN NAME}		    Resolution Amount 			# Resolution Amount column name, not editable.
${DISPUTE LINE ITEM GROUP TAB NAME PREFIX}  		    Dispute Line Item Group:		    # Dispute line item group tab name prefix, not editable.
${DISPUTE GROUP COLUMN NAME}		        Dispute Group 			# Dispute Group column name, not editable.
${CREATE INLINE ACTION ITEM}		        Create 					# Create inline item, not editable.
${AUDIT ACCOUNT INFO INLINE ITEM}			Audit Account Info 				# Audit account info inline item, not editable.
${CLEAR INPUT FIELD}						${TRUE} 						# Clear input field, not editable.
${CLEAR INPUT FIELD FALSE}					${FALSE} 						# Clear input field false, not editable.
${EDIT AUDIT ACCOUNT POPUP NAME}			Edit Audit Account 				# Edit audit account popup name, not editable.
@{REGULAR STATEMENT TYPE}					Regular							# Regular statement type, not editable.
${REJECT INLINE ITEM}						Reject 							# Reject inline item, not editable.
${SUSPECT FLAGS INLINE ACTION ITEM}     	Suspect Flags				    # Suspect flags inline action item, not editable.
${TRANSACTIONS INLINE ITEM}			        Transactions 				    # Transactions inline item, not editable.
${TRANSACTION CODE COLUMN NAME}		        Transaction Code 			    # Transaction code column name, not editable.
${APPROVED STATUS}						    Approved 				        # Approved status text, not editable.
${PENDING STATUS}						    Pending 				        # Pending status text, not editable.
${REJECTED STATUS}						    Rejected 				        # Rejected status text, not editable.
${SHORTFALL INLINE ITEM}                    Shortfall                       # Shortfall inline item, not editable.
${STATEMENT FIELDS INLINE ITEM}             Statement Fields                # Statement fields inline item name, not editable.
${ADJUSTMENT STATEMENT INLINE ITEM}         Adjustment Statement            # Adjustment statement inline item name, not editable.
${BILL ACCOUNT INFO INLINE ITEM}            Bill Account Info               # Bill account info inline item name, not editable.
${BILL ACCOUNT INFO POP UP NAME}            Edit Bill Account               # Bill account info pop up name, not editable.
${AUDIT ACCOUNT INFO INLINE ITEM}           Audit Account Info              # Audit Account Info inline item name, not editable.
${AUDIT ACCOUNT INFO POP UP NAME}           Edit Audit Account              # Audit account info pop up name, not editable.
${WORKFLOW INLINE ITEM}			            Workflow 				        # Workflow inline item, not editable.
# End: Constant Variables

# Start: Test Data to Validate Remove From This Adjustment Folder Functionality
@{ADJUSTMENT FOLDER STATUS}						Initiated			# Adjustment folder status list, editable.
${ADJUSTMENT FOLDER NAME TO FILTER}				DT2012				# Adjustment folder name, editable.
${ADJUSTMENT FOLDER NAME FOR INLINE ACTION}		DT2012 				# Adjustment folder name, editable.
${CHARGES BEGIN DATE}							${EMPTY}			# Charges begin date, editable; Current date by default; Mandatory.
${CHARGES END DATE}								${EMPTY}			# Charges end date, editable; Current date by default.
${CHARGES GRID CURRENCY}						USD					# Charges grid currency, editable; Mandatory.
${CHARGES GRID AMOUNT}							123					# Charges grid amount, editable; Mandatory.
# End: Test Data to Validate Remove From This Adjustment Folder Functionality

# Start: Test Data to Validate Add Charge functionality in Adjustment Folder
@{ADJUSTMENT FOLDER STATUS FOR ADD CHARGE}						Initiated			# Adjustment folder for add charge, editable.
${ADJUSTMENT FOLDER NAME TO FILTER FOR ADD CHARGE}				DT2012				# Adjustment folder name, editable.
${ADJUSTMENT FOLDER NAME FOR INLINE ACTION FOR ADD CHARGE}		DT2012 				# Adjustment folder name, editable.
${CHARGES BEGIN DATE FOR ADD CHARGE}							${EMPTY}			# Charges begin date, editable; Begin date of previous month; Mandatory.
${CHARGES END DATE FOR ADD CHARGE}								${EMPTY}			# Charges end date, editable; End date of previous month.
${CHARGES GRID CURRENCY FOR ADD CHARGE}						    USD					# Charges grid currency, editable; Mandatory.
${CHARGES GRID AMOUNT FOR ADD CHARGE}							75					# Charges grid amount, editable; Mandatory, maximum 2 digits.
${CHARGES GRID ACCOUNTING CODE ADD CHARGE}						test				# Charges grid accounting code, editable; Mandatory.
# End: Test Data to Validate Add Charge functionality in Adjustment Folder

# Start: Test Data to Validate Remove Dispute Functionality Without Any Record Selection
@{ADJUSTMENT FOLDER BILL ACCOUNT}				    Deutsche Telekom Hubbing Revenue Invoice		# Adjustment folder bill account list, editable.
@{ADJUSTMENT FOLDER NAMES}				UAT_AUTO_PraveenTest							# Adjustment folder name list, editable.
${ADJUSTMENT FOLDER NAME FOR REMOVE DISPUTE}		UAT_AUTO_PraveenTest							# Adjustment folder name, editable.
${AUDIT ACCOUNT NAME FOR ADD DISPUTE}				Deutsche Telekom Hubbing Revenue Invoice		# Audit account name, editable.
# End: Test Data to Validate Remove Dispute Functionality Without Any Record Selection

# Start: Test Data To Validate The Behavior When User Does Not Select Any Record And Click on Below Actions
@{ADJUSTMENT FOLDER STATUS FOR CHECK BEHAVIOR}						Initiated			# Adjustment folder status list, editable.
${ADJUSTMENT FOLDER NAME TO FILTER FOR CHECK BEHAVIOR}				DT2012				# Adjustment folder name, editable.
${ADJUSTMENT FOLDER NAME FOR INLINE ACTION FOR CHECK BEHAVIOR}		DT2012 				# Adjustment folder name, editable.
# End: Test Data To Validate The Behavior When User Does Not Select Any Record And Click on Below Actions

# Start: Test Data to Validate Navigation To Add Dispute Functionality
@{ADJUSTMENT FOLDER BILL ACCOUNT FOR ADD DISPUTE}		Deutsche Telekom Hubbing Revenue Invoice		# Adjustment folder bill account list, editable.
@{ADJUSTMENT FOLDER NAME FOR ADD DISPUTE}				DT2012							# Adjustment folder name list, editable.
${ADJUSTMENT FOLDER NAME FOR SELECT DISPUTE INLINE}		DT2012							# Adjustment folder name, editable.
${AUDIT ACCOUNT NAME FOR ADD DISPUTES}			        Deutsche Telekom Hubbing Revenue Invoice		# Audit account name, editable.
${ADD DISPUTE STATEMENT NUMBER}							${EMPTY}										# Add dispute pop up statement number, editable.
${ADD DISPUTE DISPUTE TYPE}								${EMPTY}										# Dispute type, editable.
${ADD DISPUTE LINE ITEM GROUP}							${EMPTY}										# Line item group, editable.
${ADD DISPUTE STATUS}									${EMPTY}										# Dispute status, editable.
${ADD DISPUTE DATE}										${EMPTY}										# Dispute date, editable.
# End: Test Data to Validate Navigation To Add Dispute Functionality

# Start: Test Data to Validate Navigation To Remove Dispute Functionality
@{ADJUSTMENT FOLDER BILL ACCOUNT FOR REMOVE DISPUTE}		Deutsche Telekom Hubbing Revenue Invoice		# Adjustment folder bill account list, editable.
@{ADJUSTMENT FOLDER NAME LIST TO REMOVE DISPUTE}			UAT_AUTO_PraveenTest							# Adjustment folder name list, editable.
${ADJUSTMENT FOLDER NAME TO REMOVE DISPUTE}		            UAT_AUTO_PraveenTest							# Adjustment folder name, editable.
${AUDIT ACCOUNT NAME FOR REMOVE DISPUTES}			        Deutsche Telekom Hubbing Revenue Invoice		# Audit account name, editable.
${STATEMENT NUMBER FOR REMOVE DISPUTE}                      TLXI-INV-0252                                   # Statement number, editable.
${ADD DISPUTE STATEMENT NUMBER FOR REMOVE}					${EMPTY}										# Add dispute pop up statement number, editable.
${ADD DISPUTE DISPUTE TYPE FOR REMOVE}						${EMPTY}										# Dispute type, editable.
${ADD DISPUTE LINE ITEM GROUP FOR REMOVE}					${EMPTY}										# Line item group, editable.
${ADD DISPUTE STATUS FOR REMOVE}							${EMPTY}										# Dispute status, editable.
${ADD DISPUTE DATE FOR REMOVE}								${EMPTY}										# Dispute date, editable.
# End: Test Data to Validate Navigation To Remove Dispute Functionality

# Start: Test Data to Validate Move To Another Folder Functionality
@{ADJUSTMENT FOLDER STATUS LIST TO MOVE}		Initiated		                                # Adjustment folder status list, not editable.
@{ADJUSTMENT FOLDER NAME LIST TO MOVE}			UAT_AUTO_PraveenTest							# Adjustment folder name list, editable.
${ADJUSTMENT FOLDER NAME FROM MOVE}		        DT2012											# Adjustment folder name, editable.
${ADJUSTMENT FOLDER NAME TO MOVE}		        UAT_AUTO_PraveenTest							# Adjustment folder name, editable.
${CHARGE NAME TO MOVE}				            UAT_AUTO_ChargeName4PJXZY		                # Charge Name to move, editable.
# End: Test Data to Validate Move To Another Folder Functionality

# Start: Test Data For Inbound Statement to Verify Create And Delete New Statement Functionality
${AUDIT ACCOUNT FOR CREATE}						Afghan_InAudit				# Audit account for create, editable.
${STATEMENT CURRENCY}							USD							# Statement currency, editable.
${STATEMENT VAT CODE}							500					        # Vat code, editable.
${STATEMENT VAT AMOUNT}							9999					    # Vat amount, editable.
${STATEMENT TOTAL AMOUNT}						1200.00						# Total amount, editable, must have 2 digits after decimal point.
${STATEMENT TOTAL AMOUNT WITH TAXES}			${EMPTY}					# Total amount with taxes, editable.
${STATEMENT BEGIN DATE}							${EMPTY}					# Begin date, editable.
${STATEMENT END DATE}							${EMPTY}					# End date, editable.
${STATEMENT ISSUED DATE}						${EMPTY}					# Issues date, editable.
${STATEMENT RECEIVED DATE}						${EMPTY}					# Received date, editable.
${STATEMENT DUE DATE}							${EMPTY}					# Due date, editable.
${STATEMENT BASE CURRENCY}						${EMPTY}					# Base currency, editable.
${STATEMENT EXCHANGE RATE}						1200					    # Exchange rate, editable.
${STATEMENT EXCHANGE RATE DATE}					${EMPTY}					# Exchange rate date, editable.
@{AUDIT ACCOUNT LIST FOR SEARCH}				Afghan_InAudit				# Audit account list, editable.
@{STATUS LIST FOR SEARCH}						Pending						# Status list, editable.
# End: Test Data For Inbound Statement to Verify Create And Delete New Statement Functionality

# Start: Test Data to Validate Tax Template Creation For A Non-Recurring Charge
@{STATEMENT TYPE LIST}                  Regular                             # Statement type list, not editable.
@{BILL ACCOUNT LIST}                    Declaration test                    # Bill account list, not editable.
${BILL ACCOUNT FOR INLINE ACTION}       Declaration test                    # Bill account, not editable.
${ACCOUNTING CODE}                      TLX_SK_01                           # Accounting code, editable.
${CHARGE CATEGORY}                      Maintenance                         # Charge category, editable.
${CURRENCY}                             USD                                 # Currency, editable.
${CHARGE AMOUNT}                        1200.00                             # Charge amount, editable: Must be a decimal number of two precision point.
${TAX TEMPLATE}                         test                                # Tax template, editable.
# End: Test Data to Validate Tax Template Creation For A Non-Recurring Charge

# Start: Test Data For Inbound Statement to Verify The Bulk Edit Functionality For Service Group VOICE Type
${BULK EDIT AUDIT ACCOUNT}						Aircel India Hubbing Revenue Invoice				# Audit account for create, editable.
${BULK EDIT CURRENCY}							USD							# Statement currency, editable.
${BULK EDIT VAT CODE}							${EMPTY}					# Vat code, editable.
${BULK EDIT VAT AMOUNT}							${EMPTY}					# Vat amount, editable.
${BULK EDIT TOTAL AMOUNT}						1200.00						# Total amount, editable, must have 2 digits after decimal point.
${BULK EDIT TOTAL AMOUNT WITH TAXES}			${EMPTY}					# Total amount with taxes, editable.
${BULK EDIT BEGIN DATE}							${EMPTY}					# Begin date, editable.
${BULK EDIT END DATE}							${EMPTY}					# End date, editable.
${BULK EDIT ISSUED DATE}						${EMPTY}					# Issues date, editable.
${BULK EDIT RECEIVED DATE}						${EMPTY}					# Received date, editable.
${BULK EDIT DUE DATE}							${EMPTY}					# Due date, editable.
${BULK EDIT BASE CURRENCY}						${EMPTY}					# Base currency, editable.
${BULK EDIT EXCHANGE RATE}						${EMPTY}					# Exchange rate, editable.
${BULK EDIT EXCHANGE RATE DATE}					${EMPTY}					# Exchange rate date, editable.
@{BULK EDIT AUDIT ACCOUNT LIST FOR SEARCH}		Aircel India Hubbing Revenue Invoice				# Audit account list, editable.
@{BULK EDIT STATUS LIST FOR SEARCH}				Pending						# Status list, editable.
${BULK ADD NUMBER OF ROWS}				        1						    # Bulk add numbre of rows, editable.
${BULK ADD TARIFF TYPE}				            Bilateral					# Tariff type, editable.
${BULK ADD LINE ITEM TYPE}				        Standard					# Line item type, editable.
${BULK ADD SERVICE GROUP}				        Voice						# Service group, editable.
${BULK ADD PRODUCT NAME}				        ${EMPTY}					# Product name, editable.
${BULK ADD TIME BAND}				            Off-Peak					# Time band, editable.
${BULK ADD RATING UNIT}				            Minutes						# Rating Unit, editable.
${BULK ADD BEGIN DATE}				            ${EMPTY}					# Begin date, editable; By default current date.
${BULK ADD END DATE}				            ${EMPTY}					# End date, editable; By default last date of current month.
${TARIFF TYPE LABEL TEXT}						Tariff Type				    # Tariff type label text, not editable.
${PRODUCT LABEL TEXT}					        Product			            # Product label text, not editable.
${LINE ITEM TYPE LABEL TEXT}				    Line Item Type			    # Line item type label text, not editable.
${SERVICE GROUP LABEL TEXT}						Service Group			    # Service group label text, not editable.
${TIME BAND LABEL TEXT}				            Time Band		            # Time band date label text, not editable.
${RATING UNIT LABEL TEXT}				        Rating Unit			        # Rating unit label text, not editable.
${MINUTES/QUANTITY VALUE}				        1.00				        # Minutes/Quantity value, editable, must have 2 digits after decimal point.
${RATE VALUE}				        	        0.120000				    # Rate value, editable, must have 6 digits after decimal point.
${TARIFF TYPE FOR BULK EDIT}				    Hubbing					    # Tariff type for bulk edit, editable.
${LINE ITEM TYPE FOR BULK EDIT}				    ${EMPTY}					# Line item type, editable.
${SERVICE GROUP FOR BULK EDIT}				    ${EMPTY}					# Service group, editable.
${PRODUCT NAME FOR BULK EDIT}				    ${EMPTY}					# Product name, editable.
${TIME BAND FOR BULK EDIT}				        ${EMPTY}					# Time band, editable.
${RATING UNIT FOR BULK EDIT}				    ${EMPTY}					# Rating Unit, editable.
# End: Test Data For Inbound Statement to Verify The Bulk Edit Functionality For Service Group VOICE Type

# Start: Test Data For Inbound Statement to Verify Edit Cancel Save And Delete Line Item In The Grid
${CHANGED TARIFF TYPE}				            Hubbing					    # Tariff type, editable.
${CHANGED LINE ITEM TYPE}				        Adjustment					# Line item type, editable.
${CANCEL CHANGE TARIFF TYPE}				    Bilateral					# Tariff type, editable.
${CANCEL CHANGE LINE ITEM TYPE}				    Standard					# Line item type, editable.
# End: Test Data For Inbound Statement to Verify Edit Cancel Save And Delete Line Item In The Grid

# Start: Test Data For Inbound Statement to Validate The Upload And Delete Document Functionality
@{DOCUMENT UPLOAD STATUS LIST}				    Pre-Audited						# Status list, editable.
${DOCUMENT UPLOAD BEGIN DATE}				    11/17/2015						# Begin date for search, editable.
${DOCUMENT UPLOAD END DATE}				        1/18/2017						# End date for search, editable.
${NEW DOCUMENT KEYWORD}				            AUTO Document						# Document keyword, editable.
${NEW DOCUMENT REFERENCE NUMBER}				123456						    # Refrence number, editable.
${NEW DOCUMENT DATE}				            ${EMPTY}						# Document date, editable.
${NEW DOCUMENT ORDER}				            21						        # Document order, editable.
${FILE PATH FOR UPLOAD}				            C:/Templates/ISDN/OriginSetTemplate.xls			# Document file path, editable.
${DOCUMENT KEYWORD FOR EDIT}				    AUTO Document Keyword			# Keyword for edit, editable.
${DOCUMENT REFRENCE NUMBER FOR EDIT}			1234567						# Reference number for edit, editable.
${DOCUMENT ORDER FOR EDIT}				        22						    # Order for edit, editable.
${DOCUMENT ORDER FOR CANCEL EDIT}				23						        # Order for edit and cancel, editable.
# End: Test Data For Inbound Statement to Validate The Upload And Delete Document Functionality

# Start: Test Data to Verify The Mapping Line Items
@{MAPPING AUDIT ACCOUNT LIST}           TLX_VO_AuditTestInvoice     # Audit account list, editable.
@{MAPPING STATEMENT STATUS LIST}        Entered                     # Statement status list, not editable.
${MAPPING BEGIN DATE}                   11/17/2012                  # Begin date, editable.
${MAPPING STATEMENT NUMBER}             DemoTest                    # Statement number, editable.
${MAPPED STATUS}                        Mapped                      # Mapped status, not editable.
${ENTERED STATUS}                       Entered                     # Entered status, not editable.
# End: Test Data to Verify The Mapping Line Items

# Start: Test Data For Inbound Statement To Verify The Bulk Edit Functionality For Service Group Non Recurring Type
${NON RECURRING BULK EDIT AUDIT ACCOUNT}					Aircel India Hubbing Revenue Invoice				# Audit account for create, editable.
${NON RECURRING BULK EDIT CURRENCY}							USD							# Statement currency, editable.
${NON RECURRING BULK EDIT VAT CODE}							${EMPTY}					# Vat code, editable.
${NON RECURRING BULK EDIT VAT AMOUNT}						${EMPTY}					# Vat amount, editable.
${NON RECURRING BULK EDIT TOTAL AMOUNT}						1200.00						# Total amount, editable, must have 2 digits after decimal point.
${NON RECURRING BULK EDIT TOTAL AMOUNT WITH TAXES}			${EMPTY}					# Total amount with taxes, editable.
${NON RECURRING BULK EDIT BEGIN DATE}						${EMPTY}					# Begin date, editable.
${NON RECURRING BULK EDIT END DATE}							${EMPTY}					# End date, editable.
${NON RECURRING BULK EDIT ISSUED DATE}						${EMPTY}					# Issues date, editable.
${NON RECURRING BULK EDIT RECEIVED DATE}					${EMPTY}					# Received date, editable.
${NON RECURRING BULK EDIT DUE DATE}							${EMPTY}					# Due date, editable.
${NON RECURRING BULK EDIT BASE CURRENCY}					${EMPTY}					# Base currency, editable.
${NON RECURRING BULK EDIT EXCHANGE RATE}					${EMPTY}					# Exchange rate, editable.
${NON RECURRING BULK EDIT EXCHANGE RATE DATE}				${EMPTY}					# Exchange rate date, editable.
@{NON RECURRING BULK EDIT AUDIT ACCOUNT LIST}		        Aircel India Hubbing Revenue Invoice				# Audit account list, editable.
@{NON RECURRING BULK EDIT STATUS LIST}				        Pending						# Status list, editable.
${NON RECURRING BULK ADD NUMBER OF ROWS}				    1						    # Bulk add numbre of rows, editable.
${NON RECURRING BULK ADD LINE ITEM TYPE}				    Standard					# Line item type, editable.
${NON RECURRING BULK ADD SERVICE GROUP}				        Non-Recurring				# Service group, editable.
${NON RECURRING BULK ADD RATING UNIT}				        Quantity					# Rating Unit, editable.
${NON RECURRING BULK ADD BEGIN DATE}				        ${EMPTY}					# Begin date, editable; By default current date.
${NON RECURRING BULK ADD END DATE}				            ${EMPTY}					# End date, editable; By default last date of current month.
${NON RECURRING MINUTES/QUANTITY VALUE}				        1.00				        # Minutes/Quantity value, editable, must have 2 digits after decimal point.
${NON RECURRING RATE VALUE}				        	        0.120000				    # Rate value, editable, must have 6 digits after decimal point.
${NON RECURRING LINE ITEM TYPE FOR BULK EDIT}				Adjustment					# Line item type, editable.
${NON RECURRING SERVICE GROUP FOR BULK EDIT}				${EMPTY}					# Service group, editable.
${NON RECURRING RATING UNIT FOR BULK EDIT}				    ${EMPTY}					# Rating Unit, editable.
# End: Test Data For Inbound Statement To Verify The Bulk Edit Functionality For Service Group Non Recurring Type

# Start: Test Data to Validate Add And Delete Transaction Functionality
@{CREATE TRANSACTION AUDIT ACCOUNT LIST}            TLX_VO_AuditTestInvoice             # Audit account list, editable.
@{CREATE TRANSACTION STATEMENT STATUS LIST}         Pre-Audited                         # Statement status list, not editable.
${CREATE TRANSACTION BEGIN DATE}                    11/11/2015                          # Begin date, editable.
${CREATE TRANSACTION STATEMENT NUMBER}              DemoDisputes                        # Statement number, editable.
${TRANSACTION CREDIT DEBIT}                         Credit                              # Credit/Debit column value, editable.
${TRANSACTION DATE}                                 ${EMPTY}                            # Date, editable; By default current date.
${TRANSACTION DETAILS}                              UAT_AUTO_Transaction Details        # Transaction details, editable.
${TRANSACTION AMOUNT}                               1200                                # Amount, Editalbe.
${TRANSACTION CURRENCY}                             USD                                 # Currency, editable.
# End: Test Data to Validate Add And Delete Transaction Functionality

# Start: Test Data For Inbound Statement to Verify The Bulk Edit Functionality For Service Group SMS Type
${SMS BULK EDIT AUDIT ACCOUNT}						Aircel India Hubbing Revenue Invoice				# Audit account for create, editable.
${SMS BULK EDIT CURRENCY}							USD							# Statement currency, editable.
${SMS BULK EDIT VAT CODE}							${EMPTY}					# Vat code, editable.
${SMS BULK EDIT VAT AMOUNT}							${EMPTY}					# Vat amount, editable.
${SMS BULK EDIT TOTAL AMOUNT}						1200.00						# Total amount, editable, must have 2 digits after decimal point.
${SMS BULK EDIT TOTAL AMOUNT WITH TAXES}			${EMPTY}					# Total amount with taxes, editable.
${SMS BULK EDIT BEGIN DATE}							${EMPTY}					# Begin date, editable.
${SMS BULK EDIT END DATE}							${EMPTY}					# End date, editable.
${SMS BULK EDIT ISSUED DATE}						${EMPTY}					# Issues date, editable.
${SMS BULK EDIT RECEIVED DATE}						${EMPTY}					# Received date, editable.
${SMS BULK EDIT DUE DATE}							${EMPTY}					# Due date, editable.
${SMS BULK EDIT BASE CURRENCY}						${EMPTY}					# Base currency, editable.
${SMS BULK EDIT EXCHANGE RATE}						${EMPTY}					# Exchange rate, editable.
${SMS BULK EDIT EXCHANGE RATE DATE}					${EMPTY}					# Exchange rate date, editable.
@{SMS BULK EDIT AUDIT ACCOUNT LIST}		            Aircel India Hubbing Revenue Invoice				# Audit account list, editable.
@{SMS BULK EDIT STATUS LIST}				        Pending						# Status list, editable.
${SMS BULK ADD NUMBER OF ROWS}				        1						    # Bulk add numbre of rows, editable.
${SMS PRODUCT LABEL TEXT}					        SMS Product			        # SMS product label text, not editable.
${SMS BULK ADD TARIFF TYPE}				            Hubbing					    # Tariff type, editable.
${SMS BULK ADD LINE ITEM TYPE}				        Standard					# Line item type, editable.
${SMS BULK ADD SERVICE GROUP}				        SMS						    # Service group, editable.
${SMS BULK ADD PRODUCT NAME}				        Afghanistan-PSTN			# Product name, editable.
${SMS BULK ADD TIME BAND}				            Off-Peak					# Time band, editable.
${SMS BULK ADD RATING UNIT}				            Messages					# Rating Unit, editable.
${SMS BULK ADD BEGIN DATE}				            ${EMPTY}					# Begin date, editable; By default current date.
${SMS BULK ADD END DATE}				            ${EMPTY}					# End date, editable; By default last date of current month.
${SMS MINUTES/QUANTITY VALUE}				        1.00				        # Minutes/Quantity value, editable, must have 2 digits after decimal point.
${SMS RATE VALUE}				        	        0.120000				    # Rate value, editable, must have 6 digits after decimal point.
${SMS TARIFF TYPE FOR BULK EDIT}				    Bilateral					# Tariff type for bulk edit, editable.
${SMS LINE ITEM TYPE FOR BULK EDIT}				    ${EMPTY}					# Line item type, editable.
${SMS SERVICE GROUP FOR BULK EDIT}				    ${EMPTY}					# Service group, editable.
${SMS PRODUCT NAME FOR BULK EDIT}				    ${EMPTY}					# Product name, editable.
${SMS TIME BAND FOR BULK EDIT}				        ${EMPTY}					# Time band, editable.
${SMS RATING UNIT FOR BULK EDIT}				    ${EMPTY}					# Rating Unit, editable.
# End: Test Data For Inbound Statement to Verify The Bulk Edit Functionality For Service Group SMS Type

# Start: Test Data to Verify Map Unmapped And Delete Line Items Functionality
@{MAP LINE ITEM AUDIT ACCOUNT LIST}         Deutsche Telekom Hubbing Cost Invoice      # Audit account list, editable.
@{MAP LINE ITEM STATEMENT STATUS LIST}      Entered         # Statement status list, not editable.
${MAP LINE ITEM STATEMENT NUMBER}           H-I-JAN12-1        # Statement number, editable.
${MAP LINE ITEM BEGIN DATE FOR SEARCH}      3/7/2010        # Statement number, editable.
# End: Test Data to Verify Map Unmapped And Delete Line Items Functionality

# Start: Test Data to Validate The Override Rates Functionality
@{OVERRIDE RATES STATEMENT STATUS LIST}      	Pre-Audited 		# Statement status list, not editable.
${OVERRIDE RATES BEGIN DATE}      				11/23/2012       	# Begin date, editable.
${OVERRIDE RATES STATEMENT NUMBER}           	DemoDisputes        # Statement number, editable.
# End: Test Data to Validate The Override Rates Functionality

# Start: Test Data For Inbound Statement To Verify The Statement Upload Functionality
${FILE PATH FOR UPLOAD STATEMENT}                    C:/Templates/ISDN/InboundStatementUploadTemplate.xlsx                    # Statement upload file path, editable.
# End: Test Data For Inbound Statement To Verify The Statement Upload Functionality

# Start: Test Data For Inbound Statement Dispute To Validate The Add Notes Functionality
@{AUDIT ACCOUNT FOR ADD DISPUTE NOTE}       TLX_VO_AuditTestInvoice         # Audit Account, editable.
@{PRE AUDITED STATUS LIST}				    Pre-Audited					    # Status list, editable.
${BEGIN DATE FOR ADD DISPUTE NOTE}			12/2/2012					    # Begin date, editable.
${END DATE FOR ADD DISPUTE NOTE}			2/2/2017					    # End date, editable.
# End: Test Data For Inbound Statement Dispute To Validate The Add Notes Functionality

# Start: Test Data For Inbound Statement To Validate The Winning Dispute Functionality
@{DISPUTED STATUS LIST}				        Disputed					    # Status list, editable.
${BEGIN DATE FOR WINNING DISPUTE}			11/23/2012					    # Begin date, editable.
${END DATE FOR WINNING DISPUTE}			    2/5/2017					    # End date, editable.
${DISCREPANCY SOURCE TYPE}					Network Error				    # Discrepancy source type, editable.
${WON RESOLUTION TYPE}						Won							    # Resolution type, not editable.
# End: Test Data For Inbound Statement To Validate The Winning Dispute Functionality

# Start: Test Data For Inbound Statement To Validate The Losing Dispute Functionality
@{STATUS LIST FOR LOSE DISPUTE}				Pre-Audited					    # Status list, editable.
${BEGIN DATE FOR LOSING DISPUTE}			11/23/2012					    # Begin date, editable.
${END DATE FOR LOSING DISPUTE}			    2/5/2017					    # End date, editable.
${LOSE DISPUTE DISCREPANCY SOURCE}			Network Error				    # Discrepancy source type, editable.
${LOST RESOLUTION TYPE}						Lost							# Resolution type, not editable.
# End: Test Data For Inbound Statement To Validate The Losing Dispute Functionality

# Start: Test Data For Inbound Statement To Verify Edit Line Item In The Grid
${STATEMENT BEGIN DATE FOR EDIT LINE ITEM}          11/11/2016                  # Begin date, editable.
${STATEMENT END DATE FOR EDIT LINE ITEM}            2/5/2017                    # End date, editable.
${MINUTES/QUANTITY VALUE FOR EDIT LINE ITEM}		1.00				        # Minutes/Quantity value, editable, must have 2 digits after decimal point.
${RATE VALUE FOR EDIT LINE ITEM}				    0.120000				    # Rate value, editable, must have 6 digits after decimal point.
${TARIFF TYPE FOR EDIT LINE ITEM}				    Hubbing					    # Tariff type, editable.
${LINE ITEM TYPE FOR EDIT LINE ITEM}			    Adjustment					# Line item type, editable.
# End: Test Data For Inbound Statement To Verify Edit Line Item In The Grid

# Start: Test Data For Statement Validataion To Verify Export To Excel Functionality
@{EXPORT STATEMENT STATUS LIST}         Pre-Audited          # Statement status list, not editable.
${EXPORT STATEMENT STATUS}              Pre-Audited          # Statement status, not editable.
${EXPORT BEGIN DATE}                    11/23/2012      # Begin date, not editable.
# End: Test Data For Statement Validataion To Verify Export To Excel Functionality

# Start: Test Data For Audit Inbound Statement Validation To Verify Moving The Statement To Preaudited Status
@{MAPPED STATUS LIST}				        Mapped					        # Mapped status list, not editable.
${BEGIN DATE FOR CHANGE STATUS}			    11/23/2012					    # Begin date, editable.
${END DATE FOR CHANGE STATUS}			    2/6/2017					    # End date, editable.
@{PRE AUDITED STATUS LIST}			        Pre-Audited					    # Pre-Audited status list, not editable.
# End: Test Data For Audit Inbound Statement Validation To Verify Moving The Statement To Preaudited Status

# Start: Test Data For Inbound Statement To Validate The Dispute Upload And Delete Document Functionality
@{DISPUTE DOCUMENT UPLOAD STATUS LIST}				    Disputed						# Status list, not editable.
${DISPUTE DOCUMENT UPLOAD BEGIN DATE}				    11/16/2015						# Begin date for search, editable.
${DISPUTE DOCUMENT UPLOAD END DATE}				        2/7/2017						# End date for search, editable.
${DISPUTE NEW DOCUMENT KEYWORD}				            AUTO Document					# Document keyword, editable.
${DISPUTE NEW DOCUMENT REFERENCE NUMBER}				123456						    # Refrence number, editable.
${DISPUTE NEW DOCUMENT DATE}				            ${EMPTY}						# Document date, editable.
${DISPUTE NEW DOCUMENT ORDER}				            21						        # Document order, editable.
${DISPUTE FILE PATH FOR UPLOAD}				            C:/Templates/ISDN/OriginSetTemplate.xls		# Document file path, editable.
${DISPUTE DOCUMENT KEYWORD FOR EDIT}				    AUTO Document Keyword			# Keyword for edit, editable.
${DISPUTE DOCUMENT REFRENCE NUMBER FOR EDIT}			1234567						    # Reference number for edit, editable.
${DISPUTE DOCUMENT ORDER FOR EDIT}				        22						        # Order for edit, editable.
${DISPUTE DOCUMENT ORDER FOR CANCEL EDIT}				23						        # Order for edit and cancel, editable.
# End: Test Data For Inbound Statement To Validate The Dispute Upload And Delete Document Functionality

# Start: Test Data For Audit Inbound Statement Dispute To Verify The Add Resolutions Functionality
@{ADD RESOLUTION AUDIT ACCOUNT}						TLX_VO_AuditTestInvoice				# Audit account for create, editable.
${ADD RESOLUTION CURRENCY}							EUR							# Statement currency, editable.
${ADD RESOLUTION TOTAL AMOUNT}						20.00						# Total amount, editable, must have 2 digits after decimal point.
${ADD RESOLUTION TOTAL AMOUNT WITH TAXES}			20.00					    # Total amount with taxes, editable.
${ADD RESOLUTION BEGIN DATE}						11/1/2016					# Begin date, editable.
${ADD RESOLUTION END DATE}							11/30/2016					# End date, editable.
${ADD RESOLUTION ISSUED DATE}						12/1/2016					# Issues date, editable.
${ADD RESOLUTION RECEIVED DATE}						12/5/2016					# Received date, editable.
${ADD RESOLUTION DUE DATE}							12/30/2016					# Due date, editable.
${ADD RESOLUTION BULK ADD NUMBER OF ROWS}				        1						    # Bulk add numbre of rows, editable.
${ADD RESOLUTION BULK ADD TARIFF TYPE}				            Hubbing					    # Tariff type, editable.
${ADD RESOLUTION BULK ADD LINE ITEM TYPE}				        Standard					# Line item type, editable.
${ADD RESOLUTION BULK ADD SERVICE GROUP}				        Voice						# Service group, editable.
${ADD RESOLUTION BULK ADD PRODUCT NAME}				            Afghanistan - AWCC Mobile-PasdfSTN					# Product name, editable.
${ADD RESOLUTION BULK ADD TIME BAND}				            Off-Peak					# Time band, editable.
${ADD RESOLUTION BULK ADD RATING UNIT}				            Minutes						# Rating Unit, editable.
${ADD RESOLUTION BULK ADD BEGIN DATE}				            ${EMPTY}					# Begin date, editable; By default current date.
${ADD RESOLUTION BULK ADD END DATE}				                ${EMPTY}					# End date, editable; By default last date of current month.
${ADD RESOLUTION BULK ADD MINUTES/QUANTITY VALUE}				1.00				        # Minutes/Quantity value, editable, must have 2 digits after decimal point.
${ADD RESOLUTION BULK ADD RATE VALUE}				        	0.120000				    # Rate value, editable, must have 6 digits after decimal point.
${STATEMENT SUMMARY MAPPED STATUS}				        	Mapped				            # Mapped status, not editable.
${STATEMENT SUMMARY PRE-AUDITED STATUS}				        Pre-Audited				        # Pre-Audited status, not editable.
${DISPUTE GROUP GRID COLUMN VALUE}				            DemoGroup				        # Dispute group value, not editable.
${STATEMENT SUMMARY DISPUTE APPROVAL REQUIRED STATUS}		Dispute Approval Required	    # Dispute approval required status, not editable.
${STATEMENT SUMMARY DISPUTED STATUS}				        Disputed				        # Disputed status, not editable.
${ADD RESOLUTION WON ACTION TYPE}				        Won						        # Action type, not editable.
${ADD RESOLUTION CREDIT AMOUNT}				            1200.00						    # Credit Amount, editable.
${ADD RESOLUTION DISCREPANCY SOURCE}				    Network Error					# Discrepancy source, editable.
${WON ACTION TYPE FOR EDIT}				        Lost						            # Action type for edit, not editable.
${CREDIT AMOUNT FOR EDIT}				        100.00						            # Credit Amount for edit, editable.
${DISCREPANCY SOURCE FOR EDIT}				    Technical Error						    # Discrepancy source for edit, editable.
# End: Test Data For Audit Inbound Statement Dispute To Verify The Add Resolutions Functionality

# Start: Test Data For Inbound Statement To Verify The Audit Info Popup
@{AUDIT INFO POPUP AUDIT ACCOUNT LIST}		TLX_VO_AuditTestInvoice		# Audit account list, not editable.
${AUDIT INFO POPUP BEGIN DATE}      		11/23/2012       			# Begin date, editable.
${AUDIT INFO POPUP STATEMENT NUMBER}        123mmmm        				# Statement number, editable.
${BILLING CYCLE TEMPLATE}					Monthly 					# Billing cycle template, not editable.
${BILLING CYCLE BEGIN DATE}					${EMPTY}					# Billing cycle begin date, not editable; By default first date of current month.
${RESIDUAL TRAFFIC WINDOW}					1							# Residual traffic window, not editable.
${DISPUTE CONTACT FIRST NAME}				${EMPTY}					# Dispute Contact First name, editable.
${DISPUTE CONTACT LAST NAME}				${EMPTY}					# Dispute Contact Last name, editable.
${DISPUTE CONTACT STATE}					${EMPTY}					# Dispute Contact State, editable.
${DISPUTE CONTACT EMAIL}					${EMPTY}					# Dispute Contact Email, editable.
# End: Test Data For Inbound Statement To Verify The Audit Info Popup

# Start: Test Data For Outbound Statement To Validate If User Is Allowed To Create Non Recurring Charges For Status After Non Traffic Item
@{NON TRAFFIC ITEMS INCLUDED STATUS}		Statement Disputed					# Statement Disputed status, not editable.
${BEGIN DATE FOR STATEMENT SEARCH}		    12/13/2010							# Begin date for statement search, editable.
# End: Test Data For Outbound Statement To Validate If User Is Allowed To Create Non Recurring Charges For Status After Non Traffic Item

# Start: Test Data For Bill And Audit Outbound Statement Management To Validate Tax Template Creation For A Non Recurring Charge
@{STATEMENT TYPE LIST FOR NON RECURRING CHARGE}             Regular                             # Statement type list, not editable.
@{STATEMENT STATUS LIST FOR NON RECURRING CHARGE}           Cycle Created       Traffic PreClosed       Traffic PreClosed Approved      Traffic Closed                    # Statement status list, not editable.
${ACCOUNTING CODE FOR NON RECURRING CHARGE}                 PP_Bill_00255                           # Accounting code, editable.
${CHARGE CATEGORY FOR NON RECURRING CHARGE}                 Maintenance                         # Charge category, editable.
${CURRENCY FOR NON RECURRING CHARGE}                        EUR                                 # Currency, editable.
${CHARGE AMOUNT FOR NON RECURRING CHARGE}                   1200.00                             # Charge amount, editable: Must be a decimal number of two precision point.
${TAX TEMPLATE FOR NON RECURRING CHARGE}                    Local VAT Template                  # Tax template, editable.
# End: Test Data For Bill And Audit Outbound Statement Management To Validate Tax Template Creation For A Non Recurring Charge

# Start: Test Data For Outbound Statement Management To Verify The Behavior When User Edits The Value For Statement Issued Statement
@{STATEMENT ISSUED STATEMENT STATUS}		Statement Issued					        # Statement Issued statement status, not editable.
${BEGIN DATE FOR EDIT STATEMENT FIELDS}		12/13/2012									# Begin date for edit statement fields, editable.
${STATEMENT FIELDS DEFAULT VALUE}		    TEST									    # Default value for statement fields bulk edit, editable.
# End: Test Data For Outbound Statement Management To Verify The Behavior When User Edits The Value For Statement Issued Statement

# Start: Test Data For Outbound Statement To Validate Suspect Flag Update Functionality
@{STATEMENT SUSPECT STATUS}					Active Flags								# Statement suspect status, not editable.
${BEGIN DATE FOR SUSPECT STATUS}		    12/13/2012									# Begin date for suspect status, editable.
# End: Test Data For Outbound Statement To Validate Suspect Flag Update Functionality

# Start: Test Data For Outbound Statement To Validate Reject Action In Adjustment Charge
@{ADJUSTMENT STATEMENT TYPE}				Adjustment						# Adjustment statement type, not editable.
@{CYCLE CREATED STATEMENT STATUS}			Cycle Created					# Cycle created statement status, not editable.
${REJECT CHARGE BEGIN DATE FOR SEARCH}		1/3/2011						# Begin date for statement search, editable.
${ADJUSTMENT CHARGE BEGIN DATE}             ${EMPTY}				        # Create adjustment charge begin date, editable.
${ADJUSTMENT CHARGE END DATE}               ${EMPTY}				        # Create adjustment charge end date, editable.
${ADJUSTMENT CHARGE CURRENCY}               EUR				                # Create adjustment charge currency, editable.
${ADJUSTMENT CHARGE AMOUNT}                 10.00				            # Create adjustment charge amount, editable.
# End: Test Data For Outbound Statement To Validate Reject Action In Adjustment Charge

# Start: Test Data For Outbound Statement To Validate Add and Delete New Adjustment Functionality
@{STATEMENT STATUS FOR ADJUSTMENT STATEMENT}		Statement Issued		# Statement status for search, not editable.
${BEGIN DATE FOR ADJUSTMENT STATEMENT}				12/12/2010		        # Begin date for statement search, editable.
# End: Test Data For Outbound Statement To Validate Add and Delete New Adjustment Functionality

# Start: Test Data For Outbound Statement To Validate View Test Statement File When Usage Charges Are Not Present For The Statement
${BEGIN DATE FOR VIEW TEST STATEMENT}		12/13/2016			    # Begin date for statement search, editable.
# End: Test Data For Outbound Statement To Validate View Test Statement File When Usage Charges Are Not Present For The Statement

# Start: Test Data For Outbound Statement Management To Validate Upload Document Functionality
${OUTBOUND DOCUMENT KEYWORD}				            AUTO Document						# Document keyword, editable.
${OUTBOUND DOCUMENT REFERENCE NUMBER}				123456						    # Reference number, editable.
${OUTBOUND DOCUMENT DATE}				            ${EMPTY}						# Document date, editable.
${OUTBOUND DOCUMENT ORDER}				            21						        # Document order, editable.
${OUTBOUND FILE PATH FOR UPLOAD}				            C:/Templates/ISDN/OriginSetTemplate.xls			# Document file path, editable.
${OUTBOUND KEYWORD FOR EDIT}				    AUTO Document Keyword			# Keyword for edit, editable.
${OUTBOUND REFERENCE NUMBER FOR EDIT}			1234567						# Reference number for edit, editable.
${OUTBOUND ORDER FOR EDIT}				        22						    # Order for edit, editable.
${OUTBOUND ORDER FOR CANCEL EDIT}				23						        # Order for edit and cancel, editable.
${OUTBOUND FILE NAME FOR UPLOAD}				            OriginSetTemplate.xls			# Document file path, editable.
# End: Test Data For Outbound Statement Management To Validate Upload Document Functionality

# Start: Test Data For Outbound Statement Management To Validate Add Transaction
@{ACCOUNT LIST FOR ADD TRANSACTION}                 Deutsche Telekom                    # Account list, editable.
@{BILL ACCOUNT LIST FOR ADD TRANSACTION}            Deutsche Telekom Hubbing Revenue Invoice                # Bill account list, editable.
@{STATEMENT SENT STATEMENT STATUS}                  Statement Sent                                          # Statement sent statement status list, not editable.
${BEGIN DATE FOR ADD TRANSACTION}                   12/14/2010                          # Begin date, editable.
${TRANSACTION DETAILS FOR ADD TRANSACTION}          AUTO Transaction                    # Transaction details, editable.
${TRANSACTION AMOUNT FOR ADD TRANSACTION}           10                                  # Transaction amount, Editalbe.
# End: Test Data For Outbound Statement Management To Validate Add Transaction

# Start: Test Data For Outbound Statement To Validate Adding And Deleting A New Non Recurring Charge
@{STATEMENT STATUS FOR NON RECURRING CHARGE}	Cycle Created			# Statement Status list, not editable.
${BEGIN DATE FOR NON RECURRING CHARGE}			12/12/2010				# Begin date for statement search, editable.
${NON RECURRING CHARGE ACCOUNTING CODE}			TLX_SK_01 				# Accounting code, editable.
${BEGIN DATE FOR NR CHARGE}						${EMPTY}				# Begin date for non recurring charge, editable. By default current date.
${END DATE FOR NR CHARGE}						${EMPTY}				# End date for non recurring charge, editable. By default last day of current month.
${NON RECURRING CHARGE CATEGORY}				Maintenance				# Non recurring charge category, editable.
${NON RECURRING CHARGE CURRENCY}				EUR						# Non recurring charge currency, editable.
${NON RECURRING CHARGE AMOUNT}					10.00					# Non recurring charge amount, editable.
${NON RECURRING CHARGE TAX TEMPLATE}			Local VAT Template 		# Non recurring charge tax template, editable.
${NON RECURRING CHARGE EDIT AMOUNT}				12.00					# Non recurring charge amount, editable.
# End: Test Data For Outbound Statement To Validate Adding And Deleting A New Non Recurring Charge

# Start: Test Data For Outbound Statement To Validate Approve Reject And Defer Actions
@{ACCOUNT LIST FOR SHORTFALL}			Deutsche Telekom 							# Account list for search, editable.
@{BILL ACCOUNT LIST FOR SHORTFALL}		Deutsche Telekom Hubbing Revenue Invoice	# Bill account list for search, editable.
@{STATEMENT STATUS FOR SHORTFALL}		Traffic Closed								# Statement status for search, editable.
${BEGIN DATE FOR SHORTFALL}				1/3/2011									# Begin date for search, editable.
${APPROVE ACTION ITEM}					Approve 									# Approve actions dropdown item, not editable.
${REJECT ACTION ITEM}					Reject 										# Reject actions dropdown item, not editable.
${BACK TO PENDING ACTION ITEM}			Back to Pending 							# Back to Pending actions dropdown item, not editable.
# End: Test Data For Outbound Statement To Validate Approve Reject And Defer Actions

# Start: Test Data For Outbound Statement Management To Validate Issuing Adjustment Statement End To End Workflow
@{TRAFFIC CLOSED STATEMENT STATUS}                  Traffic Closed                          # Traffic closed statement status list, not editable.
${BEGIN DATE FOR ISSUING ADJUSTMENT STATEMENT}		12/13/2010				                # Begin date for statement search, editable.
${STATEMENT TYPE LABEL TEXT}                  		Statement Type                          # Statement type label text, not editable.
${STATEMENT STATUS LABEL TEXT}                  	Statement Status                        # Statement status label text, not editable.
@{ADJUSTMENT STATEMENT TYPE LIST}				    Adjustment						        # Adjustment statement type, not editable.
${BEGIN DATE FOR ISSUING ADJUSTMENT}                ${EMPTY}				        # Adjustment charge begin date, editable.
${END DATE FOR ISSUING ADJUSTMENT}                  ${EMPTY}				        # Adjustment charge end date, editable.
${CURRENCY FOR ISSUING ADJUSTMENT}                  EUR				                # Adjustment charge currency, editable.
${AMOUNT FOR ISSUING ADJUSTMENT}                    10.00				            # Adjustment charge amount, editable.
${TAX TEMPLATE FOR ISSUING ADJUSTMENT}              Local VAT Template				# Adjustment charge tax template, editable.
${ADJUSTMENT TYPE FOR ISSUING ADJUSTMENT}           Adjustment Type 1				# Adjustment type, editable.
${UNDER APPROVAL STATUS FOR ADJUSTMENT FOLDER}      Under Approval				    # Under approval status for adjustment folder, not editable.
${APPROVED STATUS FOR ADJUSTMENT FOLDER}            Approved				        # Approved status for adjustment folder, not editable.
# End: Test Data For Outbound Statement Management To Validate Issuing Adjustment Statement End To End Workflow

# Start: Test Data For Smoke Testing Audit to Validate Navigation to Line Item Mapping
${SMOKE TEST MAPPING BEGIN DATE}                   1/1/2012                  # Begin date, editable.
# End: Test Data For Smoke Testing Audit to Validate Navigation to Line Item Mapping

# Start: Test Data For Smoke Testing Audit to Validate Audit Account Info
${SMOKE TEST AUDIT ACCOUNT INFO BEGIN DATE}        1/1/2012                     # Begin date for audit account info, editable.
# End: Test Data For Smoke Testing Audit to Validate Audit Account Info

# Start: Test Data For Smoke Testing Bill to Validate Bill Account Info
${SMOKE TEST BILL ACCOUNT BEGIN DATE}               1/1/2012                    # Begin date, editable.
# End: Test Data For Smoke Testing Bill to Validate Bill Account Info

# Start: Test Data For Smoke Testing Bill to Validate Navigation to Adjustment Statements
${SMOKE TEST ADJUSTMENTS BEGIN DATE}                1/1/2012                    # Begin date, editable.
# End: Test Data For Smoke Testing Bill to Validate Navigation to Adjustment Statements

# Start: Test Data For Smoke Testing Audit to Validate Navigation to Disputes
${SMOKE TEST DISPUTES BEGIN DATE}                  1/1/2012                    # Begin date, editable.
# End: Test Data For Smoke Testing Audit to Validate Navigation to Disputes

# Start: Test Data For Smoke Testing Audit to Validate Navigation to Statement Validation
${SMOKE TEST STATEMENT VALIDATION BEGIN DATE}                   1/1/2012                                  # Begin date, editable.
# End: Test Data For Smoke Testing Audit to Validate Navigation to Statement Validation
