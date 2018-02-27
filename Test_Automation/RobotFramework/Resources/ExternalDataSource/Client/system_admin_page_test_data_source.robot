*** Settings ***
Documentation     System Admin Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${VIEW EDIT PROFILE INLINE ITEM}                View/Edit Profile                  # View/Edit Profile inline item name, not editable.
${VIEW EDIT PROFILE POP UP NAME}                View/Edit Profile                  # View/Edit Profile popup name, not editable.
${PROFILE COLUMN NAME}                          Profile                            # Profile column name, not editable.
${VIEW EDIT USER PROFILE POP UP NAME}           View/Edit User Profile              # View/Edit User Profile popup name, not editable.
${CARRIER SECURITY INLINE ITEM}                 Carrier Security                    # Carrier security inline item name, not editable.
${USER NAME COLUMN NAME}                        User Name                           # User name column name, not editable.
# End: Constant Variables

# Start: Test Data For System Admin Regression Suite To Validate Create And Edit New Profile
${PROFILE NAME PREFIX}                UAT_AUTO_Profile_                  # Profile name prefix, editable.
${ACTIVE PROFILE STATUS}              Active                             # Active profile status, not editable.
${INACTIVE PROFILE STATUS}            Inactive                           # Inactive profile status, not editable.
@{USER ROLE LIST FOR NEW PROFILE}     Business Admin User                # User role list for new profile, editable.
# End: Test Data For System Admin Regression Suite To Validate Create And Edit New Profile

# Start: Test Data For System Admin Regression Suite To Validate Bulk Edit Functionality
${NUMBER OF ROWS FOR BULK EDIT}                 1                           # Bulk edit number of rows, editable.
${PROFILE FOR BULK EDIT}                        ${EMPTY}                    # Bulk edit profile, editable.
${INACTIVE STATUS FOR BULK EDIT}                Inactive                    # Bulk edit inactive status, editable.
${ACTIVE STATUS FOR BULK EDIT}                  Active                      # Bulk edit active status, editable.
${REPORTS TO VALUE FOR BULK EDIT}               ${EMPTY}                    # Bulk edit reports to value, editable.
${SALES LEVEL FOR BULK EDIT}                    ${EMPTY}                    # Bulk edit sales level, editable.
${SALES REPORTS TO VALUE FOR BULK EDIT}         ${EMPTY}                    # Bulk edit sales reports to value, editable.
${PROFILE LABEL TEXT}                           Profile                     # Profile label text, not editable.
${STATUS LABEL TEXT}                            Status                      # Status label text, not editable.
${REPORTS TO LABEL TEXT}                        Reports To                  # Reports to label text, not editable.
${SALES LEVEL LABEL TEXT}                       Sales Level                 # Sales level label text, not editable.
${SALES REPORTS TO LABEL TEXT}                  Sales Reports To            # Sales reports to label text, not editable.
# End: Test Data For System Admin Regression Suite To Validate Bulk Edit Functionality

# Start: Test Data For System Admin Regression Suite To Validate Create And Edit New User
${NEW USER NAME PREFIX}                 UAT_AUTO_User Name_            # New user name prefix, editable.
${NEW USER FIRST NAME PREFIX}           new_                           # New user first name prefix, editable.
${NEW USER LAST NAME PREFIX}            user_                          # New user last name prefix, editable.
${NEW USER SECURITY PROFILE}            Developers Only                # New user security profile, editable.
${NEW USER ACTIVE STATUS}               Active                         # New user active status, not editable.
${NEW USER REPORTS TO}                  Nanditha Pamal                 # New user reports to, editable.
${NEW USER PASSWORD}                    Telarix01*                     # New user password, editable.
${NEW USER PRIMARY EMAIL}               UATAUTO@Automation.com         # New user primary email, editable.
${NEW USER INACTIVE STATUS}             Inactive                       # New user inactive status, not editable.
# End: Test Data For System Admin Regression Suite To Validate Create And Edit New User

# Start: Test Data For Djezzy System Admin To Validate Account Level Security In Connect Trade And Report Modules
${VARIABLE NAME}                        ALSConfig               # Variable name, editable.
${CURRENT VALUE}                        1                       # Current value, not editable.
${CARRIER SECURITY USER NAME}           SecurityCheck           # Carrier security user name, editable.
${CARRIER SECURITY USER PASSWORD}       Admin2016*              # Carrier security password, editable.
@{ACCOUNT LIST TO MOVE}                 Afghanistan Telecom     # Account list to move, editable.
${CARRIER ACCOUNT NAME}                 Afghanistan Telecom     # Carrier account name, editable.
# End: Test Data For Djezzy System Admin To Validate Account Level Security In Connect Trade And Report Modules