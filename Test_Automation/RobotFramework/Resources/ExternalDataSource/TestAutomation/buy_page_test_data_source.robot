*** Settings ***
Documentation     Buy Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${PRICE LIST COLUMN NAME}                       Price List                      # Price list column name, not Editable
${VENDOR COLUMN NAME}                           Vendor                          # Vendor column name, not Editable
${RATES TAB NAME}                   		    Rates                           # Rates tab name, not Editable
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
${RESET ALL GRID SETTINGS}                      Reset All                       # Reset all grid settings item name, not editable.
${DESTINATION COLUMN NAME}            		    Destination                     # Destination column name, not editable.
${BEGIN DATE COLUMN NAME}            		    Begin Date                      # Begin date column name, not editable.
${RATING PRODUCT COLUMN NAME}            		Rating Product                  # Rating product column name, not editable.
${RATE1 COLUMN NAME}            		        Rate1                           # Rate1 column name, not editable.
${VIEW PRICE LIST DETAIL INLINE ITEM}           View Price List Detail          # View price list detail name, not editable.
${EFFECTIVE DATE COLUMN NAME}                   Effective Date                  # Effective date column name, not editable.
${RESET COLUMN ORDER GRID SETTINGS}             Reset Column Order              # Reset column order grid settings item name, not editable.
${OBEJCT REFERENCE NOT SET FAILURE MESSAGE}     Object reference not set        # Object Reference not set failure message, not editable.
${CONTAIN NO DATA FAILURE MESSAGE}              File appears to contain no data.        # Object Reference not set failure message, not editable.
${INVALID TEMPLATES FOLDER}                     Invalid_Templates               # Invalid tempaltes folder name, not editable.
${ADDITIONAL INFO POP UP NAME}			        Additional Info 		        # Excluded Destinations inline item name, not editable.
${EFFECTIVE DATE UPLOAD FAILURE MESSAGE}        Cannot cast DBNull.Value        # Effective date upload failure message, not editable.
${ALL DESTINATION EXCLUDED FAILURE MESSAGE}     All destinations excluded       # All destinations excluded failure message, not editable.
${INVALID SETTLEMENT ORIGIN FAILURE MESSAGE}    Invalid Settlement Origin       # Invalid Settlement Origin failure message, not editable.
${RATE COLUMN NAME}                             Rate                            # Rate column name, not Editable
${PERCENTAGE CHANGE COLUMN NAME}                Percentage Change               # Percentage change column name, not Editable
${AMOUNT CHANGE COLUMN NAME}                    Amount Change                   # Amount change column name, not Editable
${PREVIOUS RATE COLUMN NAME}                    Previous Rate                   # Previous rate column name, not Editable
${RATING METHOD COLUMN NAME}                    Rating Method                   # Rating method column name, not Editable
${RATE TYPE COLUMN NAME}                        Rate Type                       # Rate type column name, not Editable
${RATE INCREASE VIOLATION COLUMN NAME}          Rate Increase Violation         # Rate increase violation column name, not Editable
${INVALID SETTLEMENT ORIGIN FAILURE MESSAGE}    Invalid Settlement Origin       # Invalid settlement origin failure message, not editable.
${AZ PRICE LIST CONTENT}                        A-Z                             # AZ price list content, not Editable.
${FULL COUNTRY PRICE LIST CONTENT}              Full Country                    # Full country price list content, not editable.
${VENDOR DIALED DIGITS-MCC-MNC INLINE ITEM NAME}				Vendor Dialed Digits/MCC-MNC  			    # Vendor Dialed Digits/MCC-MNC inline item name, not editable.
${DIALED DIGITS-MCC-MNC TAB NAME}               Dialed Digits/MCC-MNC           # VCustomer Dialed Digits/MCC-MNC tab name, not Editable
${DIALED DIGITS-MCC-MNC COLUMN NAME}            Dialed Digits/MCC-MNC           # VCustomer Dialed Digits/MCC-MNC column name, not Editable
${VENDOR MCC-MNC INLINE ITEM NAME}				Vendor MCC-MNC  			    # Vendor MCC-MNC inline item name, not editable.
${MCC-MNC TAB NAME}                             MCC-MNC                         # MCC-MNC tab name, not Editable
${MCC-MNC COLUMN NAME}                          MCC-MNC                         # MCC-MNC column name, not Editable
${VENDOR DIALED DIGITS INLINE ITEM NAME}		Vendor Dialed Digits 			# Vendor dialed digits inline item name, not editable.
${DIALED DIGITS TAB NAME}                       Dialed Digits                   # Dialed digits tab name, not Editable
${DIALED DIGITS COLUMN NAME}                    Dialed Digits                   # Dialed digits column name, not Editable
${COUNTRY GROUPS TAB NAME}                      Country Groups                  # Country groups tab name, not Editable
${ANALYZE AND COMPLETED INLINE ITEM}            Analyze and Complete            # Analyze and Complete inline item name, not editable.
${RE ANALYSIS TAB NAME}                         Re-Analysis                     # Re-Analysis tab name, not Editable
${VIEW PRICE LIST DETAILS TAB NAME}             View Price List Details         # View Price List Details tab name, not Editable
${COMPARE PRICE LISTS POP UP NAME}			    Compare Price Lists 		    # Compare Price Lists pop up name, not editable.
${BUY AND SELL DEAL DETAIL POP UP NAME}         Buy and Sell Deal Detail        # Buy and Sell Deal Detail pop up name, not editable.
@{ENTERED STATUS}                               Entered                         # Entered status, not editable.
@{DEAL DETAILS INLINE ITEM}                     Deal Details                    # Deal Details inline item, not editable.
${PREMIUM ROUTE CLASS}                          Premium                         # Route Class, Editable.
${TARGET BUY POLICY TAB NAME}                    Target Buy Policy:              # Target Buy Policy Tab Name, Not Editable.
${TARGET BUY POLICY GRID COLUMN NAME}           Target Buy Policy                 # Target Buy Policy Grid Column Name, Not Editable.
${VIEW TARGET BUY POLICY INLINE ITEM}           View Target Buy Policy              # View Target Buy Policy Inline Item, Not Editable.
# End: Constant Variables

