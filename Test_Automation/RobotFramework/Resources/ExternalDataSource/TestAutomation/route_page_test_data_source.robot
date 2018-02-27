*** Settings ***
Documentation     Route Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${BENCHMARKS TAB NAME}              Benchmark Management            # Benchmarks tab name, not editable.
${NEW SUGGESTION POP UP NAME}       New Suggestion                  # New suggestion pop up name, not editable.
${ROUTE CLASS COLUMN NAME}          Route Class                     # Route class column name, not editable.
${BENCHMARKS INLINE ACTION ITEM}                  Benchmarks                    # Benchmarks inline action item, not editable.
${EXCLUSIONS INLINE ACTION ITEM}                  Exclusions                    # Exclusion inline action item, not editable.
${OVERRIDES INLINE ACTION ITEM}                   Overrides                     # Overrides inline action item, not editable.
${EMERGENCY RE ROUTING INLINE ACTION ITEM}        Emergency Re-Routing          # Emergency Re-Routing inline action item, not editable.
${BENCHMARK MANAGEMENT TAB NAME}                  Benchmark Management          # Benchmark Management tab name, not editable.
${EXCLUSION MANAGEMENT TAB NAME}                  Exclusion Management          # Exclusion Management tab name, not editable.
${OVERRIDES MANAGEMENT TAB NAME}                  Overrides Management          # Overrides Management tab name, not editable.
${EMERGENCY RE ROUTING TAB NAME}                  Emergency Re-Routing          # Emergency Re-Routing tab name, not editable.
${TARGET ASR COLUMN NAME}           Target ASR                      # Target ASR column name, not editable.
${MINIMUM ASR COLUMN NAME}          Minimum ASR                     # Minimum ASR column name, not editable.
${TARGET ALOC COLUMN NAME}          Target ALOC                     # Target ALOC column name, not editable.
${MINIMUM ALOC COLUMN NAME}         Minimum ALOC                    # Minimum ALOC column name, not editable.
${TARGET NER COLUMN NAME}           Target NER                      # Target NER column name, not editable.
${MINIMUM NER COLUMN NAME}          Minimum NER                     # Minimum NER column name, not editable.
${TARGET NER COLUMN NAME}           Target NER                      # Target NER column name, not editable.
${MINIMUM NER COLUMN NAME}          Minimum NER                     # Minimum NER column name, not editable.
${TRUNK COLUMN NAME}						      Trunk 					    # Trunk column name, not editable.
${RELEASE OVERRIDE INLINE ITEM NAME}		      Release override 		        # Release Override inline item name, not editable.
${ROUTE GUIDE TAB NAME}             Route Guide                     # Route guide tab name, not editable.
${FAST TRACK EXCLUSION INLINE ACTION ITEM}	      Fast-Track Exclusion 		    # Fast-Track Exclusion inline item name, not editable.
${ROUTING PRODUCT COLUMN NAME}      Routing Product                 # Routing product column name, not editable.
${ROUTE CLASS}      Standard                 # Route Class name, not editable.
@{DESTINATION CATEGORY NO 1 LIST}				A-F    G-L								# Destination Category No 1 list, editable.
@{DESTINATION CATEGORY NO 2 LIST}				Sales-RA    Sales-RB								# Destination Category No 2 list, editable.
${RESET ALL GRID SETTINGS}              Reset All                       # Reset all grid settings item name, not editable.
${ROUTE CLASS COLUMN NAME}                  Route Class                      # Route Class column name, not editable.
${ROUTING PRODUCT COLUMN NAME}                Routing Product                      # Routing Product column name, not editable.
${SAVE SETTINGS GRID SETTINGS}              Save Settings                       # Save Settings grid settings item name, not editable.
${ROUTING PRODUCT}                  703200-PSTN-Interstate                 # Routing product name, not editable.
${INCLUSION MANAGEMENT TAB NAME}                  Inclusions Management          # Inclusions Management tab name, not editable.
${NEW CUSTOMER SPECIFIC ROUTE GUIDE POP UP NAME}       New Customer Specific Route Guide                  # New Customer Specific Route Guide pop up name, not editable.
${CUSTOMER COLUMN NAME}                Customer                      # Customer column name, not editable.
# End: Constant Variables

