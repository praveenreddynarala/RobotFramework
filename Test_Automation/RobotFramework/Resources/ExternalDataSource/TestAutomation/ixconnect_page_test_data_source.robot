*** Settings ***
Documentation     IXConnect Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${SERVICE TAB NAME}                         Service                     # Service tab name, not editable
${COUNTRIES TAB NAME}                       Countries                   # Countries tab name, not editable
${COMMERCIAL TRUNK TAB NAME}                Commercial Trunk            # Commercial Trunk tab name, not editable
${CONFIRM AGGREGATION RULES TAB NAME}       Confirm Aggregation Rules   # Confirm aggregation rules tab name, not editable
${FROM COLUMN NAME}                         From                        # From column name, not editable.
${TO COLUMN NAME}                           To                          # To column name, not editable.
${RATE1 COLUMN NAME}                        Rate1                       # Rate1 column name, not editable.
${RATE2 COLUMN NAME}                        Rate2                       # Rate2 column name, not editable.
${APPROVED CONTRACT STATUS}                 Approved                    # Approved contract status, not editable.
${ALL CONTRACT STATUS}                      ALL                         # All contract status, not editable.
${TARIFFTYPE COLUMN NAME}                   TariffType                  # TariffType column name, not editable.
${SETTLEMENT ORIGIN TAB NAME}               Settlement Origin           # Settlement Origin tab name, not editable
# End: Constant Variables

# Start: Test Data For Djezzy Business Admin Rating To Define New Daylight Saving
${DAYLIGHT SAVING ZONE REGION}                  testhome            # Daylight saving zone region, editable.
${DAYLIGHT SAVING ZONE PERIOD BEGIN DATE}       ${EMPTY}            # Daylight saving zone period begin date, editable, current date by default.
${DAYLIGHT SAVING ZONE PERIOD END DATE}         ${EMPTY}            # Daylight saving zone period end date, editable, current month end date by default.
${PERIOD BEGIN HOUR VALUE}                      00                  # Period begin hour value, editable.
${PERIOD BEGIN HOUR MINUTE VALUE}               00                  # Period begin hour minute value, editable.
${PERIOD END HOUR VALUE}                        23                  # Period end hour value, editable.
${PERIOD END HOUR MINUTE VALUE}                 59                  # Period end hour minute value, editable.
# End: Test Data For Djezzy Business Admin Rating To Define New Daylight Saving

# Start: Test Data For Djezzy Business Admin Rating To Define New Rating Method
${MINIMUM VALUE}                            20                  # Minimum value, editable.
${INITIAL ROUNDING VALUE}                   20                  # Initial rounding value, editable.
${ADDITIONAL ROUNDING VALUE}                20                  # Additional rounding value, editable.
${MAXIMUM VALUE}                            20                  # Maximum value, editable.
${MEASURE ADJUSTMENT VALUE}                 20                  # Measure adjustment value, editable.
${RATE DIMENSION TEMPLATE}                  Flat                # Rate dimension template, editable.
# End: Test Data For Djezzy Business Admin Rating To Define New Rating Method

# Start: Test Data For Carrier Pre-Requisite Create Service Level
${DESTINATION TYPE}             Fixed                       # Destination type, editable.
${DESTINATION CALL CHAR}        Regular                     # Destination call char, editable.
${DESTINATION COUNTRY}          United States Of America    # Destination country, editable
${DESTINATION NUMBER PLAN}      Outbound Ref.               # Destination number plan, editable.
${INBOUND REF NUMBER PLAN}      Inbound Ref.                # Destination number plan, editable.
# End: Test Data For Carrier Pre-Requisite Create Service Level

# Start: Test Data For Carrier Pre-Requisite Create Route Class
${ROUTE CLASS SERVICE}             Voice                       # Route Class Service, editable.
# End: Test Data For Carrier Pre-Requisite Create Route Class

# Start: Test Data For Create Complex Contract For Voice With Revert to Hubbing
${OUTBOUND DIRECTION}               Outbound                # Outbound direction, not editable.
${ANALOG CALL TYPE}                 Analog                  # Analog call type, not editable.
${NEW NUMBER PLAN}                  Copy from an existing Number Plan               # New number plan, editable.
${CONFIGURE NUMBER PLAN COUNTRY}    Bangladesh              # Configure number plan country, editable.
${RT DETAILS OUTBOUND RATE PLAN}    Outbound Public PSTN    # RT details outbound rate plan, editable.
${AGGREGATION TEMPLATE}             Standard Monthly        # Aggregation template, editable.
@{TRAFFIC TYPE LIST}                Bilateral               # Traffic type list, editable.
@{RATE TYPE LIST}                   ALL                     # Rate type list, editable.
${TARIFF TYPE}                      Bilateral               # Traiff type, editable.
${RATE PLAN TYPE}                   Single                  # Rate plan type, editable.
${USD CURRENCY}                     USD                     # USD currency, not editable.
${FROM COLUMN VALUE}                0                       # From column value, editable.
${TO COLUMN VALUE}                  100                     # To column value, editable.
${SMS CALL TYPE}                    SMS                     # Sms call type, not editable.
${CONFIGURE NUMBER PLAN VIRTUAL COUNTRY}    Afghanistan              # Configure number plan virtual country, editable.
${GRACE PERIOD}                     day(s)                  # Grace period, editable.
# End: Test Data For Create Complex Contract For Voice With Revert to Hubbing

