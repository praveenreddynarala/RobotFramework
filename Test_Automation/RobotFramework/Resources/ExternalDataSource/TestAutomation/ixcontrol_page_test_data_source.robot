*** Settings ***
Documentation     IXControl Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${DAILY DATA MART PREPARATION ITEM NAME}                Daily Data Mart Preparation               # Daily data mart preparation dropdown item name, not editable.
${UNP ITEM NAME}                Unified Number Plan              # UNP item name, not editable.
${CDR FILE OBJECT TYPE}			CDR File 				# CDR file object type, not editable.
${COMPLETED STATUS}             Completed               # Completed status, not editable.
${RERATE DROPDOWN ITEM}         Rerate                  # Rerate dropdown item, not editable.
${TRADE OBJECT TYPE}			Trade 				    # Trade object type, not editable.
${RPLG RECURRING OBJECT NAME}					Reference Price List Generate (Recurring)			# Reference Price List Generate (Recurring) Object name, editable.
# End: Constant Variables

# Start: Test Data for CDR Processing Verify AEP Rating
${OBJECT NAME}					S1-iXCDR_01				# Object name, editable.
${CDR FILE PATH}				CDR_FILE/iXT_S1_Product_2017-09-06_Net.txt		# CDR file path, editable.
# End: Test Data for CDR Processing Verify AEP Rating

# Start: Test Data for Validate the Job Notifier Displays Value For Recurring Reference Price List Jobs
${REGISTRATION PROCEDURE TYPE NAME}				bspRegistrarPeriodicMinutes		# Registration Procedure type name, editable.
# End: Test Data for Validate the Job Notifier Displays Value For Recurring Reference Price List Jobs

# Start: Test Data to Verify Admin Dialed Digits List With Rates Report
${ACCOUNT NAME FOR DIALED DIGITS WITH RATES}    Aircel India       # Account name, editable
${SETTINGS FILE PATH}				ixtools/v80/iXReport/_Definitions/_Settings.lgx		# Settings file path, editable.
# End: Test Data to Verify Admin Dialed Digits List With Rates Report