# Start: Test Data To Validate Create Bulk Edit and Release New Overrides
${OVERRIDE COUNTRY}					Afghanistan 						# Override country, editable.
@{OVERRIDE TRUNK LIST}				UAT_AUTO_Trunk_HJL29C 				# Override trunk list, editable.
${OVERRIDE ROUTING PERCENTAGE}		1 									# Override routing percentage, editable.
${OVERRIDE BEGIN DATE} 				${EMPTY}							# Override begin date, editable.
${OVERRIDE END DATE}				${EMPTY}							# Override end date, editable.
${OVERRIDE RANK}					Rank 1 								# Override rank, editable.
@{OVERRIDE RANK LIST}				Rank 1 								# Override rank list, editable.
${OVERRIDE NOTE}					UAT_AUTO_Test Automation 			# Override note, editable.
${OVERRIDE ROUTE CLASS}				Premium 							# Override route class, editable.
@{OVERRIDE ROUTING PRODUCT LIST}	Afghanistan Mobile Roshan-SMS		# Override routing product list, editable.
${OVERRIDE ROUTING PRODUCT}			Afghanistan Mobile Roshan-SMS 	    # Override routing product, editable.
${OVERRIDE BULK EDIT END DATE}		${EMPTY}							# Override bulk edit begin date, editable.
${OVERRIDE BULK EDIT NOTE}			${EMPTY} 							# Override bulk edit note, editable.
${OVERRIDE BULK EDIT RANK}			Rank 2 								# Override bulk edit rank, editable.
@{OVERRIDE BULK EDIT RANK LIST}		Rank 2 								# Override bulk edit rank list, editable.
${OVERRIDE BULK EDIT PERCENTAGE}	${EMPTY} 							# Override bulk edit percentage, editable.
# End: Test Data To Validate Create Bulk Edit and Release New Overrides

# Start: Test Data For Route Commercial Route Guide To Validate Create Bulk Edit And Delete Exclusion Functionality
@{NEW EXCLUSION REASON}              New Test Reasons            # New Exclusion Reason, editable.
@{NEW EXCLUSION ACCOUNT}             Aircel India                # New Exclusion Account, editable.
@{NEW EXCLUSION SWITCH}              Commercial                  # New Exclusion Switch, editable.
@{ROUTE CLASS TO MOVE}               Standard                    # Route class list for move to destination, editable.
@{NEW EXCLUSION COUNTRY}             Afghanistan                       # New Exclusion Country, editable.
@{PRODUCTS TO MOVE}                  Afghanistan Mobile Roshan-ISDN-Flat          # Product list for move to destination, editable.
${EXCLUSION BULK EDIT BEGIN DATE}    1/1/2017                               # Exclusion bulk edit Begin date, editable.
${EXCLUSION BULK EDIT NOTE}          Bulk Edit Test Automation              # Exclusion bulk edit note, editable.
${BEGIN DATE LABEL TEXT}             Begin Date                  # Begin date label text, not editable.
${REASON LABEL TEXT}                 Reason                      # Reason label text, not editable.
${NOTE LABEL TEXT}                   Note                        # Note label text, not editable.
# End: Test Data For Route Commercial Route Guide To Validate Create Bulk Edit And Delete Exclusion Functionality

# Start: Test Data To Validate Create Bulk Edit and Delete Inclusion Functionality
${INCLUSION LEVEL}					Route Class/Trunk/Product 				# Inclusion level, editable.
${INCLUSION BEGIN DATE}				${EMPTY}								# Inclusion begin date, editable; By default current date.
${INCLUSION END DATE}				${EMPTY}								# Inclusion end date, editable; By default empty.
${INCLUSION REASON}					Inclusion Test 							# Inclusion reason, editable.
@{INCLUSION REASON LIST}			Inclusion Test 							# Inclusion reason list, editable.
${INCLUSION NOTE}					UAT_AUTO_Test Automation 				# Inclusion note, editable.
${INCLUSION ACCOUNT}				Afghanistan Telecom 					# Inclusion account, editable.
${INCLUSION TRUNK}					UAT_AUTO_Trunk_S1ZMIJ 		            # Inclusion trunk, editable.
${INCLUSION ROUTE CLASS}			Premium 								# Inclusion moved route class, editable.
@{INCLUSION COUNTRY LIST}			Afghanistan 							# Inclusion country list to move, editable.
@{INCLUSION PRODUCT LIST}			Afghanistan Mobile Roshan-ISDN-Flat 	# Inclusion product list to move, editable.
${INCLUSION PRODUCT}				Afghanistan Mobile Roshan-ISDN-Flat 	# Inclusion moved product, editable.
${INCLUSION BULK EDIT BEGIN DATE}	${EMPTY}								# Inclusion bulk edit begin date, editable.
${INCLUSION BULK EDIT END DATE}		${EMPTY}								# Inclusion bulk edit end date, editable.
${INCLUSION BULK EDIT REASON}		${EMPTY}								# Inclusion bulk edit reason, editable.
${INCLUSION BULK EDIT NOTE}			UAT_AUTO_Test Automation Note 			# Inclusion bulk edit note, editable.
# End: Test Data To Validate Create Bulk Edit and Delete Inclusion Functionality