# Start: Test Data For Price List Upload Functionality
${VENDOR PRICE LIST TEMPALTE NAME}                  VendorPriceListsTemplate.xlsx          # Template name, Editable.
# End: Test Data For Price List Upload Functionality

# Start: Test Data For Buy Vendor Price List Validate Analyse and Complete
@{STATUS ITEM LIST}                    			Pending     Completed                           # Status item list, not Editable
${FROM DATE FOR BUY VENDOR PRICE LIST}			9/7/2010                                        # From date, Editable
@{COMPLETED STATUS ITEM LIST}                   Completed                           # Status item list, not Editable
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
${VENDOR PROFILE STATUS DROPDOWN ITEM}          InActive 					# Vendor profile status dropdown item, not Editable
@{STATUS ITEM LIST FOR CREATE}                  Inactive 					# Status item, not Editable
# End: Test Data To Validate Create New Vendor

# Start: Test Data To Validate Edit Vendor
@{STATUS ITEM LIST FOR EDIT}            Active 		# Status item, not Editable
${VENDOR PROFILE STATUS FOR EDIT}       InActive    # Vendor profile status dropdown item, not Editable
# End: Test Data To Validate Edit Vendor

# Start: Test Data For Buy Verify Upload Network Codes
${NEW CALL TYPE DROPDOWN ITEM}			VoIP								# Call type item, editable.
${RATE CATALOG}							Vendor Rates 						# Rate catalog, editable.
${RATE BEGIN DATE}						1/1/2015 							# Rate begin date, not editable.
${UPLOAD FILE PATH}						VendorPriceListsTemplate_NewNetwork.xls 		# Upload file path, editable
${UPLOAD QOS FILE PATH}                 VendorPriceListsTemplate_QoS.xlsx 		# Upload qos file path, editable
${VENDOR PROFILE STATUS FOR CHANGE}     InActive 							# Vendor profile inactive status, not editable.
# End: Test Data For Buy Verify Upload Network Codes

# Start: Test Data For Smoke Testing Buy To Validate View Price List And Export To Excel
${VIEW PRICE LIST FROM DATE FOR SMOKE TEST}          1/1/2012               # From date for view price list smoke test, editable.
# End: Test Data For Smoke Testing Buy To Validate View Price List And Export To Excel

# Start: Test Data For Buy Vendor Price List Upload With No Destination
${VENDOR PRICE LIST NO DESTINATION TEMPLATE NAME}          VendorPriceListsTemplate_No_Destination.xlsx         # Vendor price list no destination template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With No Destination