# Start: Test Data For Create Complex Contract For SMS With Revert to Hubbing
${SMS CALL TYPE}                        SMS                     # SMS call type, not editable.
${CONFIGURE NUMBER PLAN SMS COUNTRY}    Angola                  # Configure number plan sms country, editable.
${RATE STRUCTURE}                       22 - AEP: Splitting based on partial SG%    # Rate structure, editable.
${SPLITTING TYPE}                       Normal                  # Splitting type, editable.
# End: Test Data For Create Complex Contract For SMS With Revert to Hubbing

# Start: Test Data For Manage Complex Contract SMS Verify Contract Status Contract Lock And Unlock
${YES STATUS}		    Yes                 # Yes status, not editable.
${NO STATUS}            No 				    # No status, not editable.
${DRAFT STATUS}         Draft 				# Draft status, not editable.
${SUBMITTED STATUS}		Submitted           # Submitted status, not editable.
${APPROVED STATUS}      Approved            # Approved status, not editable.
${SUBMITTED FOR ACCOUNTING APPROVAL STATUS}		Submitted for Accounting Approval 		# Submitted for Accounting Approval status, not editable.
${SIGNED STATUS}        Signed              # Draft status, not editable.
${UNLOCK STATUS}        Unlock Contract for Editing		# Unlock Contract for Editing status, not editable.
# End: Test Data For Manage Complex Contract SMS Verify Contract Status Contract Lock And Unlock

# Start: Test Data To Verify AEP Rating
${CDR PROCESSING CARRIER NAME} 		    ATT					# Cdr processing carrier name, not editable.
${CDR PROCESSING TRUNK NAME}		    CT-USA001-S			# Cdr processing trunk name, not editable.
${CDR PROCESSING RATING METHOD}		    Flat: 0-1-1-0		# Cdr processing rating method name, not editable.
${CDR PROCESSING RT DETAILS}            SEP Public Outbound (Telarix Int.-Account) USD    # RT details outbound rate plan, editable.
${CDR PROCESSING RATE PLAN TYPE}        AEP                  # Rate plan type, editable.
${DAILY DATA MART REG ITEM}         	Daily Data Mart Preparation     	# Daily data mart reg item, not editable.
${KPI FLAGS JOB COMPLETED STATUS}       KPI Mart Update Flags Completed 	# KPI Flags job completed status, not editable.
${ABER GEN REG ITEM}         			ABER-Gen 							# Aber gen get item, not editable.
${ABER GEN JOB COMPLETE STATUS}       	KPI Analysis Completed 				# Aber gen job complete status, not editable.
${AGG BER REG ITEM}        				Agg BER 							# Agg ber reg item, not editable.
${AGG BER JOB COMPLETE STATUS}     		Load Completed 						# Agg ber job complete status, not editable.
# End: Test Data To Verify AEP Rating

# Start: Test Data To Verify Contract Prioritized Workflow
${ACCOUNT CATEGORY FIELD NAME}          Account Category                 # Account Category field name, not editable
${ACCOUNT GROUP FIELD NAME}             Account Group                    # Account Group field name, not editable
${ACCOUNT REGION FIELD NAME}            Account Region                   # Account Region field name, not editable
${ACCOUNT COUNTRY FIELD NAME}           Account Country                  # Account Country field name, not editable
${ACCOUNT FIELD NAME}                   Account                          # Account field name, not editable
${CONTRACT STATUS FIELD NAME}           Contract Status                  # Contract Status field name, not editable
${DIRECTION FIELD NAME}                 Direction                        # Direction field name, not editable
${CONTRACT NAME COLUMN NAME}            Contract Name                    # Contract Name column name, not editable
${REFERENCE NUMBER COLUMN NAME}         Reference Number                 # Reference Number column name, not editable
${BEGIN DATE COLUMN NAME}               Begin Date                       # Begin Date column name, not editable
${END DATE COLUMN NAME}                 End Date                         # End Date column name, not editable
# End: Test Data To Verify Contract Prioritized Workflow

# Start: Test Data To Verify Contract Simulator Upload Or Download
${EXPORTED FILE NAME FIELD NAME}        Exported File Name               # Exported File Name field name, not editable
${COMPANY FIELD NAME}                   Company                          # Company field name, not editable
${CARRIER FIELD NAME}                   Carrier                          # Carrier field name, not editable
${CONTRACT TYPE FIELD NAME}             Contract Type                    # Contract Type field name, not editable
${STATUS FIELD NAME}                    Status                           # Status field name, not editable
${TEMPLATE FIELD NAME}                  Template                         # Template field name, not editable
${COST COUNTRIES FIELD NAME}            Cost Countries                   # Cost Countries field name, not editable
${REVENUE COUNTRIES FIELD NAME}         Revenue Countries                # Revenue Countries column name, not editable
@{STATUS LIST FOR SEARCH}               Offline - Download Refresh Data File    Offline - Download Simulator                   # Status list, editable
${PREVIOUS CONTRCT FIELD NAME}          Previous Contract                # Previous Contract field name, not editable
${TRAFFIC START DATE FIELD NAME}        Traffic Start Date               # Traffic Start Date field name, not editable
${TRAFFIC END DATE FIELD NAME}          Traffic End Date                 # Traffic End Date field name, not editable
${COST COUNTRY FIELD NAME}              Cost Country                     # Cost Country field name, not editable
@{COUNTRY NAME LIST}                    Afghanistan                      # Country name list, editable
# End: Test Data To Verify Contract Simulator Upload Or Download