# Start: Test Data For Route Commercial Route Guide To Validate Export Import Functionality of QoS
${BENCHMARK IMPORT TEMPLATE NAME}		QoSBenchmark.xls 			# Benchmark import template name, editable.
# End: Test Data For Route Commercial Route Guide To Validate Export Import Functionality of QoS

# Start: Test Data For Route Technical Route Guide To Validate Recalc RGs Functionality
${TECHNICAL ROUTING SUGGESTED STATUS}                   Suggested           # Technical routing suggested status, not editable.
# End: Test Data For Route Technical Route Guide To Validate Recalc RGs Functionality

# Start: Test Data For Technical Route Guide To Validate Create Edit And Delete Exclusion Functionality
${NEW TECHNICAL EXCLUSION LEVEL}              	Route Class/Trunk/Product       # New technical exclusion level, editable.
${NEW TECHNICAL EXCLUSION BEGIN DATE}           ${EMPTY}       					# New technical exclusion begin date, editable; by default current date.
${NEW TECHNICAL EXCLUSION END DATE}             ${EMPTY}       					# New technical exclusion end date, editable; by default tomorrow's date.
@{NEW TECHNICAL EXCLUSION REASON}              	Test            				# New technical exclusion reason, editable.
@{NEW TECHNICAL EXCLUSION ACCOUNT}             	Aircel India                	# New technical exclusion account, editable.
@{NEW TECHNICAL EXCLUSION SWITCH}              	Commercial                  	# New technical exclusion switch, editable.
@{NEW TECHNICAL EXCLUSION TRUNK}               	CT-IND004-P/Commercial		CT-IND004-S/Commercial       # New technical exclusion trunks list, editable.
${FIRST TECHNICAL EXCLUSION TRUNK}              CT-IND004-P			            # First technical exclusion trunk, editable.
${SECOND TECHNICAL EXCLUSION TRUNK}             CT-IND004-S			            # Second technical exclusion trunk, editable.
@{TECHNICAL ROUTE CLASS TO MOVE}               	Standard                    	# Technical Route class list for moving to destination, editable.
@{NEW TECHNICAL EXCLUSION COUNTRY}             	India                       	# New technical exclusion country list, editable.
@{NEW TECHNICAL EXCLUSION CATEGORY}                                    	        # New technical exclusion category list, editable.
@{NEW TECHNICAL EXCLUSION GROUP}             	                       	        # New technical exclusion group list, editable.
@{NEW TECHNICAL EXCLUSION SERVICE}             	                       	        # New technical exclusion service list, editable.
@{NEW TECHNICAL EXCLUSION ROUTING PRODUCT}                             	        # New technical exclusion routing product list, editable.
@{TECHNICAL PRODUCTS TO MOVE}                  	India Chennai-PSTN-Flat         # Technical product list for moving to destination, editable.
${TECHNICAL EXCLUSION BULK EDIT BEGIN DATE}    	${EMPTY}                        # Technical exclusion bulk edit begin date, editable.
${TECHNICAL EXCLUSION BULK EDIT END DATE}    	${EMPTY}                        # Technical exclusion bulk edit end date, editable.
@{TECHNICAL EXCLUSION BULK EDIT REASON}        	Test Note         				# Technical exclusion bulk edit reason, editable.
${TECHNICAL EXCLUSION BULK EDIT NOTE}          	${EMPTY}       					# Technical exclusion bulk edit note, editable.
# End: Test Data For Technical Route Guide To Validate Create Edit And Delete Exclusion Functionality

