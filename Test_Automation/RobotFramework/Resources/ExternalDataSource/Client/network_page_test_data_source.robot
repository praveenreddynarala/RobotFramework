*** Settings ***
Documentation     Network Page External Test Data Source

*** Variables ***
# Start: Test Data For Network Technical Trunk Validate The Search Functionality
${TECHNICAL TRUNK FOR SEARCH}           AFG0056           # Text to search technical trunk; Editable.
@{STATUS LIST FOR SEARCH}               Active            # Status drop down item; Active or Inactive. Editable
${DATE FOR SEARCH}                      9/10/2015         # Date for search; Editable.
# End: Test Data For Network Technical Trunk Validate The Search Functionality

# Start: Test Data For Validate Create And Verify New Technical Trunk Functioanlity
${TECHNICAL TRUNK PREFIX}               UAT_AUTO_TechnicalTrunk_        # Technical trunk prefix; Not Editable.
${TRUNK TYPE FOR CREATE}                International                   # Trunk type drop down item; Editable.
${SWITCH FOR CREATE}                    Nortel Washington               # Switch drop down item; Editable.
${CARRIER FOR CREATE}                   Aircel India                    # Carrier drop down item; Editable.
${CDR MATCH PREFIX}                     UAT_AUTO_CDRMatch_              # CDR prefix; Not Editable.
${ACTIVE STATUS}                        Active                          # Status drop down item; Editable.
${NUMBER OF ACTIVATED PORTS}            1                               # Activated ports value; Editable.
${COMMERCIAL TRUNK FOR CREATE}          xxxx                            # Commercial trunk drop down item; depends on ${CARRIER FOR CREATE}; Editable.
${DIRECTION FOR CREATE}                 Bidirectional                   # Direction drop down item; Editable.
${EFFECTIVE DATE FOR CREATE}            9/7/2016                        # Effective date value; Editable.
${TECHNICAL TRUNK COLUMN NAME}          Technical Trunk                 # Column name to filter. Not Editable.
# End: Test Data For Validate Create And Verify New Technical Trunk Functioanlity

# Start: Test Data For Network Technical Trunk Validate The Edit Technical Trunk Functionality
${TECHNICAL TRUNK PREFIX FOR EDIT}              UAT_AUTO_TechnicalTrunk_        # Technical trunk prefix; Not Editable.
${TRUNK TYPE FOR EDIT}                          International                   # Trunk type drop down item; Editable.
${SWITCH FOR EDIT}                              Nortel Washington               # Switch drop down item; Editable.
${CARRIER FOR EDIT}                             Aircel India                    # Carrier drop down item; Editable.
${CDR MATCH PREFIX FOR EDIT}                    UAT_AUTO_CDRMatch_              # CDR prefix; Not Editable.
${ACTIVE STATUS FOR EDIT}                       Active                          # Status drop down item; Editable
${NUMBER OF ACTIVATED PORTS FOR EDIT}           1                               # Activated ports value; Editable.
${COMMERCIAL TRUNK FOR EDIT}                    xxxx                            # Commercial trunk drop down item; depends on ${CARRIER FOR CREATE}; Editable.
${DIRECTION FOR EDIT}                           Bidirectional                   # Direction drop down item; Editable.
${EFFECTIVE DATE FOR EDIT}                      9/7/2016                        # Effective date value; Editable.
${NOTE PREFIX FOR EDIT}                         UAT_AUTO_Note_                  # Note prefix. Not Editable.
${CLLI FOR EDIT}                                ${EMPTY}                        # CLLI value. Editable.
# End: Test Data For Network Technical Trunk Validate The Edit Technical Trunk Functionality

# Start: Test Data For Commercial Trunk Validate Create New Commercial Trunk Functionality
${TRUNK PREFIX FOR CREATE}                          UAT_AUTO_Trunk_             # Trunk prefix; Not Editable, Mandatory
${COMMERCIAL TRUNK ACCOUNT FOR CREATE}              Afghanistan Telecom         # Account drop down item, not Editable, Mandatory
${COMMERCIAL TRUNK STATUS FOR CREATE}               Active                      # Status drop down item, Editable, Mandatory
${COMMERCIAL TRUNK DIRECTION FOR CREATE}            Bidirectional               # Direction drop down item, Editable, Mandatory
${COMMERCIAL TRUNK EFFECTIVE DATE FOR CREATE}       11/20/2016                  # Effective date value, Editable, Mandatory
# End: Test Data For Commercial Trunk Validate Create New Commercial Trunk Functionality

# Start: Test Data For Validate Network Commercial Trunk Edit Functionality
${COMMERCIAL TRUNK FOR SEARCH}                  UAT_AUTO_Trunk_19           # Commercial trunk, Editable.
${STATUS FOR EDIT TRUNK}                        Active                      # Status, Editable.
${COMMERCIAL TRUNK DIRECTION}                   Bidirectional               # Commercial trunk direction, Editable.
${TRUNK NAME FOR EDIT}                          ${EMPTY}                    # Trunk Name, Editable.
${CLLI FOR COMMERCIAL TRUNK}                    999                         # Clli text, Editable.
# End: Test Data For Validate Network Commercial Trunk Edit Functionality
