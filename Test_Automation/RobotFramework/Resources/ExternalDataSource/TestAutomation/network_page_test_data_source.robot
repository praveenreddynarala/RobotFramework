*** Settings ***
Documentation     Network Page External Test Data Source

*** Variables ***
# Start: Constant Varables
${RESET ALL GRID SETTINGS}              Reset All                   # Reset all grid settings, not editable.
${RESET COLUMN ORDER GRID SETTINGS}     Reset Column Order          # Reset column order grid settings item name, not editable.
${ACCOUNT COLUMN NAME}                  Account                     # Account column name, not editable.
# End: Contant Variables

# Start: Test Data For Commercial Trunk Validate Create And Edit Commercial Trunk Functionality
${COMMERCIAL TRUNK STATUS FOR CREATE}               Active                      # Status drop down item, Editable, Mandatory
${COMMERCIAL TRUNK DIRECTION FOR CREATE}            Bidirectional               # Direction drop down item, Editable, Mandatory
${STATUS FOR EDIT TRUNK}                        Active                      # Status, Editable.
${COMMERCIAL TRUNK DIRECTION}                   Bidirectional               # Commercial trunk direction, Editable.
${TRUNK NAME FOR EDIT}                          ${EMPTY}                    # Trunk Name, Editable.
${CLLI FOR COMMERCIAL TRUNK}                    999                         # Clli text, Editable.
# End: Test Data For Commercial Trunk Validate Create And Edit Commercial Trunk Functionality

# Start: Test Data For Validate Create And Edit Technical Trunk Functioanlity
${TRUNK TYPE FOR CREATE}                International                   # Trunk type drop down item; Editable.
${ACTIVE STATUS}                        Active                          # Status drop down item; Editable.
${NUMBER OF ACTIVATED PORTS}            30                               # Activated ports value; Editable.
${DIRECTION FOR CREATE}                 Bidirectional                   # Direction drop down item; Editable.
${TECHNICAL TRUNK COLUMN NAME}          Technical Trunk                 # Column name to filter. Not Editable.
${DIRECTION FOR EDIT}                   Bidirectional                   # Direction drop down item; Editable.
${CLLI FOR EDIT}                        999                             # CLLI value. Editable.
# End: Test Data For Validate Create And Edit Technical Trunk Functioanlity

# Start: Test Data For Network Technical Trunk Validate The Search Functionality
@{STATUS LIST FOR SEARCH}               Active            # Status drop down item; Active or Inactive. Editable
# End: Test Data For Network Technical Trunk Validate The Search Functionality

