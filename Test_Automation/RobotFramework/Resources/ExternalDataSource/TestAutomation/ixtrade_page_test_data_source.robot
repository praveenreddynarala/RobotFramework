*** Settings ***
Documentation     IXTrade Page External Test Data Source

*** Variables ***
# Start: Constant Variables
${INVALID TEMPLATES FOLDER}                     Invalid_Templates               # Invalid templates folder name, not editable.
${XML SOURCE TYPE}                              XML                             # XML source type, not editable.
${EXCEPTION DETAILS INLINE ITEM}                Exception Details               # Exception details inline item name, not editable.
${CUSTOMER PRICING EXCEPTION DETAILS POP UP NAME}	        Customer Pricing Exception Details 	    # Customer Pricing Exception Details pop up name, not editable.
${EXCEPTION HISTORY INLINE ITEM}                Exception History               # Exception History inline item name, not editable.
${PRICING HISTORY DETAILS POP UP NAME}	        Pricing Exception History for Customer 	    # Pricing Exception History for Customer pop up name, not editable.
${ROUTE GUIDE WITH SELL RATES REPORT INLINE ITEM}                Route Guide with Sell Rates Report              # Route Guide with Sell Rates Report inline item name, not editable.
${DOCUMENTS INLINE ITEM}                Documents               # Documents item name, not editable.
${PRICE EXCEPTION TEMPLATE NAME}                    PriceExceptionsTemplate_2.xls     # Template name, editable
${PRICING EXCEPTION DOCUMENT POP UP NAME}	        Customer Pricing Exception Documents Management 	    # Customer Pricing Exception Documents Management pop up name, not editable.
@{STATUS ITEM LIST}                     Approved                        # Status item, editable
${XML TEMPLATES FOLDER}                     XML_Templates               # XML templates folder name, not editable.
@{ALL STATUS EXCEPT UNRESOLVED ITEM LIST}             Requested     Approved        Rejected                        # Status item, editable
${ORIGIN COLUMN NAME}
${WITHOUT ROUNDING ROLE VENDOR OFFER UPLOAD XML FILE NAME}               VendorOfferTemplateWithoutRoundingRole.xml        # Without rounding role Vendor offer upload xml file name, not editable.Origin                  # Origin column name, not editable.
# End: Constant Variables

# Start: Test Data For Vendor Offer Upload Invalid OfferContent
${INVALID OFFERCONTENT FILE NAME}               Invalid_OfferContent.xml        # Invalid offercontent file name, not editable.
${INVALID OFFER CONTENT ERROR MESSAGE}          Invalid offer content           # Invalid offer content error message, not editable.
# End: Test Data For Vendor Offer Upload Invalid OfferContent

# Start: Test Data For Vendor Offer Upload Invalid Call Type
${INVALID CALL TYPE FILE NAME}              Invalid_Call_Type_or_Missing_Call_Type.xml        # Invalid Call Type file name, not editable.
${INVALID CALL TYPE ERROR MESSAGE}          Invalid offer content           # Invalid Call Type error message, not editable.
# End: Test Data For Vendor Offer Upload Invalid Call Type

# Start: Test Data For Vendor Offer Upload Invalid Rate Plan
${INVALID RATE PLAN FILE NAME}              Invalid_Rate_Plan.xml                # Invalid Rate Plan file name, not editable.
${INVALID RATE PLAN ERROR MESSAGE}          Rate Plan not set for this source       # Invalid Rate Plan error message, not editable.
# End: Test Data For Vendor Offer Upload Invalid Rate Plan

# Start: Test Data For Vendor Offer Upload Invalid Source
${INVALID SOURCE FILE NAME}              Invalid_Source.xml        # Invalid Source file name, not editable.
${INVALID SOURCE ERROR MESSAGE}          Invalid Source                  # Invalid Source error message, not editable.
# End: Test Data For Vendor Offer Upload Invalid Source

# Start: Test Data For Vendor Offer Upload Invalid Offer Type
${INVALID OFFER TYPE FILE NAME}              Invalid_Offer_Type.xml        # Invalid Offer Type file name, not editable.
${INVALID OFFER TYPE ERROR MESSAGE}          Upload not supported for this offer type           # Invalid Offer Type error message, not editable.
# End: Test Data For Vendor Offer Upload Invalid Offer Type

# Start: Test Data For Vendor Offer Upload Missing Dial Digits
${MISSING DIAL DIGITS FILE NAME}              Missing_Dial_Digits.xml        # Missing dial digits file name, not editable.
${MISSING DIAL DIGITS ERROR MESSAGE}          At least one empty Dialed Digit entry           # Missing dial digits error message, not editable.
# End: Test Data For Vendor Offer Upload Missing Dial Digits

# Start: Test Data For Vendor Offer Upload Missing Effective Date
${MISSING EFFECTIVE DATE FILE NAME}              Missing_Effective_Date.xml        # Missing effective date file name, not editable.
${MISSING EFFECTIVE DATE ERROR MESSAGE}          At least one empty effective date           # Missing effective date error message, not editable.
# End: Test Data For Vendor Offer Upload Missing Effective Date

