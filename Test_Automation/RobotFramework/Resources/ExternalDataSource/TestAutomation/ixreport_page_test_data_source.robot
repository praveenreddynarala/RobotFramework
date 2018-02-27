*** Settings ***
Documentation     IXReport Page External Test Data Source

*** Variables ***
# Start: Constant variables
${CDR REPORTS MENU}                     CDR Reports                 # CDR reports menu name, not editable.
${CDR ERROR REPORT SUBMENU}             CDR Error Report            # CDR error report submenu name, not editable.
${CDR REPORT SUBMENU}                   CDR Report                  # CDR report submenu name, not editable.
${CDR FILE LOAD SUBMENU}                CDR File Load               # CDR file load submenu name, not editable.
${IXTRADE REPORTS MENU}                 iXTrade Reports             # iXTrade Reports menu name, not editable.
${NUMBER PLAN DISCREPANCY REPORT SUBMENU}       Number Plan Discrepancy Report      # Number Plan Discrepancy Report submenu name, not editable.
${REFERENCE NUMBER PLAN TYPE}           Reference Number Plan       # Reference number plan type, not editable.
${OUTBOUND REF NUMBER PLAN}             Outbound Ref.               # Outbound ref number plan, not editable.
${BILATERAL REPORTS MENU}               Bilateral Reports           # Bilateral reports menu name, not editable.
${CONTRACT STATUS REPORT SUBMENU}       Contract Status Report      # Contract status report submenu name, not editable.
${BILATERAL TARIFF TYPE}                Bilateral                   # Bilateral tariff type, not editable.
${ADMINISTRATIVE REPORTS MENU}          Administrative Reports      # Administrative reports menu name, not editable.
${TECHNICAL TRUNK WITH HISTORY REPORT SUBMENU}      Technical Trunk With History Report      # Technical Trunk With History Report submenu name, not editable.
${IXROUTE REPORTS MENU}                 iXRoute Reports             # iXRoute reports menu name, not editable.
${REFERENCE RATE ANALYSIS REPORT SUBMENU}       Reference Rate Analysis Report      # Reference Rate Analysis Report submenu name, not editable.
${FAILED PROCESS STATUS}                Failed                      # Failed process status, not editable.
${CRD PROCESS STATUS FIRST LEVEL SUMMARIZE BY}          Process Status           # CDR Process Status first level summarize by, editable.
${COMPLETED PROCESS STATUS}             Completed                      # Completed process status, not editable.
${ALL PROCESS STATUS}                   ALL                            # All process status, not editable.
${ACCOUNT LIST REPORT SUBMENU}       Account List      # Account List submenu name, not editable.
${MONTHLY OPERATIONAL REPORTS MENU}     Monthly Operational Reports    # Monthly Operational Reports menu name, not editable.
${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}      Monthly Customer Specific Margin Report     # Monthly Customer Specific Margin Report submenu name, not editable.
${TRAFFIC REPORTS MENU}                 Traffic Reports             # Traffic Reports menu name, not editable.
${TRAFFIC FAULT CODE REPORT SUBMENU}    Traffic Fault Code Report   # Traffic Fault Code Report submenu name, not editable.
${BUY AND SALE RATES REPORT SUBMENU}    Buy and Sell Rates Report   # Buy and Sell Rates Report submenu name, not editable.
${CALENDAR DETAIL REPORT SUBMENU}       Calendar Detail Report      # Calendar Detail Report submenu name, not editable.
${CONTRACT WORKFLOW REPORT SUBMENU}     Contract Workflow Report    # Contract Workflow Report submenu name, not editable.
${DESTINATION LIST REPORT SUBMENU}      Destination List            # Destination List Report submenu name, not editable.
${PRODUCT LIST REPORT SUBMENU}          Product List                # Product List Report submenu name, not editable.
${RATE PLAN LIST REPORT SUBMENU}        Rate Plan List              # Rate Plan List Report submenu name, not editable.
${SETTLEMENT PRODUCT CALENDAR REPORT SUBMENU}           Settlement Product Calendar Report         # Settlement Product Calendar Report submenu name, not editable.
${ROUTING PRODUCT CALENDAR MAPPING REPORT SUBMENU}      Routing Product Calendar Mapping Report    # Routing Product Calendar Mapping Report submenu name, not editable.
${TRUNK API REPORT SUBMENU}             Trunk API Report            # Trunk API Report submenu name, not editable.
${USER LIST REPORT SUBMENU}             User List Report            # User List Report submenu name, not editable.
${ACTIVE STATUS}                        Active                      # Active status, not editable.
${INACTIVE STATUS}                      InActive                    # InActive status, not editable.
${CONTRACT LIST REPORT SUBMENU}         Contract List Report        # Contract List Report submenu name, not editable.
${CONTRACT DETAIL REPORT SUBMENU}       Contract Detail Report      # Contract Detail Report submenu name, not editable.
${VOLUME COMMITMENT END TO END SUBMENU}     Volume Commitment End to End        # Volume Commitment End to End submenu name, not editable.
${VOLUME COMMITMENT SUMMARY SUBMENU}        Volume Commitment Summary           # Volume Commitment Summary submenu name, not editable.
${NET COST REPORT SUBMENU}              Net Cost Report             # Net Cost Report submenu name, not editable.
${VPR REPORTS MENU}                     Vendor Profile Reports      # VPR reports menu name, not editable.
${COST VS DESTINATION SUBMENU}          Cost vs. Destination        # Cost vs. Destination Report submenu name, not editable.
${VENDOR COST HISTORY SUBMENU}          Vendor Cost History         # Vendor Cost History Report submenu name, not editable.
${VENDOR COST SHEET SUBMENU}            Vendor Cost Sheet           # Vendor Cost Sheet Report submenu name, not editable.
${OPERATION SALES REPORTS MENU}         Operational Sales Reports   # Operation sales reports menu name, not editable.
${CREDIT LIMIT MANAGEMENT REPORT SUBMENU}       Credit Limit Management Report (SP)     # Vendor Cost Sheet Report submenu name, not editable.
${DESTINATION TRAFFIC ASR REPORT SUBMENU}       Destination Traffic ASR Report          # Vendor Cost Sheet Report submenu name, not editable.
${NETWORKS REPORTS MENU}                Network Reports             # Network Reports menu name, not editable.
${PORT USAGE REPORT SUBMENU}            Port Usage Report           # Port Usage Report submenu name, not editable.
${SERVICE LEVEL CHANGE WORK ORDER REPORT SUBMENU}   Service Level Change Work Order Report      # Service Level Change Work Order Report submenu name, not editable.
${TRUNK UTILIZATION REPORT SUBMENU}            Trunk Utilization Report           # Trunk Utilization Report submenu name, not editable.
${NETWORK ROUTE GUIDE CHANGES REPORT SUBMENU}            Network Route Guide Changes           # Network Route Guide Changes Report submenu name, not editable.
${STANDARD ROUTE CLASS}                   Standard                  # Standard route class, not editable.
${PREMIUM ROUTE CLASS}                    Premium                   # Premium route class, not editable.
${BUY SELL DEAL ACCOUNT SUMMARY REPORT SUBMENU}            Buy Sell Deal Account Summary Report           # Buy Sell Deal Account Summary Report submenu name, not editable.
${ERLANG REPORT SUBMENU}                Erlang Report               # Erlang Report submenu name, not editable.
${BUY SELL DEAL CUSTOMER DESTINATION REPORT SUBMENU}            Buy Sell Deal Customer Destination Report           # Buy Sell Deal Customer Destination Report submenu name, not editable.
${BUY SELL DEAL DESTINATION SUMMARY REPORT SUBMENU}            Buy Sell Deal Destination Summary Report           # Buy Sell Deal Destination Summary Report submenu name, not editable.
${PRICING COST BASIS REPORT SUBMENU}    Pricing Cost Basis Report   # Pricing Cost Basis Report submenu name, not editable.
${OFFERED VS ACTUAL ASR REPORT SUBMENU}     Offered vs. Actual ASR Report   # Offered vs. Actual ASR Report submenu name, not editable.
${COST FORECAST REPORT SUBMENU}         Cost Forecast Report        # Cost Forecast Report submenu name, not editable.
${CUSTOMER PRICING EXCEPTION REPORT SUBMENU}    Customer Pricing Exception Report       # Customer Pricing Exception Report submenu name, not editable.
${IXFINANCE REPORTS MENU}                iXFinance Reports             # iXFinance Reports menu name, not editable.
${ACTUAL STATUS REPORT SUBMENU}       Actuals Status Report       # Actuals Status Report submenu name, not editable.
${IXROUTE REPORTS MENU}                iXRoute Reports             # iXRoute Reports menu name, not editable.
${WORKFLOW REPORT SUBMENU}       Workflow Report        # Workflow Report submenu name, not editable.
${CUSTOMER PRICE LIST TRACKING REPORT SUBMENU}       Customer Price List Tracking Report        # Customer Price List Tracking Report submenu name, not editable.
${CUSTOMER PRICE VS CURRENT COST REPORT SUBMENU}       Customer Price vs. Current Cost Report        # Customer Price vs. Current Cost Report submenu name, not editable.
${CUSTOMER PRICE VS RPL PRICES REPORT SUBMENU}       Customer Price vs. RPL Prices Report         # Customer Price vs. RPL Prices Report submenu name, not editable.
${REFERENCE PRICE LIST REPORT SUBMENU}       Reference Price List Report         # Reference Price List Report submenu name, not editable.
${RPL WITH MARKUP REPORT SUBMENU}       RPL with MarkUp Report          # RPL with MarkUp Report submenu name, not editable.
${CURRENCY NAME}                    USD                        # Currency name, not editable.
${CPE WITH TRAFFIC REPORT SUBMENU}          CPE With Traffic Report         # CPE With Traffic Report submenu name, not editable.
${ROUTE GUIDE OVERRIDE REPORT SUBMENU}      Route Guide Override Report     # Route Guide Override Report submenu name, not editable.
${ROUTE GUIDE REPORT SUBMENU}               Route Guide Report              # Route Guide Report submenu name, not editable.
${IMPACT ROUTE GUIDE REPORT SUBMENU}        Impact Route Guide Report       # Impact Route Guide Report submenu name, not editable.
${OPEN DISPUTE AMOUNT REPORT SUBMENU}       Open Dispute Amount Report      # Open Dispute Amount Report submenu name, not editable.
${CARRIER TEST COMPETITION REPORT SUBMENU}      Carrier Test Competition Report     # Carrier Test Competition Report submenu name, not editable.
${CARRIER TEST SAVINGS REPORT SUBMENU}          Carrier Test Savings Report         # Carrier Test Savings Report submenu name, not editable.
${RPL WITH COST ELEMENTS REPORT SUBMENU}        RPL With Cost Elements Report           # RPL with MarkUp Report submenu name, not editable.
${IXTRANSLATE REPORTS MENU}                 iXTranslate Reports             # iXTranslate Reports menu name, not editable.
${DELTA REPORT SUBMENU}                     Delta Report                    # Delta Report submenu name, not editable.
${DESTINATION ITEM NAME}                    Destination                        # Destination name, not editable.
${CREDIT LIMIT TRANSACTION REPORT SUBMENU}       Credit Limit Transaction Report     # Credit Limit Transaction Report submenu name, not editable.
${CREDIT LIMIT MANAGEMENT REPORTS SUBMENU}       Credit Limit Management Report     # Credit Limit Management Report submenu name, not editable.
${CREDIT LIMIT BLOCKING STATUS REPORT SUBMENU}       Credit Limit Blocking Status Report     # Credit Limit Blocking Status Report submenu name, not editable.
${CUSTOMER PROFILE REPORTS MENU}            Customer Profile Reports        # Customer Profile Reports menu name, not editable.
${PRICE VS DESTINATION REPORT SUBMENU}      Price Vs. Destination           # Price Vs. Destination Report submenu name, not editable.
${CUSTOMER PRICE SHEET WITH DIALED DIGITS REPORT SUBMENU}       Customer Price Sheet with Dialed Digits     # Customer Price Sheet with Dialed Digits Report submenu name, not editable.
${CUSTOMER PRICE SHEET REPORT SUBMENU}      Customer Price Sheet            # Customer Price Sheet Report submenu name, not editable.
${DIAGNOSTIC REPORTS MENU}                  Diagnostic Reports              # Diagnostic Reports menu name, not editable.
${HIGH RATE REPORT IXREPORT SUBMENU}        High Rate Report (iXRoute)      # High Rate Report (iXRoute) Report submenu name, not editable.
${CUSTOMER PROFILE REPORTS MENU}            Customer Profile Reports        # Customer Profile Reports menu name, not editable.
${CUSTOMER PRICE HISTORY SUBMENU}           Customer Price History          # Customer Price History submenu name, not editable.
${HIGH RATE REPORT IXCONNECT SUBMENU}       High Rate Report (iXConnect)    # High Rate Report (iXConnect) submenu name, not editable.
${CRG TRACKING SUBMENU}                     CRG Tracking                    # CRG Tracking submenu name, not editable.
${SOURCE REPORT SUBMENU}                    Source Report                   # Source Report submenu name, not editable.
${IMPLEMENTED RG DISCREPANCY SUBMENU}       Implemented RG Discrepancy      # Implemented RG Discrepancy submenu name, not editable.
${EXCLUSION REPORT SUBMENU}                 Exclusion Report                # Exclusion Report submenu name, not editable.
${INCLUSION REPORT SUBMENU}                 Inclusion Report                # Inclusion Report submenu name, not editable.
${OFFER DETAILS REPORT SUBMENU}             Offer Details Report            # Offer Details Report submenu name, not editable.
${VENDOR SPECIFIC DIALED DIGIT AND RATES SUBMENU}       Vendor Specific Dialed Digits and Rates      # Vendor Specific Dialed Digits and Rates submenu name, not editable.
${OFFER LIST REPORT SUBMENU}                Offer List Report               # Offer List Report submenu name, not editable.
${TRUNK TRANSLATION REPORT SUBMENU}         Trunk Translation Report        # Trunk Translation Report submenu name, not editable.
${DIALED DIGITS UPLOAD REPORT SUBMENU}      Dialed Digits Upload Report        # Dialed Digits Upload Report submenu name, not editable.
${ROUTING RATES REPORT SUBMENU}             Routing Rates Report            # Routing Rates Report submenu name, not editable.
${UNIFIED NUMBER PLAN REPORT SUBMENU}       Unified Number Plan Report      # Unified Number Plan Report submenu name, not editable.
${SERVICE LEVEL ASSIGNMENT REPORT SUBMENU}      Service Level Assignment Report     # Service Level Assignment Report submenu name, not editable.
${SWITCH LOG REPORT SUBMENU}                Switch Log Report               # Switch Log Report submenu name, not editable.
${TRAFFIC USAGE REPORT SUBMENU}             Traffic Usage Report            # Traffic Usage Report submenu name, not editable.
${ACCRUAL CHECK CURR MONTH AEP SUBMENU}     Accrual Check Curr. Month AEP   # Accrual Check Curr. Month AEP submenu name, not editable.
${ACCRUAL CHECK CURR MONTH IXAUDIT SEP SUBMENU}     Accrual Check Curr. Month iXAudit SEP       # Accrual Check Curr. Month iXAudit SEP submenu name, not editable.
${US TERMINATION BY NPA NXX REPORT SUBMENU}             US Termination by NPA/NXX Report            # US Termination by NPA/NXX Report submenu name, not editable.
${DAILY OPERATIONAL REPORTS MENU}           Daily Operational Reports       # Daily Operational Reports menu name, not editable.
${COST REVENUE AND ASR REPORT SUBMENU}      Cost, Revenue and ASR Report    # Cost, Revenue and ASR Report submenu name, not editable.
${MONTHLY COST REVENUE AND ASR REPORT SUBMENU}      Monthly Cost, Revenue and ASR       #  Monthly Cost, Revenue and ASR submenu name, not editable.
${SUSPECT RATE REPORT SUBMENU}              Suspect Rate Report             # Extract - Suspect Rate Report submenu name, not editable.
${QUALITY OF SERVICE REPORT SUBMENU}        Quality of Service Report       # Quality of Service Report submenu name, not editable.
${RATE HISTORY EXTRACT SUBMENU}             Rate History Extract            # Rate History Extract submenu name, not editable.
${ACCRUAL CHECK CURR MONTH IXBILL SEP SUBMENU}      Accrual Check Curr. Month iXBill SEP    # Accrual Check Curr. Month iXBill SEP submenu name, not editable.
${ACCRUAL CHECK PREV MONTH SUBMENU}         Accrual Check Prev. Month       # Accrual Check Prev. Month submenu name, not editable.
${COST AND ASR REPORT SUBMENU}              Cost and ASR Report             # Cost and ASR Report submenu name, not editable.
${CDR FILE LOAD REPORT SUBMENU}             CDR File Load Report            # Extract - CDR File Load Report submenu name, not editable.
${CDR EXTRACT SUBMENU}                      CDR Extract                     # Extract - CDR Extract submenu name, not editable.
${CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}      Customer Specific Margin Report     # Customer Specific Margin Report submenu name, not editable.
${MONTHLY ACCOUNTING REPORTS MENU}          Monthly Accounting Reports      # Monthly Accounting Reports menu name, not editable.
${AGGREGATE PRODUCT SUMMARIZE BY}           Aggregate Product               # Aggregate Product summarize by, not editable.
${CONTRACT SUMMARIZE BY}                    Contract                        # Contract summarize by, not editable.
${IXTOOLS ACCOUNT SUMMARIZE BY}             iXTools Account                 # iXTools Account summarize by, not editable.
${SETTLEMENT DESTINATION SUMMARIZE BY}      Settlement Destination          # Settlement Destination summarize by, not editable.
${FUTURE ROUTE RATE CHANGES AND IMPACT REPORT SUBMENU}      Future Route Rate Changes and Impact Report     # Future Route Rate Changes and Impact Report submenu name, not editable.
${RATE CHANGE IMPACT REPORT SUBMENU}        Rate Change Impact Report       # Rate Change Impact Report submenu name, not editable.
${ROUTE GUIDE COST CHANGE REPORT SUBMENU}   Route Guide Cost Change Report  # Route Guide Cost Change Report submenu name, not editable.
${DAILY ACCOUNTING REPORTS MENU}           Daily Accounting Reports       # Daily Accounting Reports menu name, not editable.
${IN OUT ASR REPORT SUBMENU}      In/Out ASR Report    #  In/Out ASR Report submenu name, not editable.
${EDR EXTRACT SUBMENU}              EDR Extract             #  Extract - EDR Extract submenu name, not editable.
${OPERATIONAL SALES REPORTS MENU}           Operational Sales Reports       # Operational Sales Reports menu name, not editable.
${DAILY RAW COST REVENUE AND ASR DO SUBMENU}    Daily Raw Cost Revenue and ASR (DO)     # Daily Raw Cost Revenue and ASR (DO) submenu name, not editable.
${DAILY WEEKLY CARRIER MARGIN REPORT SUBMENU}   Daily/Weekly Carrier Margin Report      # Daily/Weekly Carrier Margin Report submenu name, not editable.
${COST REVENUE AND ASR REPORT DA SUBMENU}       Cost, Revenue and ASR Report (DA)       # Cost, Revenue and ASR Report (DA) submenu name, not editable.
${COST REVENUE AND ASR REPORT MA SUBMENU}       Cost, Revenue and ASR Report (MA)       # Cost, Revenue and ASR Report (MA) submenu name, not editable.
${MARGIN IN AND OUT REPORT SUBMENU}             Margin In and Out Report                # Margin In and Out Report submenu name, not editable.
${MARGIN OUT REPORT SUBMENU}                    Margin Out Report                       # Margin Out Report submenu name, not editable.
${MARGIN REPORT SUBMENU}                        Margin Report                           # Margin Report submenu name, not editable.
${QUALITY SERVICE REPORT SUBMENU}               Quality Service Report                  # Quality Service Report submenu name, not editable.
${REVENUE AND ASR REPORT SUBMENU}               Revenue and ASR Report                  # Revenue and ASR Report submenu name, not editable.
${MASTER COST REVENUE AND ASR REPORT SUBMENU}       Master Cost, Revenue and ASR Report     # Master Cost, Revenue and ASR Report submenu name, not editable.
${MONTHLY COST AND ASR SUBMENU}                 Monthly Cost and ASR                    # Monthly Cost and ASR submenu name, not editable.
${MONTHLY RAW COST REVENUE AND ASR SUBMENU}     Monthly Raw Cost, Revenue and ASR       # Monthly Raw Cost, Revenue and ASR submenu name, not editable.
${PCR RAW COST REVENUE AND ASR REPORT SUBMENU}      PCR Raw Cost, Revenue and ASR Report    # PCR Raw Cost, Revenue and ASR Report submenu name, not editable.
${MONTHLY COST AND ASR SUBMENU}                 Monthly Cost and ASR                    # Monthly Cost and ASR submenu name, not editable.
${MONTHLY REVENUE AND ASR SUBMENU}              Monthly Revenue and ASR                 # Monthly Revenue and ASR submenu name, not editable.
${DAILY WEEKLY CARRIER REVENUE AND ASR SUBMENU}     Daily/Weekly Carrier Revenue and ASR    # Daily/Weekly Carrier Revenue and ASR submenu name, not editable.
${MONTHLY CARRIER MARGIN REPORT SUBMENU}        Monthly Carrier Margin Report           # Monthly Carrier Margin Report submenu name, not editable.
${MONTHLY CARRIER REVENUE AND ASR REPORT SUBMENU}   Monthly Carrier Revenue and ASR Report  # Monthly Carrier Revenue and ASR Report submenu name, not editable.
${MONTHLY IN OUT ASR REPORT SUBMENU}            Monthly Carrier Revenue and ASR Report      # Monthly Carrier Revenue and ASR Report submenu name, not editable.
${NGN QUALITY OF SERVICE REPORT SUBMENU}        NGN Quality of Service                  # NGN Quality of Service submenu name, not editable.
${QUALITY OF SERVICE WITH BENCHMARKS SUBMENU}   Quality of Service with Benchmarks      # Quality of Service with Benchmarks submenu name, not editable.
${DESTINATION BREAKOUT REPORT SUBMENU}          Destination Breakout Report             # Destination Breakout Report submenu name, not editable.
${LCR REPORT SUBMENU}          LCR Report             # LCR Report submenu name, not editable.
${MONTHLY COST AND ASR RREPORT LIST ITEM}                 Monthly Cost and ASR Report                    # Monthly Cost and ASR Report Extract List name, not editable.
${MONTHLY RAW COST REVENUE AND ASR REPORT LIST ITEM}    Monthly Raw Cost, Revenue and ASR Report    # Monthly Raw Cost, Revenue and ASR Report Extract List name, not editable.
${MULTIPLE NUMBER PLAN DISCREPANCY REPORT SUBMENU}      Multiple Number Plan Discrepancy Report     # Multiple Number Plan Discrepancy Report submenu name, not editable.
${DIALED DIGITS LIST WITH RATES REPORT SUBMENU}         Dialed Digits List with Rates Report        # Dialed Digits List With Rates Report submenu name, not editable.
# End: Constant variables

