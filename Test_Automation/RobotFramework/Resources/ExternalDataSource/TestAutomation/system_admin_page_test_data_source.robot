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
${INBOUND REFERENCE NUMBER PLAN ID VALUE}           ${EMPTY}           # Inbound Reference Number Plan Id Value, not editable.
${INBOUND REFERENCE NUMBER PLAN ID DEFAULT VALUE}   -2                  # Inbound Reference Number Plan Id default Value, not editable.
${ENABLE INTER OPCO SETTLEMENTS VALUE}          1                  # Enable Inter OpCo Settlements Value, not editable.
${ENABLE SAAS GRANULAR ROLES VALUE}             1                  # Enable Saas Granular Roles Value, not editable.
${PROFILE MANAGEMENT TAB NAME}                  Profile Management             # Profile Management Tab Name, not editable.
${RESET SAAS GRANULAR ROLES VALUE}             0                  # Reset Saas Granular Roles Value, not editable.
${INBOUND REFERENCE NUMBER PLAN ID UPDATE VALUE}    -1                  # Inbound Reference Number Plan Id Value, not editable.
${OUTBOUND REFERENCE NUMBER PLAN ID VALUE}          -2                  # Inbound Reference Number Plan Id default Value, not editable.
@{USER ROLE LIST FOR ALERT USER AND VIEWER}     Alert Viewer    iXAlert - Alert User        # User role list for alert user and viewer, not editable.
@{USER ROLE LIST FOR REPORT}                    Report User     Report Viewer               # User role list for report, not editable.
${ENABLE SETTLEMENT ORIGIN RATING VALUE}             0                  # Enable Settlement Origin Rating Value, not editable.
${SERVER SETTING INLINE ITEM}                Server Setting                  # Server setting inline item name, not editable.
${SERVER SETTINGS TAB NAME}                  Server Settings             # Server settings Tab Name, not editable.
${WEB SERVER2 SERVER NAME}                  WebServer2             # WebServer2 server Name, not editable.
${SERVER NAME COLUMN NAME}                   Server Name                            # Server Name column name, not editable.
${WORK DATABASE COLUMN NAME}                   Work Database                           # Work database column name, not editable.
${PHYSICAL SERVER COLUMN NAME}                Physical Server                           # Physical server column name, not editable.
${SQL INSTANCE COLUMN NAME}                SQL Instance                           # SQL instance column name, not editable.
${IP ADDRESS COLUMN NAME}                IP Address                           # IP address column name, not editable.
${SERVER STATUS COLUMN NAME}                Server Status                           # Server status column name, not editable.
${SERVER IN USE COLUMN NAME}                Server In Use                           # Server in use column name, not editable.
${LAST MODIFIED COLUMN NAME}                Last Modified                           # Last modified column name, not editable.
${RESET ALL GRID SETTINGS}              Reset All                       # Reset all grid settings item name, not editable.
${SAVE SETTINGS GRID SETTINGS}              Save Settings                       # Save settings grid settings item name, not editable.
${SERVER MANAGEMENT TAB NAME}                Server Management             # Server management Tab Name, not editable.
${RESET COLUMN ORDER GRID SETTINGS}     Reset Column Order              # Reset column order grid settings item name, not editable.
${EXPORT TO EXCEL GRID SETTINGS}              Export to Excel                       # Export to excel grid settings item name, not editable.
${ALS CONFIG FLAG VALUE}                 1                  # Als config flag Value, not editable.
${CONFIGURATION VARIABLE TAB NAME}            Configuration Variables             # Configuration variables Tab Name, not editable.
${SITE NAME COLUMN NAME}                   Site Name                            # Site Name column name, not editable.
${FTP SITE MANAGEMENT TAB NAME}                  FTP Site Management             # Ftp site Management Tab Name, not editable.
${SITE USER NAME COLUMN NAME}                   Site User Name                           # Site User Name column name, not editable.
${FIELD ALIAS COLUMN NAME}                   Field Alias                            # Field Alias column name, not editable.
${FIELD ALIAS TAB NAME}                  Field Alias             # Field Alias Tab Name, not editable.
${FIELD NAME COLUMN NAME}                   Field Name                            # Field Name column name, not editable.
${CATEGORY COLUMN NAME}                Category                           # Category column name, not editable.
${CATEGORY TAB NAME}                  Category             # Category Tab Name, not editable.
${CATEGORY TYPE COLUMN NAME}                Category Type                           # Category Type column name, not editable.
${CURRENT VALUE COLUMN NAME}                   Current Value                            # Current Value column name, not editable.
${ABBREVIATION COLUMN NAME}                   Abbreviation                            # Abbreviation column name, not editable.
${VARIABLE NAME COLUMN NAME}                   Variable Name                            # Variable Name column name, not editable.
@{USER SELL OVERRIDE LEVEL2 ROLE LIST}         Sell - Override BackDatePricingException   Sell - Override CPEBeginDateRPL   Sell - Override ForwardDatePricingExceptionDays                # User sell overrides level2 role list, not editable
# End: Constant Variables

