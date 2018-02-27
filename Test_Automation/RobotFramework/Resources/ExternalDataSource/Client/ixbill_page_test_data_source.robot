*** Settings ***
Documentation     IXBill Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${PERIODIC CYCLE TEMPLATE TYPE}             Periodic                                # Periodic cycle template type, not editable.
# End: Constant Variables

# Start: Test Data For Djezzy IXConnect Carrier To Validate Create A Periodic Billing Cycle
${CYCLE TEMPLATE NAME PREFIX}               UAT_AUTO_NewPeriodicCycleTemplate_      # Cycle template name prefix, editable.
${RECURRENCE PATTERN PERIOD LENGTH}         1                                       # Recurrence pattern period length, editable.
${RECURRENCE PATTERN PERIOD TYPE}           month(s)                                # Recurrence pattern period type, editable.
${RECURRENCE PATTERN STARTING DATE}         4/1/2017                                # Recurrence pattern starting date, editable.
# End: Test Data For Djezzy IXConnect Carrier To Validate Create A Periodic Billing Cycle

# Start: Test Data For Djezzy IXConnect Carrier To Validate Set Up Multiple Statement Numbering Templates
${STATEMENT NUMBERING TEMPLATE PREFIX}      SNT_            # Statement numbering template prefix, editable.
${BEGIN NUMBER}                             1               # Begin number, editable.
${END NUMBER}                               ${EMPTY}        # End number, editable.
${INCREMENT}                                1               # Increment, editable.
${NUMBERING LENGTH}                         5               # Numbering length, editable.
${PREFIX}                                   UAT-AUTO-       # Prefix, editable.
# End: Test Data For Djezzy IXConnect Carrier To Validate Set Up Multiple Statement Numbering Templates