# Start: Test Data for CDR - CDR Error Report
${CDR ERROR REPORT DATE}            1/1/2016            # CDR error report date, editable.
@{CDR ERROR REPORT TABLE COLUMN NAME LIST}					Error Type		Calls/Submitted		Minutes/Raw Messages		# CDR error report table column name list, editable.
@{CDR ERROR REPORT TABLE COLUMN NAME LIST VOICE}			Error Type		Calls		Minutes		                        # CDR error report table column name list for voice, editable.
@{CDR ERROR REPORT TABLE COLUMN NAME LIST SMS}				Error Type		Submitted		Raw Messages		            # CDR error report table column name list for sms, editable.
@{CDR ERROR REPORT LAYER 2 TABLE COLUMN NAME LIST}			Call Type		Calls/Submitted		Minutes/Raw Messages		# CDR error report layer 2 table column name list, editable.
@{CDR ERROR REPORT LAYER 2 TABLE COLUMN NAME LIST VOICE}	Call Type		Calls	    Minutes		                        # CDR error report layer 2 table column name list for voice, editable.
@{CDR ERROR REPORT LAYER 2 TABLE COLUMN NAME LIST SMS}		Call Type		Submitted		Raw Messages		            # CDR error report layer 2 table column name list for sms, editable.
@{CDR ERROR REPORT LAYER 3 TABLE COLUMN NAME LIST}			Call Date	    Partition		Calls	Minutes 					# CDR error report layer 3 table column name list, editable.
@{CDR ERROR REPORT LAYER 3 TABLE COLUMN NAME LIST SMS}		Message Date	Partition		Submitted	Raw Messages 		# CDR error report layer 3 table column name list for sms, editable.
@{CDR ERROR REPORT LAYER 4 TABLE COLUMN NAME LIST}			Called Number	Calling Number		Call Date 	Call Hour 	Call Duration 	Call Type		# CDR error report layer 4 table column name list, editable.
@{CDR ERROR REPORT LAYER 4 TABLE COLUMN NAME LIST SMS}		Message Date 	Message Hour 	Message Submission				# CDR error report layer 4 table column name list for sms, editable.
${LAYER 5 REPORT TITLE}                                     CDR Error Report (layer 5)                  # Layer 5 report title, not editable.
# End: Test Data for CDR - CDR Error Report

