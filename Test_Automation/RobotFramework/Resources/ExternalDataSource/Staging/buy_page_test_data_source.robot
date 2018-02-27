*** Settings ***
Documentation     Buy Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${PRICE LIST COLUMN NAME}                       Price List                      # Price list column name, not Editable
${VENDOR COLUMN NAME}                           Vendor                          # Vendor column name, not Editable
${RATES TAB NAME}                   		    Rates                           # Rates tab name, not Editable
${DIAL DIGITS TAB NAME}             		    Dialed Digit                    # Dialed Digit tab name, not Editable
${DESTINATIONS TAB NAME}            		    Destinations                    # Destinations tab name, not Editable
${REFERENCE RATES TAB NAME}                     Reference Rates                 # Reference Rates tab name, not Editable
${STATUS COLUMN NAME}                           Status                          # Status column name, not Editable
${INACTIVE STATUS}                              Inactive                        # Inactive status, not Editable
${ACTIVE STATUS}                                Active                          # Active status, not Editable
${VENDOR PROFILE TAB NAME}                      Vendor Profile                  # Vendor profile tab name, not Editable
${CREATE VENDOR TAB NAME}                       Create Vendor                   # Create vendor tab name, not Editable
${VENDOR PRICE LISTS TAB NAME}                  Vendor Price Lists              # Vendor price list tab name, not Editable.
${JOB TAB NAME}                                 Jobs                            # Jobs tab name, not Editable.
${VENDOR PROFILE INLINE ITEM NAME}				Vendor Profile  			    # Vendor Profile inline item name, not editable.
${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}	Upload Vendor Price List 	    # Upload Vendor Price List inline item name, not editable.
${VENDOR RATES INLINE ITEM NAME}				Vendor Rates 				    # Vendor Rates inline item name, not editable.
${VENDOR DIGITS INLINE ITEM NAME}				Vendor Digits  				    # Vendor Digits inline item name, not editable.
${VENDOR DESTINATION INLINE ITEM NAME}			Vendor Destination  		    # Vendor Destination inline item name, not editable.
${EXCLUDED DESTINATIONS POP UP NAME}			Excluded Destinations 		    # Excluded Destinations inline item name, not editable.
${UPLOAD VENDOR PRICE LIST POP UP NAME}	        Upload Vendor Price Lists 	    # Upload Vendor Price Lists pop up name, not editable.
# End: Constant Variables

# Start: Test Data For Price List Upload Functionality
${VENDOR PRICE LIST FILE PATH}                  C:/Templates/VendorPriceListsTemplate.xlsx          # Path of the file for upload, Editable.
# End: Test Data For Price List Upload Functionality

# Start: Test Data For Buy Vendor Price List Validate Analyse and Complete
@{STATUS ITEM LIST}                    			Pending     Completed                           # Status item list, not Editable
${FROM DATE FOR BUY VENDOR PRICE LIST}			9/7/2010                                        # From date, Editable
# End: Test Data For Buy Vendor Price List Validate Analyse and Complete

# Start: Test Data To Validate Compare Price List
${FROM DATE FOR COMPARE PRICE LIST}					6/1/2016									# From date, Editable
# End: Test Data To Validate Compare Price List

# Start: Test Data To Validate Navigation to View Vendor Price List
${FROM DATE FOR VIEW VENDOR PRICE LIST}                 9/7/2015                                                # From date, Editable
# End: Test Data To Validate Navigation to View Vendor Price List

# Start: Test Data To Validate Vendor Price List Search
${FROM DATE FOR VENDOR PRICE LIST SEARCH}       9/7/2015        # From date, Editable
# End: Test Data To Validate Vendor Price List Search

# Start: Test Data For Buy Vendor Price List Validate View Price List
${FROM DATE FOR VIEW PRICE LIST}                 9/7/2015                                 # From date, Editable
# End: Test Data For Buy Vendor Price List Validate View Price List

# Start: Test Data To Validate Create New Vendor
${VENDOR NAME PREFIX}                           UAT_AUT_NewVendor_			# Vendor name prefix, not Editable
${ABBREVIATION PREFIX}                          UAT_AUTO_Abb_				# Abbreviation prefix, not Editable
${CALL TYPE DROPDOWN ITEM}                      SMS							# Call type dropdown item, Editable
${VENDOR PROFILE STATUS DROPDOWN ITEM}          InActive 					# Vendor profile status dropdown item, not Editable
@{STATUS ITEM LIST FOR CREATE}                  Inactive 					# Status item, not Editable
# End: Test Data To Validate Create New Vendor

# Start: Test Data To Validate Edit Vendor
@{STATUS ITEM LIST FOR EDIT}            Active 		# Status item, not Editable
${VENDOR PROFILE STATUS FOR EDIT}       InActive    # Vendor profile status dropdown item, not Editable
# End: Test Data To Validate Edit Vendor

# Start: Test Data For Buy Verify Upload Network Codes
${NEW VENDOR NAME PREFIX}				UAT_AUTO_Vendor Network Code_		# Vendor name prefix, editable.
${NEW ABBREVIATION PREFIX}				VNC_								# Abbreviation prefix, editable.
${NEW CALL TYPE DROPDOWN ITEM}			VoIP								# Call type item, editable.
${RATE CATALOG}							Vendor Rates 						# Rate catalog, editable.
${RATE BEGIN DATE}						1/1/2015 							# Rate begin date, not editable.
${UPLOAD FILE PATH}						C:/Templates/VendorPriceListsTemplate_NewNetwork.xls 		# Upload file path, editable
${VENDOR PROFILE STATUS FOR CHANGE}     InActive 							# Vendor profile inactive status, not editable.
# End: Test Data For Buy Verify Upload Network Codes

# Start: Test Data For Smoke Testing Buy To Validate View Price List And Export To Excel
${VIEW PRICE LIST FROM DATE FOR SMOKE TEST}          1/1/2012               # From date for view price list smoke test, editable.
# End: Test Data For Smoke Testing Buy To Validate View Price List And Export To Excel