# Start: Test Data For Buy Vendor Price List Upload With Missing Dial Digit
${VENDOR PRICE LIST MNISSING DIAL DIGIT TEMPLATE NAME}      VendorPriceListsTemplate_Missing_Dial_Digit.xlsx            # Vendor price list missing dial digit template name, not editable.
${DIAL DIGIT FAILED UPLOAD INFO}                            At least one empty Dialed Digit entry                       # Dial digit failed upload info, not editable.
# End: Test Data For Buy Vendor Price List Upload With Missing Dial Digit

# Start: Test Data For Buy Vendor Price List Upload With Missing Destination
${VENDOR PRICE LIST MNISSING DESTINATION TEMPLATE NAME}         VendorPriceListsTemplate_Missing_Destination.xlsx       # Vendor price list missing destination template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Missing Destination

# Start: Test Data For Buy Vendor Price List Upload With Missing Effective Date
${VENDOR PRICE LIST MNISSING EFFECTIVE DATE TEMPLATE NAME}      VendorPriceListsTemplate_Missing_Effective_Date.xlsx        # Vendor price list missing effective date template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Missing Effective Date

# Start: Test Data For Buy Vendor Price List Upload With Duplicate Destination
${VENDOR PRICE LIST DUPLICATE DESTINATION TEMPLATE NAME}        VendorPriceListsTemplate_Duplicate_Destinations.xlsx        # Vendor price list duplicate destination template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Duplicate Destination

# Start: Test Data For Buy Vendor Price List Upload With Invalid Origin Set
${VENDOR PRICE LIST INVALID ORIGIN SET TEMPLATE NAME}           VendorPriceListsTemplate_Invalid_Origin_Set.xlsx            # Vendor price list invalid origin set template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Invalid Origin Set

# Start: Test Data For Buy Vendor Price List Upload With Invalid Rating Method
${VENDOR PRICE LIST INVALID RATING METHOD TEMPLATE NAME}        VendorPriceListsTemplate_Invalid_Rating_Method.xlsx         # Vendor price list invalid rating method template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Invalid Rating Method

# Start: Test Data For Buy Vendor Price List Upload Allow Future Effective Date Days
${VENDOR PRICE LIST FUTURE EFFECTIVE DATE TEMPLATE NAME}        VendorPriceListsTemplate_AllowFutureEffectiveDateDays.xlsx        # Vendor price list allow future effective date days template name, not editable.
# End: Test Data For Buy Vendor Price List Upload Allow Future Effective Date Days

# Start: Test Data For Buy Vendor Price List Upload With Different Eff Date For Rates
${VENDOR PRICE LIST DIFFERENT EFF DATE FOR RATES TEMPLATE NAME}           VendorPriceListsTemplate_Different_Eff_Date_for_Rate_Types.xlsx            # Vendor price list different eff date for rates template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Different Eff Date For Rates

# Start: Test Data For Buy Vendor Price List Upload With Non Numeric Rate
${VENDOR PRICE LIST NON NUMERIC RATE TEMPLATE NAME}        VendorPriceListsTemplate_Non_Numeric_Rate.xlsx         # Vendor price list non numeric rate template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Non Numeric Rate

# Start: Test Data For Buy Vendor Price List Upload With Rate Type Mismatch
${VENDOR PRICE LIST RATE TYPE MISMATCH TEMPLATE NAME}        VendorPriceListsTemplate_Rate_Type_Mismatch.xlsx        # Vendor price list rate type mismatch template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Rate Type Mismatch

# Start: Test Data For Buy Vendor Price List Upload With Missing Origin
${VENDOR PRICE LIST MISSING ORIGIN TEMPLATE NAME}        VendorPriceListsTemplate_Missing_Origin.xlsx         # Vendor price list Missing Origin template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Missing Origin

# Start: Test Data For Buy Vendor Price List Upload Destination With Dialed Digits and Network Code
${VENDOR PRICE LIST DESTINATION WITH DIALED DIGITS TEMPLATE NAME}        VendorPriceListsTemplate_Destination_With_Dialed_Digits_and_Network_Code.xlsx        # Vendor price list Dialed Digits and Network Code template name, not editable.
# End: Test Data For Buy Vendor Price List Upload Destination With Dialed Digits and Network Code