# Start: Test Data For Technical Route Guide To Validate Creating and Releasing New Overrides
${TECHNICAL OVERRIDE COUNTRY}					Afghanistan 						# Technical Override country, editable.
${TECHNICAL OVERRIDE ROUTING PERCENTAGE}		1 									# Technical Override routing percentage, editable.
${TECHNICAL OVERRIDE BEGIN DATE} 				${EMPTY}							# Technical Override begin date, editable.
${TECHNICAL OVERRIDE END DATE}					${EMPTY}							# Technical Override end date, editable.
@{TECHNICAL OVERRIDE RANK}					    Rank 1 								# Technical Override rank, editable.
${TECHNICAL OVERRIDE NOTE}						UAT_AUTO_Test Automation 			# Technical Override note, editable.
${TECHNICAL OVERRIDE BULK EDIT END DATE}		${EMPTY}							# Technical Override bulk edit begin date, editable.
${TECHNICAL OVERRIDE BULK EDIT NOTE}			${EMPTY} 							# Technical Override bulk edit note, editable.
@{TECHNICAL OVERRIDE BULK EDIT RANK}		    Rank 2 								# Technical Override bulk edit rank, editable.
${TECHNICAL OVERRIDE BULK EDIT PERCENTAGE}		${EMPTY} 							# Technical Override bulk edit percentage, editable.
# End: Test Data For Technical Route Guide To Validate Creating and Releasing New Overrides

# Start: Test Data To Validate Emergency Rerouting Functionality
@{MEDIUM PRIORITY LIST}				Medium 				# Medium priority list, not editable.
${PRIORITY DROPDOWN LABEL TEXT}		Priority 			# Priority label text, not editable.
${ROUTE CLASS DROPDOWN LABEL TEXT}		Route Class 			# Route Class label text, not editable.
# End: Test Data To Validate Emergency Rerouting Functionality

# Start: Test Data For Route Technical Route Guide To Validate Export Import Functionality
${TECHNICAL BENCHMARK TEMPLATE NAME}		QoSBenchmark.xls 			# Template name, editable.
# End: Test Data For Route Technical Route Guide To Validate Export Import Functionality

# Start: Test Data For Route Technical Route Guide To Validate Edit Functionality For Product Class Benchmarks
${STATUS FOR EDIT BENCHMARKS}                   Suggested           # Status for edit benchmarks, not editable.
# End: Test Data For Route Technical Route Guide To Validate Edit Functionality For Product Class Benchmarks

# Start: Test Data For Route Technical Route Guide To Validate Add Note Functionality
${ROUTING STATUS FOR ADD NOTE}                   Suggested          # Status for add note, not editable.
# End: Test Data For Route Technical Route Guide To Validate Add Note Functionality

# Start: Test Data For Route Technical Route Guide To Create New Fast Track Exclusion
@{NEW FAST TRACK EXCLUSION STATUS}                  Suggested           # New fast track exclusion status, editable.
${FAST TRACK EXCLUSION BEGIN DATE}                  ${EMPTY}            # New fast track exclusion begin date, editable.
${FAST TRACK EXCLUSION END DATE}                    ${EMPTY}            # New fast track exclusion end date, editable.
${FAST TRACK EXCLUSION NOTE}                        FTE_NOTE            # New fast track exclusion note, editable.
@{FAST TRACK EXCLUSION PRODUCTS LIST}               India Chennai-ISDN-Flat     India Chennai-PSTN-Flat                         # Available products list, editable.
@{FAST TRACK EXCLUSION COUNTRY}                     India               # New fast track exclusion country, editable.
# End: Test Data For Route Technical Route Guide To Create New Fast Track Exclusion

# Start: Test Data For Route Commercial Dashboard Create Bulk Edit And Delete New Transitions
${AUTOMATED TRANSITION COUNTRY TYPE}		${EMPTY} 							# Country type for automated transition, editable.
@{AUTOMATED TRANSITION COUNTRY}				India 							    # Country for automated transition, editable.
@{TRANSITION FOR AUTOMATED TRANSITION}		Accepted-Requested 					# Transition for automated transition, editable.
${AUTOMATED RADIO BUTTON CHOICE}		    Yes 								# Radio button choice for automated transition, editable.
${AUTOMATED TRANSITION RESOLUTION ORDER}	${EMPTY} 							# Resolution order for automated transition, editable.
${BULK EDIT AUTOMATED VALUE}			    ${EMPTY} 							# Bulk edit automated value, editable.
${BULK EDIT RESOLUTION ORDER}			    10 									# Bulk Edit Resolution order, editable.
# End: Test Data For Route Commercial Dashboard Create Bulk Edit And Delete New Transitions

#Start: Test Data For Validate Create New Reason
${SCOPE COLUMN VALUE}           Override                                #Scope Column Value, editable.
${SCOPE COLUMN VALUE FOR INCLUSION}           Inclusion                 #Scope Column Value for inclusion, editable.
${SCOPE COLUMN VALUE FOR EXCLUSION}           Exclusion                 #Scope Column Value for exclusion, editable.
${COMMERCIAL SWITCH}              	Commercial                  	# Commercial switch, editable.
#End: Test Data For Validate Create New Reason