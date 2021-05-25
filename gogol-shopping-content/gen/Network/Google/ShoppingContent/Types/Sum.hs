{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The corresponding return label source.
data ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource
    = ReturnLabelSourceUnspecified
      -- ^ @RETURN_LABEL_SOURCE_UNSPECIFIED@
      -- Default value. This value is unused.
    | DownloadAndPrint
      -- ^ @DOWNLOAD_AND_PRINT@
      -- Download and print the label.
    | InTheBox
      -- ^ @IN_THE_BOX@
      -- Label in the box.
    | CustomerResponsibility
      -- ^ @CUSTOMER_RESPONSIBILITY@
      -- Customers\' responsibility to get the label.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource

instance FromHttpApiData ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource where
    parseQueryParam = \case
        "RETURN_LABEL_SOURCE_UNSPECIFIED" -> Right ReturnLabelSourceUnspecified
        "DOWNLOAD_AND_PRINT" -> Right DownloadAndPrint
        "IN_THE_BOX" -> Right InTheBox
        "CUSTOMER_RESPONSIBILITY" -> Right CustomerResponsibility
        x -> Left ("Unable to parse ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource from: " <> x)

instance ToHttpApiData ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource where
    toQueryParam = \case
        ReturnLabelSourceUnspecified -> "RETURN_LABEL_SOURCE_UNSPECIFIED"
        DownloadAndPrint -> "DOWNLOAD_AND_PRINT"
        InTheBox -> "IN_THE_BOX"
        CustomerResponsibility -> "CUSTOMER_RESPONSIBILITY"

instance FromJSON ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource where
    parseJSON = parseJSONText "ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource"

instance ToJSON ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource where
    toJSON = toJSONText

-- | The name of the template to retrieve.
data OrdersGettestOrdertemplateTemplateName
    = TEMPLATE1
      -- ^ @TEMPLATE1@
      -- Get \`template1\`.
    | TEMPLATE2
      -- ^ @TEMPLATE2@
      -- Get \`template2\`.
    | TEMPLATE1A
      -- ^ @TEMPLATE1A@
      -- Get \`template1A\`.
    | TEMPLATE1B
      -- ^ @TEMPLATE1B@
      -- Get \`template1B\`.
    | TEMPLATE3
      -- ^ @TEMPLATE3@
      -- Get \`template3\`.
    | TEMPLATE4
      -- ^ @TEMPLATE4@
      -- Get \`template4\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrdersGettestOrdertemplateTemplateName

instance FromHttpApiData OrdersGettestOrdertemplateTemplateName where
    parseQueryParam = \case
        "TEMPLATE1" -> Right TEMPLATE1
        "TEMPLATE2" -> Right TEMPLATE2
        "TEMPLATE1A" -> Right TEMPLATE1A
        "TEMPLATE1B" -> Right TEMPLATE1B
        "TEMPLATE3" -> Right TEMPLATE3
        "TEMPLATE4" -> Right TEMPLATE4
        x -> Left ("Unable to parse OrdersGettestOrdertemplateTemplateName from: " <> x)

instance ToHttpApiData OrdersGettestOrdertemplateTemplateName where
    toQueryParam = \case
        TEMPLATE1 -> "TEMPLATE1"
        TEMPLATE2 -> "TEMPLATE2"
        TEMPLATE1A -> "TEMPLATE1A"
        TEMPLATE1B -> "TEMPLATE1B"
        TEMPLATE3 -> "TEMPLATE3"
        TEMPLATE4 -> "TEMPLATE4"

instance FromJSON OrdersGettestOrdertemplateTemplateName where
    parseJSON = parseJSONText "OrdersGettestOrdertemplateTemplateName"

instance ToJSON OrdersGettestOrdertemplateTemplateName where
    toJSON = toJSONText

-- | Program to which metrics apply, e.g., Free Product Listing.
data SegmentsProgram
    = ProgramUnspecified
      -- ^ @PROGRAM_UNSPECIFIED@
      -- Not specified.
    | ShoppingAds
      -- ^ @SHOPPING_ADS@
      -- Shopping Ads.
    | FreeProductListing
      -- ^ @FREE_PRODUCT_LISTING@
      -- Free Product Listing.
    | FreeLocalProductListing
      -- ^ @FREE_LOCAL_PRODUCT_LISTING@
      -- Free Local Product Listing.
    | BuyOnGoogleListing
      -- ^ @BUY_ON_GOOGLE_LISTING@
      -- Buy on Google Listing.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SegmentsProgram

instance FromHttpApiData SegmentsProgram where
    parseQueryParam = \case
        "PROGRAM_UNSPECIFIED" -> Right ProgramUnspecified
        "SHOPPING_ADS" -> Right ShoppingAds
        "FREE_PRODUCT_LISTING" -> Right FreeProductListing
        "FREE_LOCAL_PRODUCT_LISTING" -> Right FreeLocalProductListing
        "BUY_ON_GOOGLE_LISTING" -> Right BuyOnGoogleListing
        x -> Left ("Unable to parse SegmentsProgram from: " <> x)

instance ToHttpApiData SegmentsProgram where
    toQueryParam = \case
        ProgramUnspecified -> "PROGRAM_UNSPECIFIED"
        ShoppingAds -> "SHOPPING_ADS"
        FreeProductListing -> "FREE_PRODUCT_LISTING"
        FreeLocalProductListing -> "FREE_LOCAL_PRODUCT_LISTING"
        BuyOnGoogleListing -> "BUY_ON_GOOGLE_LISTING"

instance FromJSON SegmentsProgram where
    parseJSON = parseJSONText "SegmentsProgram"

instance ToJSON SegmentsProgram where
    toJSON = toJSONText

-- | Eligibility status of the Shopping Ads program.
data ShoppingAdsProgramStatusRegionStatusEligibilityStatus
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State is not known.
    | Approved
      -- ^ @APPROVED@
      -- If the account has no issues and review is completed successfully.
    | DisApproved
      -- ^ @DISAPPROVED@
      -- There are one or more issues that needs to be resolved for account to be
      -- active for the program. Detailed list of account issues are available in
      -- [accountstatuses](https:\/\/developers.google.com\/shopping-content\/reference\/rest\/v2.1\/accountstatuses)
      -- API.
    | Warning
      -- ^ @WARNING@
      -- If account has issues but offers are servable. Some of the issue can
      -- make account DISAPPROVED after a certain deadline.
    | UnderReview
      -- ^ @UNDER_REVIEW@
      -- Account is under review.
    | PendingReview
      -- ^ @PENDING_REVIEW@
      -- Account is waiting for review to start.
    | Onboarding
      -- ^ @ONBOARDING@
      -- Program is currently onboarding.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ShoppingAdsProgramStatusRegionStatusEligibilityStatus

instance FromHttpApiData ShoppingAdsProgramStatusRegionStatusEligibilityStatus where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "APPROVED" -> Right Approved
        "DISAPPROVED" -> Right DisApproved
        "WARNING" -> Right Warning
        "UNDER_REVIEW" -> Right UnderReview
        "PENDING_REVIEW" -> Right PendingReview
        "ONBOARDING" -> Right Onboarding
        x -> Left ("Unable to parse ShoppingAdsProgramStatusRegionStatusEligibilityStatus from: " <> x)

instance ToHttpApiData ShoppingAdsProgramStatusRegionStatusEligibilityStatus where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Approved -> "APPROVED"
        DisApproved -> "DISAPPROVED"
        Warning -> "WARNING"
        UnderReview -> "UNDER_REVIEW"
        PendingReview -> "PENDING_REVIEW"
        Onboarding -> "ONBOARDING"

instance FromJSON ShoppingAdsProgramStatusRegionStatusEligibilityStatus where
    parseJSON = parseJSONText "ShoppingAdsProgramStatusRegionStatusEligibilityStatus"

instance ToJSON ShoppingAdsProgramStatusRegionStatusEligibilityStatus where
    toJSON = toJSONText

-- | Type of the rule.
data RepricingRuleReportType
    = RepricingRuleTypeUnspecified
      -- ^ @REPRICING_RULE_TYPE_UNSPECIFIED@
      -- Unused.
    | TypeStatsBased
      -- ^ @TYPE_STATS_BASED@
      -- Statistical measurement based rules among Google SA merchants. If this
      -- rule is chosen, repricer will adjust the offer price based on
      -- statistical metrics (currently only min is available) among other
      -- merchants who sell the same product. Details need to be provdided in the
      -- RuleDefinition.
    | TypeCogsBased
      -- ^ @TYPE_COGS_BASED@
      -- Cost of goods sale based rule. Repricer will adjust the offer price
      -- based on the offer\'s sale cost which is provided by the merchant.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RepricingRuleReportType

instance FromHttpApiData RepricingRuleReportType where
    parseQueryParam = \case
        "REPRICING_RULE_TYPE_UNSPECIFIED" -> Right RepricingRuleTypeUnspecified
        "TYPE_STATS_BASED" -> Right TypeStatsBased
        "TYPE_COGS_BASED" -> Right TypeCogsBased
        x -> Left ("Unable to parse RepricingRuleReportType from: " <> x)

instance ToHttpApiData RepricingRuleReportType where
    toQueryParam = \case
        RepricingRuleTypeUnspecified -> "REPRICING_RULE_TYPE_UNSPECIFIED"
        TypeStatsBased -> "TYPE_STATS_BASED"
        TypeCogsBased -> "TYPE_COGS_BASED"

instance FromJSON RepricingRuleReportType where
    parseJSON = parseJSONText "RepricingRuleReportType"

instance ToJSON RepricingRuleReportType where
    toJSON = toJSONText

-- | If program is successfully onboarded for at least one region.
data FreeListingsProgramStatusState
    = ProgramStateUnspecified
      -- ^ @PROGRAM_STATE_UNSPECIFIED@
      -- State is not known.
    | Onboarded
      -- ^ @ONBOARDED@
      -- Program is onboarded for at least one country.
    | NotOnboarded
      -- ^ @NOT_ONBOARDED@
      -- Program is not onboarded for any country.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FreeListingsProgramStatusState

instance FromHttpApiData FreeListingsProgramStatusState where
    parseQueryParam = \case
        "PROGRAM_STATE_UNSPECIFIED" -> Right ProgramStateUnspecified
        "ONBOARDED" -> Right Onboarded
        "NOT_ONBOARDED" -> Right NotOnboarded
        x -> Left ("Unable to parse FreeListingsProgramStatusState from: " <> x)

instance ToHttpApiData FreeListingsProgramStatusState where
    toQueryParam = \case
        ProgramStateUnspecified -> "PROGRAM_STATE_UNSPECIFIED"
        Onboarded -> "ONBOARDED"
        NotOnboarded -> "NOT_ONBOARDED"

instance FromJSON FreeListingsProgramStatusState where
    parseJSON = parseJSONText "FreeListingsProgramStatusState"

instance ToJSON FreeListingsProgramStatusState where
    toJSON = toJSONText

data ReturnPolicyOnlineItemConditionsItem
    = ItemConditionUnspecified
      -- ^ @ITEM_CONDITION_UNSPECIFIED@
      -- Default value. This value is unused.
    | New
      -- ^ @NEW@
      -- New.
    | Used
      -- ^ @USED@
      -- Used.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReturnPolicyOnlineItemConditionsItem

instance FromHttpApiData ReturnPolicyOnlineItemConditionsItem where
    parseQueryParam = \case
        "ITEM_CONDITION_UNSPECIFIED" -> Right ItemConditionUnspecified
        "NEW" -> Right New
        "USED" -> Right Used
        x -> Left ("Unable to parse ReturnPolicyOnlineItemConditionsItem from: " <> x)

instance ToHttpApiData ReturnPolicyOnlineItemConditionsItem where
    toQueryParam = \case
        ItemConditionUnspecified -> "ITEM_CONDITION_UNSPECIFIED"
        New -> "NEW"
        Used -> "USED"

instance FromJSON ReturnPolicyOnlineItemConditionsItem where
    parseJSON = parseJSONText "ReturnPolicyOnlineItemConditionsItem"

instance ToJSON ReturnPolicyOnlineItemConditionsItem where
    toJSON = toJSONText

-- | If program is successfully onboarded for at least one region.
data ShoppingAdsProgramStatusState
    = SAPSSProgramStateUnspecified
      -- ^ @PROGRAM_STATE_UNSPECIFIED@
      -- State is not known.
    | SAPSSOnboarded
      -- ^ @ONBOARDED@
      -- Program is onboarded for at least one country.
    | SAPSSNotOnboarded
      -- ^ @NOT_ONBOARDED@
      -- Program is not onboarded for any country.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ShoppingAdsProgramStatusState

instance FromHttpApiData ShoppingAdsProgramStatusState where
    parseQueryParam = \case
        "PROGRAM_STATE_UNSPECIFIED" -> Right SAPSSProgramStateUnspecified
        "ONBOARDED" -> Right SAPSSOnboarded
        "NOT_ONBOARDED" -> Right SAPSSNotOnboarded
        x -> Left ("Unable to parse ShoppingAdsProgramStatusState from: " <> x)

instance ToHttpApiData ShoppingAdsProgramStatusState where
    toQueryParam = \case
        SAPSSProgramStateUnspecified -> "PROGRAM_STATE_UNSPECIFIED"
        SAPSSOnboarded -> "ONBOARDED"
        SAPSSNotOnboarded -> "NOT_ONBOARDED"

instance FromJSON ShoppingAdsProgramStatusState where
    parseJSON = parseJSONText "ShoppingAdsProgramStatusState"

instance ToJSON ShoppingAdsProgramStatusState where
    toJSON = toJSONText

-- | Obtains orders that match any of the specified statuses. Please note
-- that \`active\` is a shortcut for \`pendingShipment\` and
-- \`partiallyShipped\`, and \`completed\` is a shortcut for \`shipped\`,
-- \`partiallyDelivered\`, \`delivered\`, \`partiallyReturned\`,
-- \`returned\`, and \`canceled\`.
data OrdersListStatuses
    = Active
      -- ^ @ACTIVE@
      -- Return orders with status \`active\`. The \`active\` status includes
      -- \`pendingShipment\` and \`partiallyShipped\` orders.
    | Completed
      -- ^ @COMPLETED@
      -- Return orders with status \`completed\`. The \`completed\` status
      -- includes \`shipped\`, \`partiallyDelivered\`, \`delivered\`,
      -- \`partiallyReturned\`, \`returned\`, and \`canceled\` orders.
    | Canceled
      -- ^ @CANCELED@
      -- Return orders with status \`canceled\`.
    | InProgress
      -- ^ @IN_PROGRESS@
      -- Return orders with status \`inProgress\`.
    | PendingShipment
      -- ^ @PENDING_SHIPMENT@
      -- Return orders with status \`pendingShipment\`.
    | PartiallyShipped
      -- ^ @PARTIALLY_SHIPPED@
      -- Return orders with status \`partiallyShipped\`.
    | Shipped
      -- ^ @SHIPPED@
      -- Return orders with status \`shipped\`.
    | PartiallyDelivered
      -- ^ @PARTIALLY_DELIVERED@
      -- Return orders with status \`partiallyDelivered\`.
    | Delivered
      -- ^ @DELIVERED@
      -- Return orders with status \`delivered\`.
    | PartiallyReturned
      -- ^ @PARTIALLY_RETURNED@
      -- Return orders with status \`partiallyReturned\`.
    | Returned
      -- ^ @RETURNED@
      -- Return orders with status \`returned\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrdersListStatuses

instance FromHttpApiData OrdersListStatuses where
    parseQueryParam = \case
        "ACTIVE" -> Right Active
        "COMPLETED" -> Right Completed
        "CANCELED" -> Right Canceled
        "IN_PROGRESS" -> Right InProgress
        "PENDING_SHIPMENT" -> Right PendingShipment
        "PARTIALLY_SHIPPED" -> Right PartiallyShipped
        "SHIPPED" -> Right Shipped
        "PARTIALLY_DELIVERED" -> Right PartiallyDelivered
        "DELIVERED" -> Right Delivered
        "PARTIALLY_RETURNED" -> Right PartiallyReturned
        "RETURNED" -> Right Returned
        x -> Left ("Unable to parse OrdersListStatuses from: " <> x)

instance ToHttpApiData OrdersListStatuses where
    toQueryParam = \case
        Active -> "ACTIVE"
        Completed -> "COMPLETED"
        Canceled -> "CANCELED"
        InProgress -> "IN_PROGRESS"
        PendingShipment -> "PENDING_SHIPMENT"
        PartiallyShipped -> "PARTIALLY_SHIPPED"
        Shipped -> "SHIPPED"
        PartiallyDelivered -> "PARTIALLY_DELIVERED"
        Delivered -> "DELIVERED"
        PartiallyReturned -> "PARTIALLY_RETURNED"
        Returned -> "RETURNED"

instance FromJSON OrdersListStatuses where
    parseJSON = parseJSONText "OrdersListStatuses"

instance ToJSON OrdersListStatuses where
    toJSON = toJSONText

-- | Eligibility status of the standard free listing program.
data FreeListingsProgramStatusRegionStatusEligibilityStatus
    = FLPSRSESStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State is not known.
    | FLPSRSESApproved
      -- ^ @APPROVED@
      -- If the account has no issues and review is completed successfully.
    | FLPSRSESDisApproved
      -- ^ @DISAPPROVED@
      -- There are one or more issues that needs to be resolved for account to be
      -- active for the program. Detailed list of account issues are available in
      -- [accountstatuses](https:\/\/developers.google.com\/shopping-content\/reference\/rest\/v2.1\/accountstatuses)
      -- API.
    | FLPSRSESWarning
      -- ^ @WARNING@
      -- If account has issues but offers are servable. Some of the issue can
      -- make account DISAPPROVED after a certain deadline.
    | FLPSRSESUnderReview
      -- ^ @UNDER_REVIEW@
      -- Account is under review.
    | FLPSRSESPendingReview
      -- ^ @PENDING_REVIEW@
      -- Account is waiting for review to start.
    | FLPSRSESOnboarding
      -- ^ @ONBOARDING@
      -- Program is currently onboarding.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FreeListingsProgramStatusRegionStatusEligibilityStatus

instance FromHttpApiData FreeListingsProgramStatusRegionStatusEligibilityStatus where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right FLPSRSESStateUnspecified
        "APPROVED" -> Right FLPSRSESApproved
        "DISAPPROVED" -> Right FLPSRSESDisApproved
        "WARNING" -> Right FLPSRSESWarning
        "UNDER_REVIEW" -> Right FLPSRSESUnderReview
        "PENDING_REVIEW" -> Right FLPSRSESPendingReview
        "ONBOARDING" -> Right FLPSRSESOnboarding
        x -> Left ("Unable to parse FreeListingsProgramStatusRegionStatusEligibilityStatus from: " <> x)

instance ToHttpApiData FreeListingsProgramStatusRegionStatusEligibilityStatus where
    toQueryParam = \case
        FLPSRSESStateUnspecified -> "STATE_UNSPECIFIED"
        FLPSRSESApproved -> "APPROVED"
        FLPSRSESDisApproved -> "DISAPPROVED"
        FLPSRSESWarning -> "WARNING"
        FLPSRSESUnderReview -> "UNDER_REVIEW"
        FLPSRSESPendingReview -> "PENDING_REVIEW"
        FLPSRSESOnboarding -> "ONBOARDING"

instance FromJSON FreeListingsProgramStatusRegionStatusEligibilityStatus where
    parseJSON = parseJSONText "FreeListingsProgramStatusRegionStatusEligibilityStatus"

instance ToJSON FreeListingsProgramStatusRegionStatusEligibilityStatus where
    toJSON = toJSONText

-- | Return the results in the specified order.
data OrderreturnsListOrderBy
    = ReturnCreationTimeDesc
      -- ^ @RETURN_CREATION_TIME_DESC@
      -- Return results in descending order.
    | ReturnCreationTimeAsc
      -- ^ @RETURN_CREATION_TIME_ASC@
      -- Return results in ascending order.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderreturnsListOrderBy

instance FromHttpApiData OrderreturnsListOrderBy where
    parseQueryParam = \case
        "RETURN_CREATION_TIME_DESC" -> Right ReturnCreationTimeDesc
        "RETURN_CREATION_TIME_ASC" -> Right ReturnCreationTimeAsc
        x -> Left ("Unable to parse OrderreturnsListOrderBy from: " <> x)

instance ToHttpApiData OrderreturnsListOrderBy where
    toQueryParam = \case
        ReturnCreationTimeDesc -> "RETURN_CREATION_TIME_DESC"
        ReturnCreationTimeAsc -> "RETURN_CREATION_TIME_ASC"

instance FromJSON OrderreturnsListOrderBy where
    parseJSON = parseJSONText "OrderreturnsListOrderBy"

instance ToJSON OrderreturnsListOrderBy where
    toJSON = toJSONText

-- | Verification method used to receive verification code.
data VerifyPhoneNumberRequestPhoneVerificationMethod
    = PhoneVerificationMethodUnspecified
      -- ^ @PHONE_VERIFICATION_METHOD_UNSPECIFIED@
      -- Unknown method.
    | Sms
      -- ^ @SMS@
      -- Receive verification code by SMS.
    | PhoneCall
      -- ^ @PHONE_CALL@
      -- Receive verification code by phone call.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VerifyPhoneNumberRequestPhoneVerificationMethod

instance FromHttpApiData VerifyPhoneNumberRequestPhoneVerificationMethod where
    parseQueryParam = \case
        "PHONE_VERIFICATION_METHOD_UNSPECIFIED" -> Right PhoneVerificationMethodUnspecified
        "SMS" -> Right Sms
        "PHONE_CALL" -> Right PhoneCall
        x -> Left ("Unable to parse VerifyPhoneNumberRequestPhoneVerificationMethod from: " <> x)

instance ToHttpApiData VerifyPhoneNumberRequestPhoneVerificationMethod where
    toQueryParam = \case
        PhoneVerificationMethodUnspecified -> "PHONE_VERIFICATION_METHOD_UNSPECIFIED"
        Sms -> "SMS"
        PhoneCall -> "PHONE_CALL"

instance FromJSON VerifyPhoneNumberRequestPhoneVerificationMethod where
    parseJSON = parseJSONText "VerifyPhoneNumberRequestPhoneVerificationMethod"

instance ToJSON VerifyPhoneNumberRequestPhoneVerificationMethod where
    toJSON = toJSONText

-- | The current participation stage for the program.
data BuyOnGoogleProgramStatusParticipationStage
    = BOGPSPSProgramParticipationStageUnspecified
      -- ^ @PROGRAM_PARTICIPATION_STAGE_UNSPECIFIED@
      -- Default value when participation stage is not set.
    | BOGPSPSNotEligible
      -- ^ @NOT_ELIGIBLE@
      -- Merchant is not eligible for onboarding to a given program in a specific
      -- region code.
    | BOGPSPSEligible
      -- ^ @ELIGIBLE@
      -- Merchant is eligible for onboarding to a given program in a specific
      -- region code.
    | BOGPSPSOnboarding
      -- ^ @ONBOARDING@
      -- Merchant is onboarding to a given program in a specific region code.
    | BOGPSPSEligibleForReview
      -- ^ @ELIGIBLE_FOR_REVIEW@
      -- Merchant fulfilled all the requirements and is ready to request review
      -- in a specific region code.
    | BOGPSPSPendingReview
      -- ^ @PENDING_REVIEW@
      -- Merchant is waiting for the review to be completed in a specific region
      -- code.
    | BOGPSPSReviewDisApproved
      -- ^ @REVIEW_DISAPPROVED@
      -- The review for a merchant has been rejected in a specific region code.
    | BOGPSPSActive
      -- ^ @ACTIVE@
      -- Merchant\'s program participation is active for a specific region code.
    | BOGPSPSPaused
      -- ^ @PAUSED@
      -- Participation has been paused.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuyOnGoogleProgramStatusParticipationStage

instance FromHttpApiData BuyOnGoogleProgramStatusParticipationStage where
    parseQueryParam = \case
        "PROGRAM_PARTICIPATION_STAGE_UNSPECIFIED" -> Right BOGPSPSProgramParticipationStageUnspecified
        "NOT_ELIGIBLE" -> Right BOGPSPSNotEligible
        "ELIGIBLE" -> Right BOGPSPSEligible
        "ONBOARDING" -> Right BOGPSPSOnboarding
        "ELIGIBLE_FOR_REVIEW" -> Right BOGPSPSEligibleForReview
        "PENDING_REVIEW" -> Right BOGPSPSPendingReview
        "REVIEW_DISAPPROVED" -> Right BOGPSPSReviewDisApproved
        "ACTIVE" -> Right BOGPSPSActive
        "PAUSED" -> Right BOGPSPSPaused
        x -> Left ("Unable to parse BuyOnGoogleProgramStatusParticipationStage from: " <> x)

instance ToHttpApiData BuyOnGoogleProgramStatusParticipationStage where
    toQueryParam = \case
        BOGPSPSProgramParticipationStageUnspecified -> "PROGRAM_PARTICIPATION_STAGE_UNSPECIFIED"
        BOGPSPSNotEligible -> "NOT_ELIGIBLE"
        BOGPSPSEligible -> "ELIGIBLE"
        BOGPSPSOnboarding -> "ONBOARDING"
        BOGPSPSEligibleForReview -> "ELIGIBLE_FOR_REVIEW"
        BOGPSPSPendingReview -> "PENDING_REVIEW"
        BOGPSPSReviewDisApproved -> "REVIEW_DISAPPROVED"
        BOGPSPSActive -> "ACTIVE"
        BOGPSPSPaused -> "PAUSED"

instance FromJSON BuyOnGoogleProgramStatusParticipationStage where
    parseJSON = parseJSONText "BuyOnGoogleProgramStatusParticipationStage"

instance ToJSON BuyOnGoogleProgramStatusParticipationStage where
    toJSON = toJSONText

-- | The carrier code enum. Accepts the values FEDEX or UPS.
data AccountReturnCarrierCarrierCode
    = CarrierCodeUnspecified
      -- ^ @CARRIER_CODE_UNSPECIFIED@
      -- Carrier not specified
    | Fedex
      -- ^ @FEDEX@
      -- FedEx carrier
    | Ups
      -- ^ @UPS@
      -- UPS carrier
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountReturnCarrierCarrierCode

instance FromHttpApiData AccountReturnCarrierCarrierCode where
    parseQueryParam = \case
        "CARRIER_CODE_UNSPECIFIED" -> Right CarrierCodeUnspecified
        "FEDEX" -> Right Fedex
        "UPS" -> Right Ups
        x -> Left ("Unable to parse AccountReturnCarrierCarrierCode from: " <> x)

instance ToHttpApiData AccountReturnCarrierCarrierCode where
    toQueryParam = \case
        CarrierCodeUnspecified -> "CARRIER_CODE_UNSPECIFIED"
        Fedex -> "FEDEX"
        Ups -> "UPS"

instance FromJSON AccountReturnCarrierCarrierCode where
    parseJSON = parseJSONText "AccountReturnCarrierCarrierCode"

instance ToJSON AccountReturnCarrierCarrierCode where
    toJSON = toJSONText

-- | Obtains order returns that match any shipment type provided in this
-- parameter. When this parameter is not provided, order returns are
-- obtained regardless of their shipment types.
data OrderreturnsListShipmentTypes
    = ByMail
      -- ^ @BY_MAIL@
      -- Return shipments with type \`byMail\` only.
    | Returnless
      -- ^ @RETURNLESS@
      -- Return shipments with type \`returnless\` only.
    | ContactCustomerSupport
      -- ^ @CONTACT_CUSTOMER_SUPPORT@
      -- Return shipments with type \`contactCustomerSupport\` only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderreturnsListShipmentTypes

instance FromHttpApiData OrderreturnsListShipmentTypes where
    parseQueryParam = \case
        "BY_MAIL" -> Right ByMail
        "RETURNLESS" -> Right Returnless
        "CONTACT_CUSTOMER_SUPPORT" -> Right ContactCustomerSupport
        x -> Left ("Unable to parse OrderreturnsListShipmentTypes from: " <> x)

instance ToHttpApiData OrderreturnsListShipmentTypes where
    toQueryParam = \case
        ByMail -> "BY_MAIL"
        Returnless -> "RETURNLESS"
        ContactCustomerSupport -> "CONTACT_CUSTOMER_SUPPORT"

instance FromJSON OrderreturnsListShipmentTypes where
    parseJSON = parseJSONText "OrderreturnsListShipmentTypes"

instance ToJSON OrderreturnsListShipmentTypes where
    toJSON = toJSONText

-- | Eligibility status of the enhanced free listing program.
data FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus
    = FLPSRSEESStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- State is not known.
    | FLPSRSEESApproved
      -- ^ @APPROVED@
      -- If the account has no issues and review is completed successfully.
    | FLPSRSEESDisApproved
      -- ^ @DISAPPROVED@
      -- There are one or more issues that needs to be resolved for account to be
      -- active for the program. Detailed list of account issues are available in
      -- [accountstatuses](https:\/\/developers.google.com\/shopping-content\/reference\/rest\/v2.1\/accountstatuses)
      -- API.
    | FLPSRSEESWarning
      -- ^ @WARNING@
      -- If account has issues but offers are servable. Some of the issue can
      -- make account DISAPPROVED after a certain deadline.
    | FLPSRSEESUnderReview
      -- ^ @UNDER_REVIEW@
      -- Account is under review.
    | FLPSRSEESPendingReview
      -- ^ @PENDING_REVIEW@
      -- Account is waiting for review to start.
    | FLPSRSEESOnboarding
      -- ^ @ONBOARDING@
      -- Program is currently onboarding.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus

instance FromHttpApiData FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right FLPSRSEESStateUnspecified
        "APPROVED" -> Right FLPSRSEESApproved
        "DISAPPROVED" -> Right FLPSRSEESDisApproved
        "WARNING" -> Right FLPSRSEESWarning
        "UNDER_REVIEW" -> Right FLPSRSEESUnderReview
        "PENDING_REVIEW" -> Right FLPSRSEESPendingReview
        "ONBOARDING" -> Right FLPSRSEESOnboarding
        x -> Left ("Unable to parse FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus from: " <> x)

instance ToHttpApiData FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus where
    toQueryParam = \case
        FLPSRSEESStateUnspecified -> "STATE_UNSPECIFIED"
        FLPSRSEESApproved -> "APPROVED"
        FLPSRSEESDisApproved -> "DISAPPROVED"
        FLPSRSEESWarning -> "WARNING"
        FLPSRSEESUnderReview -> "UNDER_REVIEW"
        FLPSRSEESPendingReview -> "PENDING_REVIEW"
        FLPSRSEESOnboarding -> "ONBOARDING"

instance FromJSON FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus where
    parseJSON = parseJSONText "FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus"

instance ToJSON FreeListingsProgramStatusRegionStatusEnhancedEligibilityStatus where
    toJSON = toJSONText

-- | Controls which fields will be populated. Acceptable values are:
-- \"merchant\" and \"css\". The default value is \"merchant\".
data AccountsGetView
    = AGVMerchant
      -- ^ @MERCHANT@
      -- Default. View is populated with Merchant Center fields.
    | AGVCss
      -- ^ @CSS@
      -- View is populated with Comparison Shopping Services fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsGetView

instance FromHttpApiData AccountsGetView where
    parseQueryParam = \case
        "MERCHANT" -> Right AGVMerchant
        "CSS" -> Right AGVCss
        x -> Left ("Unable to parse AccountsGetView from: " <> x)

instance ToHttpApiData AccountsGetView where
    toQueryParam = \case
        AGVMerchant -> "MERCHANT"
        AGVCss -> "CSS"

instance FromJSON AccountsGetView where
    parseJSON = parseJSONText "AccountsGetView"

instance ToJSON AccountsGetView where
    toJSON = toJSONText

-- | Obtains order returns that match any shipment state provided in this
-- parameter. When this parameter is not provided, order returns are
-- obtained regardless of their shipment states.
data OrderreturnsListShipmentStates
    = OLSSNew
      -- ^ @NEW@
      -- Return shipments with \`new\` state only.
    | OLSSShipped
      -- ^ @SHIPPED@
      -- Return shipments with \`shipped\` state only.
    | OLSSCompleted
      -- ^ @COMPLETED@
      -- Return shipments with \`completed\` state only.
    | OLSSUndeliverable
      -- ^ @UNDELIVERABLE@
      -- Return shipments with \`undeliverable\` state only.
    | OLSSPending
      -- ^ @PENDING@
      -- Return shipments with \`pending\` state only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderreturnsListShipmentStates

instance FromHttpApiData OrderreturnsListShipmentStates where
    parseQueryParam = \case
        "NEW" -> Right OLSSNew
        "SHIPPED" -> Right OLSSShipped
        "COMPLETED" -> Right OLSSCompleted
        "UNDELIVERABLE" -> Right OLSSUndeliverable
        "PENDING" -> Right OLSSPending
        x -> Left ("Unable to parse OrderreturnsListShipmentStates from: " <> x)

instance ToHttpApiData OrderreturnsListShipmentStates where
    toQueryParam = \case
        OLSSNew -> "NEW"
        OLSSShipped -> "SHIPPED"
        OLSSCompleted -> "COMPLETED"
        OLSSUndeliverable -> "UNDELIVERABLE"
        OLSSPending -> "PENDING"

instance FromJSON OrderreturnsListShipmentStates where
    parseJSON = parseJSONText "OrderreturnsListShipmentStates"

instance ToJSON OrderreturnsListShipmentStates where
    toJSON = toJSONText

-- | Obtains order returns that match any shipment status provided in this
-- parameter. When this parameter is not provided, order returns are
-- obtained regardless of their shipment statuses.
data OrderreturnsListShipmentStatus
    = ONew
      -- ^ @NEW@
      -- Return shipments with \`new\` status only.
    | OInProgress
      -- ^ @IN_PROGRESS@
      -- Return shipments with \`inProgress\` status only.
    | OProcessed
      -- ^ @PROCESSED@
      -- Return shipments with \`processed\` status only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderreturnsListShipmentStatus

instance FromHttpApiData OrderreturnsListShipmentStatus where
    parseQueryParam = \case
        "NEW" -> Right ONew
        "IN_PROGRESS" -> Right OInProgress
        "PROCESSED" -> Right OProcessed
        x -> Left ("Unable to parse OrderreturnsListShipmentStatus from: " <> x)

instance ToHttpApiData OrderreturnsListShipmentStatus where
    toQueryParam = \case
        ONew -> "NEW"
        OInProgress -> "IN_PROGRESS"
        OProcessed -> "PROCESSED"

instance FromJSON OrderreturnsListShipmentStatus where
    parseJSON = parseJSONText "OrderreturnsListShipmentStatus"

instance ToJSON OrderreturnsListShipmentStatus where
    toJSON = toJSONText

-- | Determines whether to use the custom matchers or the product feed
-- attribute \"repricing_rule_id\" to specify offer-rule mapping.
data RepricingRuleEligibleOfferMatcherMatcherOption
    = MatcherOptionUnspecified
      -- ^ @MATCHER_OPTION_UNSPECIFIED@
      -- Unused.
    | MatcherOptionCustomFilter
      -- ^ @MATCHER_OPTION_CUSTOM_FILTER@
      -- Use custom filters.
    | MatcherOptionUseFeedAttribute
      -- ^ @MATCHER_OPTION_USE_FEED_ATTRIBUTE@
      -- Use repricing_rule_id feed attribute on the product resource to specify
      -- offer-rule mapping.
    | MatcherOptionAllProducts
      -- ^ @MATCHER_OPTION_ALL_PRODUCTS@
      -- Matching all products.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RepricingRuleEligibleOfferMatcherMatcherOption

instance FromHttpApiData RepricingRuleEligibleOfferMatcherMatcherOption where
    parseQueryParam = \case
        "MATCHER_OPTION_UNSPECIFIED" -> Right MatcherOptionUnspecified
        "MATCHER_OPTION_CUSTOM_FILTER" -> Right MatcherOptionCustomFilter
        "MATCHER_OPTION_USE_FEED_ATTRIBUTE" -> Right MatcherOptionUseFeedAttribute
        "MATCHER_OPTION_ALL_PRODUCTS" -> Right MatcherOptionAllProducts
        x -> Left ("Unable to parse RepricingRuleEligibleOfferMatcherMatcherOption from: " <> x)

instance ToHttpApiData RepricingRuleEligibleOfferMatcherMatcherOption where
    toQueryParam = \case
        MatcherOptionUnspecified -> "MATCHER_OPTION_UNSPECIFIED"
        MatcherOptionCustomFilter -> "MATCHER_OPTION_CUSTOM_FILTER"
        MatcherOptionUseFeedAttribute -> "MATCHER_OPTION_USE_FEED_ATTRIBUTE"
        MatcherOptionAllProducts -> "MATCHER_OPTION_ALL_PRODUCTS"

instance FromJSON RepricingRuleEligibleOfferMatcherMatcherOption where
    parseJSON = parseJSONText "RepricingRuleEligibleOfferMatcherMatcherOption"

instance ToJSON RepricingRuleEligibleOfferMatcherMatcherOption where
    toJSON = toJSONText

-- | Verification method to receive verification code.
data RequestPhoneVerificationRequestPhoneVerificationMethod
    = RPVRPVMPhoneVerificationMethodUnspecified
      -- ^ @PHONE_VERIFICATION_METHOD_UNSPECIFIED@
      -- Unknown method.
    | RPVRPVMSms
      -- ^ @SMS@
      -- Receive verification code by SMS.
    | RPVRPVMPhoneCall
      -- ^ @PHONE_CALL@
      -- Receive verification code by phone call.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RequestPhoneVerificationRequestPhoneVerificationMethod

instance FromHttpApiData RequestPhoneVerificationRequestPhoneVerificationMethod where
    parseQueryParam = \case
        "PHONE_VERIFICATION_METHOD_UNSPECIFIED" -> Right RPVRPVMPhoneVerificationMethodUnspecified
        "SMS" -> Right RPVRPVMSms
        "PHONE_CALL" -> Right RPVRPVMPhoneCall
        x -> Left ("Unable to parse RequestPhoneVerificationRequestPhoneVerificationMethod from: " <> x)

instance ToHttpApiData RequestPhoneVerificationRequestPhoneVerificationMethod where
    toQueryParam = \case
        RPVRPVMPhoneVerificationMethodUnspecified -> "PHONE_VERIFICATION_METHOD_UNSPECIFIED"
        RPVRPVMSms -> "SMS"
        RPVRPVMPhoneCall -> "PHONE_CALL"

instance FromJSON RequestPhoneVerificationRequestPhoneVerificationMethod where
    parseJSON = parseJSONText "RequestPhoneVerificationRequestPhoneVerificationMethod"

instance ToJSON RequestPhoneVerificationRequestPhoneVerificationMethod where
    toJSON = toJSONText

-- | Indicates to Google how Google should use these OAuth tokens.
data AccountCredentialsPurpose
    = AccountCredentialsPurposeUnspecified
      -- ^ @ACCOUNT_CREDENTIALS_PURPOSE_UNSPECIFIED@
      -- Unknown purpose.
    | ShopifyOrderManagement
      -- ^ @SHOPIFY_ORDER_MANAGEMENT@
      -- The credentials allow Google to manage Shopify orders on behalf of the
      -- merchant.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountCredentialsPurpose

instance FromHttpApiData AccountCredentialsPurpose where
    parseQueryParam = \case
        "ACCOUNT_CREDENTIALS_PURPOSE_UNSPECIFIED" -> Right AccountCredentialsPurposeUnspecified
        "SHOPIFY_ORDER_MANAGEMENT" -> Right ShopifyOrderManagement
        x -> Left ("Unable to parse AccountCredentialsPurpose from: " <> x)

instance ToHttpApiData AccountCredentialsPurpose where
    toQueryParam = \case
        AccountCredentialsPurposeUnspecified -> "ACCOUNT_CREDENTIALS_PURPOSE_UNSPECIFIED"
        ShopifyOrderManagement -> "SHOPIFY_ORDER_MANAGEMENT"

instance FromJSON AccountCredentialsPurpose where
    parseJSON = parseJSONText "AccountCredentialsPurpose"

instance ToJSON AccountCredentialsPurpose where
    toJSON = toJSONText

-- | Type of the rule.
data RepricingProductReportType
    = RPRTRepricingRuleTypeUnspecified
      -- ^ @REPRICING_RULE_TYPE_UNSPECIFIED@
      -- Unused.
    | RPRTTypeStatsBased
      -- ^ @TYPE_STATS_BASED@
      -- Statistical measurement based rules among Google SA merchants. If this
      -- rule is chosen, repricer will adjust the offer price based on
      -- statistical metrics (currently only min is available) among other
      -- merchants who sell the same product. Details need to be provdided in the
      -- RuleDefinition.
    | RPRTTypeCogsBased
      -- ^ @TYPE_COGS_BASED@
      -- Cost of goods sale based rule. Repricer will adjust the offer price
      -- based on the offer\'s sale cost which is provided by the merchant.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RepricingProductReportType

instance FromHttpApiData RepricingProductReportType where
    parseQueryParam = \case
        "REPRICING_RULE_TYPE_UNSPECIFIED" -> Right RPRTRepricingRuleTypeUnspecified
        "TYPE_STATS_BASED" -> Right RPRTTypeStatsBased
        "TYPE_COGS_BASED" -> Right RPRTTypeCogsBased
        x -> Left ("Unable to parse RepricingProductReportType from: " <> x)

instance ToHttpApiData RepricingProductReportType where
    toQueryParam = \case
        RPRTRepricingRuleTypeUnspecified -> "REPRICING_RULE_TYPE_UNSPECIFIED"
        RPRTTypeStatsBased -> "TYPE_STATS_BASED"
        RPRTTypeCogsBased -> "TYPE_COGS_BASED"

instance FromJSON RepricingProductReportType where
    parseJSON = parseJSONText "RepricingProductReportType"

instance ToJSON RepricingProductReportType where
    toJSON = toJSONText

-- | If a program in a given country is eligible for review. It will be
-- present only if eligibility status is \`DISAPPROVED\`.
data FreeListingsProgramStatusRegionStatusReviewEligibilityStatus
    = ReviewEligibilityUnspecified
      -- ^ @REVIEW_ELIGIBILITY_UNSPECIFIED@
      -- Review eligibility state is unknown.
    | Eligible
      -- ^ @ELIGIBLE@
      -- Account for a region code is eligible for review.
    | Ineligible
      -- ^ @INELIGIBLE@
      -- Account for a region code is not eligible for review.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FreeListingsProgramStatusRegionStatusReviewEligibilityStatus

instance FromHttpApiData FreeListingsProgramStatusRegionStatusReviewEligibilityStatus where
    parseQueryParam = \case
        "REVIEW_ELIGIBILITY_UNSPECIFIED" -> Right ReviewEligibilityUnspecified
        "ELIGIBLE" -> Right Eligible
        "INELIGIBLE" -> Right Ineligible
        x -> Left ("Unable to parse FreeListingsProgramStatusRegionStatusReviewEligibilityStatus from: " <> x)

instance ToHttpApiData FreeListingsProgramStatusRegionStatusReviewEligibilityStatus where
    toQueryParam = \case
        ReviewEligibilityUnspecified -> "REVIEW_ELIGIBILITY_UNSPECIFIED"
        Eligible -> "ELIGIBLE"
        Ineligible -> "INELIGIBLE"

instance FromJSON FreeListingsProgramStatusRegionStatusReviewEligibilityStatus where
    parseJSON = parseJSONText "FreeListingsProgramStatusRegionStatusReviewEligibilityStatus"

instance ToJSON FreeListingsProgramStatusRegionStatusReviewEligibilityStatus where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Controls which fields will be populated. Acceptable values are:
-- \"merchant\" and \"css\". The default value is \"merchant\".
data AccountsListView
    = ALVMerchant
      -- ^ @MERCHANT@
      -- Default. View is populated with Merchant Center fields.
    | ALVCss
      -- ^ @CSS@
      -- View is populated with Comparison Shopping Services fields.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountsListView

instance FromHttpApiData AccountsListView where
    parseQueryParam = \case
        "MERCHANT" -> Right ALVMerchant
        "CSS" -> Right ALVCss
        x -> Left ("Unable to parse AccountsListView from: " <> x)

instance ToHttpApiData AccountsListView where
    toQueryParam = \case
        ALVMerchant -> "MERCHANT"
        ALVCss -> "CSS"

instance FromJSON AccountsListView where
    parseJSON = parseJSONText "AccountsListView"

instance ToJSON AccountsListView where
    toJSON = toJSONText

-- | Policy type.
data ReturnPolicyOnlinePolicyType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Default value. This value is unused.
    | NumberOfDaysAfterDelivery
      -- ^ @NUMBER_OF_DAYS_AFTER_DELIVERY@
      -- Number of days after a return is delivered.
    | NoReturns
      -- ^ @NO_RETURNS@
      -- No returns.
    | LifetimeReturns
      -- ^ @LIFETIME_RETURNS@
      -- Life time returns.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReturnPolicyOnlinePolicyType

instance FromHttpApiData ReturnPolicyOnlinePolicyType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "NUMBER_OF_DAYS_AFTER_DELIVERY" -> Right NumberOfDaysAfterDelivery
        "NO_RETURNS" -> Right NoReturns
        "LIFETIME_RETURNS" -> Right LifetimeReturns
        x -> Left ("Unable to parse ReturnPolicyOnlinePolicyType from: " <> x)

instance ToHttpApiData ReturnPolicyOnlinePolicyType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        NumberOfDaysAfterDelivery -> "NUMBER_OF_DAYS_AFTER_DELIVERY"
        NoReturns -> "NO_RETURNS"
        LifetimeReturns -> "LIFETIME_RETURNS"

instance FromJSON ReturnPolicyOnlinePolicyType where
    parseJSON = parseJSONText "ReturnPolicyOnlinePolicyType"

instance ToJSON ReturnPolicyOnlinePolicyType where
    toJSON = toJSONText

-- | If a program in a given country is eligible for review. It will be
-- present only if eligibility status is \`DISAPPROVED\`.
data ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus
    = SAPSRSRESReviewEligibilityUnspecified
      -- ^ @REVIEW_ELIGIBILITY_UNSPECIFIED@
      -- Review eligibility state is unknown.
    | SAPSRSRESEligible
      -- ^ @ELIGIBLE@
      -- Account for a region code is eligible for review.
    | SAPSRSRESIneligible
      -- ^ @INELIGIBLE@
      -- Account for a region code is not eligible for review.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus

instance FromHttpApiData ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus where
    parseQueryParam = \case
        "REVIEW_ELIGIBILITY_UNSPECIFIED" -> Right SAPSRSRESReviewEligibilityUnspecified
        "ELIGIBLE" -> Right SAPSRSRESEligible
        "INELIGIBLE" -> Right SAPSRSRESIneligible
        x -> Left ("Unable to parse ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus from: " <> x)

instance ToHttpApiData ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus where
    toQueryParam = \case
        SAPSRSRESReviewEligibilityUnspecified -> "REVIEW_ELIGIBILITY_UNSPECIFIED"
        SAPSRSRESEligible -> "ELIGIBLE"
        SAPSRSRESIneligible -> "INELIGIBLE"

instance FromJSON ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus where
    parseJSON = parseJSONText "ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus"

instance ToJSON ShoppingAdsProgramStatusRegionStatusReviewEligibilityStatus where
    toJSON = toJSONText

-- | The status of the shipment.
data OrderTrackingSignalShippingInfoShippingStatus
    = OTSSISSShippingStateUnspecified
      -- ^ @SHIPPING_STATE_UNSPECIFIED@
      -- The shipping status is not known to merchant.
    | OTSSISSShipped
      -- ^ @SHIPPED@
      -- All items are shipped.
    | OTSSISSDelivered
      -- ^ @DELIVERED@
      -- The shipment is already delivered.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrderTrackingSignalShippingInfoShippingStatus

instance FromHttpApiData OrderTrackingSignalShippingInfoShippingStatus where
    parseQueryParam = \case
        "SHIPPING_STATE_UNSPECIFIED" -> Right OTSSISSShippingStateUnspecified
        "SHIPPED" -> Right OTSSISSShipped
        "DELIVERED" -> Right OTSSISSDelivered
        x -> Left ("Unable to parse OrderTrackingSignalShippingInfoShippingStatus from: " <> x)

instance ToHttpApiData OrderTrackingSignalShippingInfoShippingStatus where
    toQueryParam = \case
        OTSSISSShippingStateUnspecified -> "SHIPPING_STATE_UNSPECIFIED"
        OTSSISSShipped -> "SHIPPED"
        OTSSISSDelivered -> "DELIVERED"

instance FromJSON OrderTrackingSignalShippingInfoShippingStatus where
    parseJSON = parseJSONText "OrderTrackingSignalShippingInfoShippingStatus"

instance ToJSON OrderTrackingSignalShippingInfoShippingStatus where
    toJSON = toJSONText

-- | Type of return shipping fee.
data ReturnPolicyOnlineReturnShippingFeeType
    = RPORSFTTypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Default value. This value is unused.
    | RPORSFTFixed
      -- ^ @FIXED@
      -- The return shipping fee is a fixed value.
    | RPORSFTCustomerPayingActualFee
      -- ^ @CUSTOMER_PAYING_ACTUAL_FEE@
      -- Customer will pay the actual return shipping fee.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReturnPolicyOnlineReturnShippingFeeType

instance FromHttpApiData ReturnPolicyOnlineReturnShippingFeeType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right RPORSFTTypeUnspecified
        "FIXED" -> Right RPORSFTFixed
        "CUSTOMER_PAYING_ACTUAL_FEE" -> Right RPORSFTCustomerPayingActualFee
        x -> Left ("Unable to parse ReturnPolicyOnlineReturnShippingFeeType from: " <> x)

instance ToHttpApiData ReturnPolicyOnlineReturnShippingFeeType where
    toQueryParam = \case
        RPORSFTTypeUnspecified -> "TYPE_UNSPECIFIED"
        RPORSFTFixed -> "FIXED"
        RPORSFTCustomerPayingActualFee -> "CUSTOMER_PAYING_ACTUAL_FEE"

instance FromJSON ReturnPolicyOnlineReturnShippingFeeType where
    parseJSON = parseJSONText "ReturnPolicyOnlineReturnShippingFeeType"

instance ToJSON ReturnPolicyOnlineReturnShippingFeeType where
    toJSON = toJSONText

-- | The return reason category.
data ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory
    = ReturnReasonCategoryUnspecified
      -- ^ @RETURN_REASON_CATEGORY_UNSPECIFIED@
      -- Default value. This value is unused.
    | BuyerRemorse
      -- ^ @BUYER_REMORSE@
      -- Buyer remorse.
    | ItemDefect
      -- ^ @ITEM_DEFECT@
      -- Item defect.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory

instance FromHttpApiData ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory where
    parseQueryParam = \case
        "RETURN_REASON_CATEGORY_UNSPECIFIED" -> Right ReturnReasonCategoryUnspecified
        "BUYER_REMORSE" -> Right BuyerRemorse
        "ITEM_DEFECT" -> Right ItemDefect
        x -> Left ("Unable to parse ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory from: " <> x)

instance ToHttpApiData ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory where
    toQueryParam = \case
        ReturnReasonCategoryUnspecified -> "RETURN_REASON_CATEGORY_UNSPECIFIED"
        BuyerRemorse -> "BUYER_REMORSE"
        ItemDefect -> "ITEM_DEFECT"

instance FromJSON ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory where
    parseJSON = parseJSONText "ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory"

instance ToJSON ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory where
    toJSON = toJSONText

data ReturnPolicyOnlineReturnMethodsItem
    = RPORMIReturnMethodUnspecified
      -- ^ @RETURN_METHOD_UNSPECIFIED@
      -- Default value. This value is unused.
    | RPORMIByMail
      -- ^ @BY_MAIL@
      -- By mail.
    | RPORMIInStore
      -- ^ @IN_STORE@
      -- In store.
    | RPORMIAtAKiosk
      -- ^ @AT_A_KIOSK@
      -- At a kiosk.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReturnPolicyOnlineReturnMethodsItem

instance FromHttpApiData ReturnPolicyOnlineReturnMethodsItem where
    parseQueryParam = \case
        "RETURN_METHOD_UNSPECIFIED" -> Right RPORMIReturnMethodUnspecified
        "BY_MAIL" -> Right RPORMIByMail
        "IN_STORE" -> Right RPORMIInStore
        "AT_A_KIOSK" -> Right RPORMIAtAKiosk
        x -> Left ("Unable to parse ReturnPolicyOnlineReturnMethodsItem from: " <> x)

instance ToHttpApiData ReturnPolicyOnlineReturnMethodsItem where
    toQueryParam = \case
        RPORMIReturnMethodUnspecified -> "RETURN_METHOD_UNSPECIFIED"
        RPORMIByMail -> "BY_MAIL"
        RPORMIInStore -> "IN_STORE"
        RPORMIAtAKiosk -> "AT_A_KIOSK"

instance FromJSON ReturnPolicyOnlineReturnMethodsItem where
    parseJSON = parseJSONText "ReturnPolicyOnlineReturnMethodsItem"

instance ToJSON ReturnPolicyOnlineReturnMethodsItem where
    toJSON = toJSONText

-- | Reason code this rule was not applicable.
data InApplicabilityDetailsInApplicableReason
    = InApplicableReasonUnspecified
      -- ^ @INAPPLICABLE_REASON_UNSPECIFIED@
      -- Default value. Should not be used.
    | CannotBeatBuyboxWinner
      -- ^ @CANNOT_BEAT_BUYBOX_WINNER@
      -- The rule set for this product cannot beat the buybox winner.
    | AlreadyWinningBuybox
      -- ^ @ALREADY_WINNING_BUYBOX@
      -- This product can already win the buybox without rule.
    | TriumphedOverBySameTypeRule
      -- ^ @TRIUMPHED_OVER_BY_SAME_TYPE_RULE@
      -- Another rule of the same type takes precedence over this one.
    | TriumphedOverByOtherRuleOnOffer
      -- ^ @TRIUMPHED_OVER_BY_OTHER_RULE_ON_OFFER@
      -- Another rule of a different type takes precedence over this one.
    | RestrictionsNotMet
      -- ^ @RESTRICTIONS_NOT_MET@
      -- The rule restrictions are not met. For example, this may be the case if
      -- the calculated rule price is lower than floor price in the restriction.
    | Uncategorized
      -- ^ @UNCATEGORIZED@
      -- The reason is not categorized to any known reason.
    | InvalidAutoPriceMin
      -- ^ @INVALID_AUTO_PRICE_MIN@
      -- The auto_pricing_min_price is invalid. For example, it is missing or \<
      -- 0.
    | InvalidFloorConfig
      -- ^ @INVALID_FLOOR_CONFIG@
      -- The floor defined in the rule is invalid. For example, it has the wrong
      -- sign which results in a floor \< 0.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InApplicabilityDetailsInApplicableReason

instance FromHttpApiData InApplicabilityDetailsInApplicableReason where
    parseQueryParam = \case
        "INAPPLICABLE_REASON_UNSPECIFIED" -> Right InApplicableReasonUnspecified
        "CANNOT_BEAT_BUYBOX_WINNER" -> Right CannotBeatBuyboxWinner
        "ALREADY_WINNING_BUYBOX" -> Right AlreadyWinningBuybox
        "TRIUMPHED_OVER_BY_SAME_TYPE_RULE" -> Right TriumphedOverBySameTypeRule
        "TRIUMPHED_OVER_BY_OTHER_RULE_ON_OFFER" -> Right TriumphedOverByOtherRuleOnOffer
        "RESTRICTIONS_NOT_MET" -> Right RestrictionsNotMet
        "UNCATEGORIZED" -> Right Uncategorized
        "INVALID_AUTO_PRICE_MIN" -> Right InvalidAutoPriceMin
        "INVALID_FLOOR_CONFIG" -> Right InvalidFloorConfig
        x -> Left ("Unable to parse InApplicabilityDetailsInApplicableReason from: " <> x)

instance ToHttpApiData InApplicabilityDetailsInApplicableReason where
    toQueryParam = \case
        InApplicableReasonUnspecified -> "INAPPLICABLE_REASON_UNSPECIFIED"
        CannotBeatBuyboxWinner -> "CANNOT_BEAT_BUYBOX_WINNER"
        AlreadyWinningBuybox -> "ALREADY_WINNING_BUYBOX"
        TriumphedOverBySameTypeRule -> "TRIUMPHED_OVER_BY_SAME_TYPE_RULE"
        TriumphedOverByOtherRuleOnOffer -> "TRIUMPHED_OVER_BY_OTHER_RULE_ON_OFFER"
        RestrictionsNotMet -> "RESTRICTIONS_NOT_MET"
        Uncategorized -> "UNCATEGORIZED"
        InvalidAutoPriceMin -> "INVALID_AUTO_PRICE_MIN"
        InvalidFloorConfig -> "INVALID_FLOOR_CONFIG"

instance FromJSON InApplicabilityDetailsInApplicableReason where
    parseJSON = parseJSONText "InApplicabilityDetailsInApplicableReason"

instance ToJSON InApplicabilityDetailsInApplicableReason where
    toJSON = toJSONText

-- | Required. Immutable. The type of the rule.
data RepricingRuleType
    = RRTRepricingRuleTypeUnspecified
      -- ^ @REPRICING_RULE_TYPE_UNSPECIFIED@
      -- Unused.
    | RRTTypeStatsBased
      -- ^ @TYPE_STATS_BASED@
      -- Statistical measurement based rules among Google SA merchants. If this
      -- rule is chosen, repricer will adjust the offer price based on
      -- statistical metrics (currently only min is available) among other
      -- merchants who sell the same product. Details need to be provdided in the
      -- RuleDefinition.
    | RRTTypeCogsBased
      -- ^ @TYPE_COGS_BASED@
      -- Cost of goods sale based rule. Repricer will adjust the offer price
      -- based on the offer\'s sale cost which is provided by the merchant.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RepricingRuleType

instance FromHttpApiData RepricingRuleType where
    parseQueryParam = \case
        "REPRICING_RULE_TYPE_UNSPECIFIED" -> Right RRTRepricingRuleTypeUnspecified
        "TYPE_STATS_BASED" -> Right RRTTypeStatsBased
        "TYPE_COGS_BASED" -> Right RRTTypeCogsBased
        x -> Left ("Unable to parse RepricingRuleType from: " <> x)

instance ToHttpApiData RepricingRuleType where
    toQueryParam = \case
        RRTRepricingRuleTypeUnspecified -> "REPRICING_RULE_TYPE_UNSPECIFIED"
        RRTTypeStatsBased -> "TYPE_STATS_BASED"
        RRTTypeCogsBased -> "TYPE_COGS_BASED"

instance FromJSON RepricingRuleType where
    parseJSON = parseJSONText "RepricingRuleType"

instance ToJSON RepricingRuleType where
    toJSON = toJSONText

-- | Output only. The type of this label.
data AccountLabelLabelType
    = LabelTypeUnspecified
      -- ^ @LABEL_TYPE_UNSPECIFIED@
      -- Unknown label type.
    | Manual
      -- ^ @MANUAL@
      -- Indicates that the label was created manually.
    | Automatic
      -- ^ @AUTOMATIC@
      -- Indicates that the label was created automatically by CSS Center.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccountLabelLabelType

instance FromHttpApiData AccountLabelLabelType where
    parseQueryParam = \case
        "LABEL_TYPE_UNSPECIFIED" -> Right LabelTypeUnspecified
        "MANUAL" -> Right Manual
        "AUTOMATIC" -> Right Automatic
        x -> Left ("Unable to parse AccountLabelLabelType from: " <> x)

instance ToHttpApiData AccountLabelLabelType where
    toQueryParam = \case
        LabelTypeUnspecified -> "LABEL_TYPE_UNSPECIFIED"
        Manual -> "MANUAL"
        Automatic -> "AUTOMATIC"

instance FromJSON AccountLabelLabelType where
    parseJSON = parseJSONText "AccountLabelLabelType"

instance ToJSON AccountLabelLabelType where
    toJSON = toJSONText