# Start: Test Data For Buy Vendor Price List Upload With Duplicate Digit
${VENDOR PRICE LIST DUPLICATE DIGIT TEMPLATE NAME}           VendorPriceListsTemplate_Duplicate_Digit.xlsx            # Vendor price list Duplicate Digit template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Duplicate Digit

# Start: Test Data For Buy Vendor Price List Upload With Invalid Settlement Origin
${VENDOR PRICE LIST INVALID SETTLEMENT ORIGIN TEMPLATE NAME}        VendorPriceListsTemplate_Invalid_Settlement_Origin.xlsx         # Vendor price list Invalid Settlement Origin template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Invalid Settlement Origin

# Start: Test Data For Buy Vendor Price List Upload With Max Dial Digits
${VENDOR PRICE LIST MAX DIAL DIGITS TEMPLATE NAME}        VendorPriceListsTemplate_Max_Dial_Digits.xlsx        # Vendor price list Max Dial Digits template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Max Dial Digits

# Start: Test Data For Buy Vendor Price List Upload With Missing Origin Set
${VENDOR PRICE LIST MISSING ORIGIN SET TEMPLATE NAME}        VendorPriceListsTemplate_Missing_Origin_Set.xlsx         # Vendor price list Missing Origin Set template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Missing Origin Set

# Start: Test Data For Buy Vendor Price List Upload Destination With Missing Origin Setllement
${VENDOR PRICE LIST MISSING ORIGIN SETTLEMENT TEMPLATE NAME}        VendorPriceListsTemplate_Missing_Origin_Settlement.xlsx        # Vendor price list Missing Origin Setllement template name, not editable.
# End: Test Data For Buy Vendor Price List Upload Destination With Missing Origin Setllement

# Start: Test Data For Buy Vendor Price List Upload With Network Code
${VENDOR PRICE LIST NETWORK CODE TEMPLATE NAME}           VendorPriceListsTemplate_Network_Code.xlsx            # Vendor price list Network Code template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Network Code

# Start: Test Data For Buy Vendor Price List Upload With Non Numeric Dialed Digits
${VENDOR PRICE LIST NON NUMERIC DIALED DIGITS TEMPLATE NAME}        VendorPriceListsTemplate_NonNumeric_Dialed_Digits.xlsx         # Vendor price list Non Numeric Dialed Digits template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Non Numeric Dialed Digits

# Start: Test Data For Buy Vendor Price List Upload With Non Numeric Range
${VENDOR PRICE LIST NON NUMERIC RANGE TEMPLATE NAME}        VendorPriceListsTemplate_Non_Numeric_Range.xlsx        # Vendor price list Non Numeric Range template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Non Numeric Range

# Start: Test Data For Buy Vendor Price List Upload With Invalid CallChar
${VENDOR PRICE LIST INVALID CALLCHAR TEMPLATE NAME}           VendorPriceListsTemplate_Invalid_CallChar.xlsx            # Vendor price list Invalid CallChar template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Invalid CallChar

# Start: Test Data For Buy Vendor Price List Upload With SMS1
${VENDOR PRICE LIST SMS1 TEMPLATE NAME}        VendorPriceListsTemplate_SMS1.xlsx         # Vendor price list SMS1 template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With SMS1

# Start: Test Data For Buy Vendor Price List Upload With Zero Rates
${VENDOR PRICE LIST ZERO RATES TEMPLATE NAME}        VendorPriceListsTemplate_ZeroRates.xlsx        # Vendor price list Zero Rates template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Zero Rates

# Start: Test Data For Buy Vendor Price List Upload With Invalid Country Code
${VENDOR PRICE LIST INVALID COUNTRYCODE TEMPLATE NAME}           VendorPriceListsTemplate_Invalid_CountryCode.xlsx            # Vendor price list Invalid Country Code template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Invalid Country Code

# Start: Test Data For Buy Vendor Price List Upload With Invalid Rate Type
${VENDOR PRICE LIST INVALID RATETYPE TEMPLATE NAME}           VendorPriceListsTemplate_Invalid_RateType.xlsx            # Vendor price list Invalid Rate Type template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Invalid Rate Type

# Start: Test Data For Buy Vendor Price List Upload With Duplicate Rate Type
${VENDOR PRICE LIST DUPLICATE RATETYPE TEMPLATE NAME}           VendorPriceListsTemplate_Duplicate_RateType.xlsx            # Vendor price list Duplicate Rate Type template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Duplicate Rate Type