# Start: Test Data For Vendor Offer Upload Missing Rate Entry
${MISSING RATE ENTRY FILE NAME}              Missing_Rate_Entry.xml        # Missing rate entry file name, not editable.
${MISSING RATE ENTRY ERROR MESSAGE}          At least one empty effective date           # Missing rate entry error message, not editable.
# End: Test Data For Vendor Offer Upload Missing Rate Entry

# Start: Test Data For Vendor Offer Upload Duplicate Destination
${DUPLICATE DESTINATION FILE NAME}              VendorPriceListTemplate_Duplicate_Destination.xml        # Duplicate destination file name, not editable.
${DUPLICATE DESTINATION ERROR MESSAGE}          All destinations excluded           # Duplicate destination error message, not editable.
# End: Test Data For Vendor Offer Upload Duplicate Destination

# Start: Test Data For Vendor Offer Upload Invalid Rating Method
${INVALID RATING METHOD FILE NAME}              VendorPriceListTemplate_Invalid_Rating_Method.xml        # Invalid rating method file name, not editable.
${INVALID RATING METHOD ERROR MESSAGE}          At least one empty effective date           # Invalid rating method error message, not editable.
# End: Test Data For Vendor Offer Upload Invalid Rating Method

# Start: Test Data For Vendor Offer Upload Allow Future Effective Date
${ALLOW FUTURE EFFECTIVE DATE FILE NAME}              VendorOfferUpload_Test_AllowFutureEffectiveDateDays.xml        # Allow Future Effective Date file name, not editable.
${ALLOW FUTURE EFFECTIVE DATE ERROR MESSAGE}          EMPTY           # Allow Future Effective Date error message, not editable.
# End: Test Data For Vendor Offer Upload Allow Future Effective Date

# Start: Test Data For Vendor Offer Upload Allow Old Effective Date
${ALLOW OLD EFFECTIVE DATE FILE NAME}              VendorOfferUpload_AllowOldEffectiveDateDays.xml        # Allow Old Effective Date file name, not editable.
${ALLOW OLD EFFECTIVE DATE ERROR MESSAGE}          EMPTY           # Allow Old Effective Date error message, not editable.
# End: Test Data For Vendor Offer Upload Allow Old Effective Date

# Start: Test Data For Vendor Offer Upload Invalid GMT Offset
${INVALID GMT OFFSET FILE NAME}              VendorOfferUpload_Invalid_GMT_Offset.xml        # Invalid GMT Offset file name, not editable.
${INVALID GMT OFFSET ERROR MESSAGE}          EMPTY           # Invalid GMT Offset error message, not editable.
# End: Test Data For Vendor Offer Upload Invalid GMT Offset

# Start: Test Data For Vendor Offer Upload Invalid Daylight Savings Zone
${INVALID DAYLIGHT SAVINGS ZONE FILE NAME}              VendorOfferUpload_Invalid_Daylight_Savings_Zone.xml        # Invalid Daylight Savings Zone file name, not editable.
${INVALID DAYLIGHT SAVINGS ZONE ERROR MESSAGE}          EMPTY          # Invalid Daylight Savings Zone error message, not editable.
# End: Test Data For Vendor Offer Upload Invalid Daylight Savings Zone

# Start: Test Data For Vendor Offer Upload Invalid Time Format For Dsz
${INVALID TIME FORMAT FOR DSZ FILE NAME}              VendorOfferUpload_Invalid_TimeFormat_for_DSZ.xml        # Invalid Time Format For Dsz file name, not editable.
${INVALID TIME FORMAT FOR DSZ ERROR MESSAGE}          EMPTY           # Invalid Time Format For Dsz error message, not editable.
# End: Test Data For Vendor Offer Upload Invalid Time Format For Dsz

# Start: Test Data For Vendor Offer Upload Only Rates and New Destination
${ONLY RATES AND NEW DESTINATION FILE NAME}              VendorOfferUpload_only_Rates_and_new_Destination.xml        # Only Rates and New Destination file name, not editable.
${ONLY RATES AND NEW DESTINATION ERROR MESSAGE}          EMPTY           # Only Rates and New Destination error message, not editable.
# End: Test Data For Vendor Offer Upload Only Rates and New Destination

# Start: Test Data For UI Control Behavior In Vendor Offer Upload In Legacy
${VENDOR OFFER UPLOAD XML FILE NAME}               VendorOfferUploadXMLtemplate.xml        # Vendor offer upload xml file name, not editable.
${VENDOR OFFER UPLOAD SECOND XML FILE NAME}        VendorOfferUploadXMLsecondTemplate.xml        # Vendor offer upload xml file name, not editable.
# End: Test Data For UI Control Behavior In Vendor Offer Upload In Legacy

# Start: Template - Vendor Offer
${VENDOR OFFER COMPUTE RATES TEMPALTE XML}    VendorOfferTemplate_Compute_Rates.xml     # Vendor Offer Template compute rates template name, Editable.
# End: Template - Vendor Offer