# Start: Test Data to Verify CDR CDR File Load DrillDown
${CRD FILE LOAD SECOND LEVEL SUMMARIZE BY}          File Name           # CDR file load second level summarize by, editable.
${CRD FILE LOAD THIRD LEVEL SUMMARIZE BY}           File Type           # CDR file load third level summarize by, editable.
# End: Test Data to Verify CDR CDR File Load DrillDown

# Start: Test Data for Reference Rates Analysis Report
${OFFER DATES ERROR MESSAGE}        Selected "Offers To" should not be less than "Offers From"      # Offer dates error message, not editable
@{REFERENCE RATES ANALYSIS REPORT TABLE COLUMN NAME LIST}			    Vendor		Price List		Country     Reference Destination       Rate Type		            # Reference rates analysis report table column name list, editable.
@{REFERENCE RATES ANALYSIS REPORT LAYER 2 TABLE COLUMN NAME LIST}	    Reference Dialed Digits		Vendor Destination	    Rate Type       Origin      Vendor Rate	    # Reference rates analysis report layer 2 table column name list, editable.
# End: Test Data for Reference Rates Analysis Report

# Start: Test Data To Validate MOR Monthly Customer Specific Margin Report Charts
${CALL MONTH SUMMARIZE BY}              Call Month              # Call month summarize by, not editable.
${DESTINATION CATEGORY SUMMARIZE BY}    Destination Category    # Destination Category summarize by, not editable.
${IN ACCOUNT SUMMARIZE BY}              In Account              # In account summarize by, not editable.
${OUT ACCOUNT SUMMARIZE BY}             Out Account             # Out account summarize by, not editable.
${REFERENCE DESTINATION SUMMARIZE BY}   Reference Destination   # Reference destination summarize by, not editable.
# End: Test Data To Validate MOR Monthly Customer Specific Margin Report Charts
