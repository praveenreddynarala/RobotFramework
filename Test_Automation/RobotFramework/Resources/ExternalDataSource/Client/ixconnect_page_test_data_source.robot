*** Settings ***
Documentation     IXConnect Page External Test Data Source

*** Variables ***
# Start: Constant Variables

# End: Constant Variables

# Start: Test Data For Djezzy Business Admin Rating To Define New Daylight Saving
${DAYLIGHT SAVING ZONE PREFIX}                  UAT_AUTO_DLSZ_      # Daylight saving zone prefix, editable.
${DAYLIGHT SAVING ZONE REGION}                  testhome            # Daylight saving zone region, editable.
${DAYLIGHT SAVING ZONE PERIOD BEGIN DATE}       ${EMPTY}            # Daylight saving zone period begin date, editable, current date by default.
${DAYLIGHT SAVING ZONE PERIOD END DATE}         ${EMPTY}            # Daylight saving zone period end date, editable, current month end date by default.
${PERIOD BEGIN HOUR VALUE}                      00                  # Period begin hour value, editable.
${PERIOD BEGIN HOUR MINUTE VALUE}               00                  # Period begin hour minute value, editable.
${PERIOD END HOUR VALUE}                        23                  # Period end hour value, editable.
${PERIOD END HOUR MINUTE VALUE}                 59                  # Period end hour minute value, editable.
# End: Test Data For Djezzy Business Admin Rating To Define New Daylight Saving

# Start: Test Data For Djezzy Business Admin Rating To Define New Rating Method
${RATING METHOD PREFIX}                     UAT_AUTO_NRM_       # Rating method prefix, editable.
${RATING METHOD ABBREVIATION PREFIX}        UATNRTM_            # Rating method abbreviation prefix, editable.
${MINIMUM VALUE}                            20                  # Minimum value, editable.
${INITIAL ROUNDING VALUE}                   20                  # Initial rounding value, editable.
${ADDITIONAL ROUNDING VALUE}                20                  # Additional rounding value, editable.
${MAXIMUM VALUE}                            20                  # Maximum value, editable.
${MEASURE ADJUSTMENT VALUE}                 20                  # Measure adjustment value, editable.
${RATE DIMENSION TEMPLATE}                  Flat                # Rate dimension template, editable.
# End: Test Data For Djezzy Business Admin Rating To Define New Rating Method

# Start: Test Data For Carrier Pre-Requisite Create Route Class
${ROUTE CLASS PREFIX}                     UAT_AUTO_ROUTE_CLASS_       # Route class prefix, editable..
# End: Test Data For Carrier Pre-Requisite Create Route Class

# Start: Test Data For Carrier Pre-Requisite Create Service Level
${SERVICE LEVEL PREFIX}                     UAT_AUTO_SERVICE_LEVEL_       # Service level prefix, editable..
# End: Test Data For Carrier Pre-Requisite Create Service Level

# Start: Test Data For Carrier Pre-Requisite Create Service Level
${DESTINATION PREFIX}           UAT_AUTO_DESTINATION_       # Destination prefix, editable..
${DESTINATION TYPE}             Fixed                       # Destination type, editable.
${DESTINATION CALL CHAR}        Regular                     # Destination call char, editable.
${DESTINATION COUNTRY}          United States Of America    # Destination country, editable
${DESTINATION NUMBER PLAN}      Outbound Ref.               # Destination number plan, editable.
# End: Test Data For Carrier Pre-Requisite Create Service Level