# Start: Test Data For System Admin Regression Suite To Validate Create And Edit New Profile
${ACTIVE PROFILE STATUS}              Active                             # Active profile status, not editable.
${INACTIVE PROFILE STATUS}            Inactive                           # Inactive profile status, not editable.
@{USER ROLE LIST FOR NEW PROFILE}     Business Admin User                # User role list for new profile, editable.
@{USER ROLE LIST FOR NETWORK CODE NEW PROFILE}     Business Admin User   Business Admin Viewer   Carrier User   Carrier Viewer               # User role list for network code new profile, editable.
@{USER LEVEL2 ROLE LIST FOR NEW PROFILE}     Carrier - Network Code Management                # User level2 role list for new profile, editable.
@{JOB MAINTENANCE USER AND VIEWER}     Job Maintenance User   Job Maintenance Viewer               # Job Maintenance User And Viewer, editable.
@{REPORT AND CARRIER ROLES LIST}     Report User   Report Viewer   Carrier User   Carrier Viewer        # Report and carrier roles list, editable.
@{USER ROLE LIST FOR SELL AND BUY}     Buy User   Buy Viewer   Sell User   Sell Viewer   System Admin User   System Admin Viewer            # User role list for sell and buy, editable.
@{USER LEVEL2 ROLE LIST FOR SELL AND BUY}     Buy/Sell - Country Groups                # User level2 role list for buy sell country groups, editable.
@{USER LEVEL2 ROLE LIST FOR CREATE UPDATE SELL}         Sell - Create/Update Customer                # User level2 role list for create update sell, editable.
@{USER ROLE LIST FOR CARRIER USER ONLY}       Carrier User   Carrier Viewer         # User role list for carrier user only, editable.
@{USER ROLE LIST FOR SELL}       Sell User   Sell Viewer   System Admin User   System Admin Viewer            # User role list for sell, editable.
@{USER LEVEL2 ROLE LIST SELL CUSTOMER PRICE UPLOAD}         Sell - Customer Price Changes Upload                # User level2 role list for sell customer price changes upload, not editable.
@{USER ROLE LIST FOR CONTRACTS USER ONLY}       Contract User   Contract Viewer         # User role list for contracts user only, editable.
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
${NEW USER SECURITY PROFILE}            Developers Only                # New user security profile, editable.
${NEW USER ACTIVE STATUS}               Active                         # New user active status, not editable.
${NEW USER REPORTS TO}                  Nanditha Pamal                 # New user reports to, editable.
${NEW USER PASSWORD}                    Telarix01*                     # New user password, editable.
${NEW USER PRIMARY EMAIL}               UATAUTO@Automation.com         # New user primary email, editable.
${NEW USER INACTIVE STATUS}             Inactive                       # New user inactive status, not editable.
${NEW USER PASSWORD FOR RESET}          Telarix01*123                     # New user password for reset, editable.
${NEW USER PASSWORD FOR RESET FROM HOME}          Telarix01*1234                     # New user password for reset from home, editable.
# End: Test Data For System Admin Regression Suite To Validate Create And Edit New User

# Start: Test Data For Djezzy System Admin To Validate Account Level Security In Connect Trade And Report Modules
${VARIABLE NAME}                        ALSConfig               # Variable name, editable.
${CURRENT VALUE}                        1                       # Current value, not editable.
${CARRIER SECURITY USER NAME}           SecurityCheck           # Carrier security user name, editable.
${CARRIER SECURITY USER PASSWORD}       Admin2016*              # Carrier security password, editable.
@{ACCOUNT LIST TO MOVE}                 Afghanistan Telecom     # Account list to move, editable.
${CARRIER ACCOUNT NAME}                 Afghanistan Telecom     # Carrier account name, editable.
# End: Test Data For Djezzy System Admin To Validate Account Level Security In Connect Trade And Report Modules

# Start: Test Data For RPLCustom Available In System Admin
${RPLCUSTOM VARIABLE NAME}          RPLCustom               # RPLCustom variable name, not editable.
${RPLCUSTOM CURRENT VALUE}          1                       # RPLCustom current value, editable.
# End: Test Data For RPLCustom Available In System Admin

# Start: Test Data For L2 Roles Functionality In Profile Tab
${BUY CREATE VENDOR ROLE NAME}          Buy - Create/Update Vendor              # Buy create update vendor role name, not editable.
${BUY SELL COUNTRY GROUPS ROLE NAME}    Buy/Sell - Country Groups               # Buy/Sell country groups role name, not editable.
${CARRIER NETWORK CODE ROLE NAME}       Carrier - Network Code Management       # Carrier network code role name, not editable.
${SELL CREATE CUSTOMER ROLE NAME}       Sell - Create/Update Customer           # Sell create customer role name, not editable.
${SELL CUSTOMER PRICE ROLE NAME}        Sell - Customer Price Changes Upload    # Sell customer price changes upload role name, not editable.
# End: Test Data For L2 Roles Functionality In Profile Tab

# Start: Test Data For Verify That You Can Remove The Create Carrier Button From The Carrier Tab
@{CARRIER USER AND VIEWER}      Carrier User    Carrier Viewer               # Carrier User And Viewer, not editable.
# End: Test Data For Verify That You Can Remove The Create Carrier Button From The Carrier Tab

# Start: Test Data For Validate Server Setting Inline Action Functionality
${AGENT USER NAME}                      iXAdmin                                 # Agent user name,  editable.
${AGENT PASSWORD}                       Telarix321!                             # Agent password,  editable.
${SERVER STATUS}                        Active                                  # Server status,  editable.
${SERVER IN USE STATUS}                 No                                      # Server in use status,  editable.
${IP ADDRESS}                           10.175.1.211                            # Ip address,  editable.
# End: Test Data For Validate All Possible Actions In Category tab
${APPLICATION NAME}                    iXConnect                               # Application name,  editable.
${OBJECT NAME}                         Account                                 # Object name,  editable.
${CATEGORY TYPE NAME}                  Account Category #1                     # Category type name,  editable.
${LEVEL NAME}                          Customer                                # Level name,  editable.
# Start: Test Data For Validate All Possible Actions In Category tab