# Start: Test Data For Buy Vendor Price List Upload With Origin Mismatch
${VENDOR PRICE LIST ORIGIN MISMATCH TEMPLATE NAME}           VendorPriceListsTemplate_Origin_Mismatch.xlsx            # Vendor price list Duplicate Rate Type template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Origin Mismatch

# Start: Test Data For Buy Vendor Price List Upload With Duplicate Settlement Origin
${VENDOR PRICE LIST DUPLICATE SETTLEMENT ORIGIN TEMPLATE NAME}           VendorPriceListsTemplate_Duplicate_Settlement_Origin.xlsx           # Vendor price list Duplicate Settlement Origin template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Duplicate Settlement Origin

# Start: Test Data For Buy Vendor Price List Upload With Invalid Network Code
${VENDOR PRICE LIST INVALID NETWORK CODE TEMPLATE NAME}           VendorPriceListsTemplate_Invalid_Network_Code.xlsx            # Vendor price list Invalid Network Code template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Invalid Network Code

# Start: Test Data For Buy Vendor Price List Upload With Country Rating Method
${VENDOR PRICE LIST COUNTRY RATING METHOD TEMPLATE NAME}           VendorPriceListsTemplate_Country_Rating_Method.xlsx           # Vendor price list country rating method template name, not editable.
# End: Test Data For Buy Vendor Price List Upload With Country Rating Method

# Start: Test Data For Buy Vendor Price List Upload With Shared Country
${VENDOR PRICE LIST WITH SHARED COUNTRY}           VendorPriceListsTemplate_With_Shared_Country.xlsx          # Vendor price list template with shared country, not editable.
# End: Test Data For Buy Vendor Price List Upload With Shared Country

# Start: Test Data For Vendor Offer Upload With Multiple Vendor Destinations With Origin The System Should Pick The Destination With Highest Rates Regardless Of Origin
${VENDOR PRICE LIST TEMPALTE WITH AND WITHOUT ORIGIN NAME}                  VendorPriceListsTemplateWithAndWithoutOrigin.xlsx          # Template name, Editable.
# End: Test Data For Vendor Offer Upload With Multiple Vendor Destinations With Origin The System Should Pick The Destination With Highest Rates Regardless Of Origin

# Start: Test Data For View And Status Filters Are Added On NPCR Reference Rate Screen
@{RE ANALYSIS STATUS LIST}          Analysis Failed     Analysis Initiated      Analyzed    Expired     Export Failed       Export Initiated        Exported        Pending         # Re analysis status list, not editable.
@{RE ANALYSIS STATUS FOR SEARCH}    Pending         # Re analysis status for search, editable.
# End: Test Data For View And Status Filters Are Added On NPCR Reference Rate Screen

# Start: Test Data To Validate Business Admin Search Bulk Edit In Buy And Sell Deal Management Screen
${BUY AND SELL MANAGEMENT START DATE}       1/1/2010        # Buy and sell management start date, editable.
@{BUY AND SELL MANAGEMENT STATUS}           Requested       # Buy and sell management status, editable.
# End: Test Data To Validate Business Admin Search Bulk Edit In Buy And Sell Deal Management Screen

# Start: Test Data For Price List Is Loading Fine Even For Special Character Destinations
${VENDOR PRICE LIST SPECIAL CHAR TEMPALTE NAME}     VendorPriceListsTemplate_special_character.xlsx     # Vendor price list special character template name, Editable.
# End: Test Data For Price List Is Loading Fine Even For Special Character Destinations

# Start: Template - Analysis Computes Rate Correctly
${VENDOR PRICE LIST COMPUTE RATES TEMPALTE NAME}     VendorPriceListsTemplate_Compute_Rates.xlsx     # Vendor price list compute rates template name, Editable.
# End: Template -  Analysis Computes Rate Correctly

# Start: Test Data For Validate Vendor Price List Details Should Display As Per The Selected Vendor Source And Price List From The Filter Controls
${VENDOR PRICE LIST SMS TEMPALTE NAME}     VendorPriceListsTemplate_SMS.xlsx        # Vendor price list sms template name, Editable.
# End: Test Data For Validate Vendor Price List Details Should Display As Per The Selected Vendor Source And Price List From The Filter Controls
