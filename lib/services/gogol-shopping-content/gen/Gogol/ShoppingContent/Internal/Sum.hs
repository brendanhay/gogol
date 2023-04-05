{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ShoppingContent.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AccountCredentials_Purpose
    AccountCredentials_Purpose
      ( AccountCredentials_Purpose_ACCOUNTCREDENTIALSPURPOSEUNSPECIFIED,
        AccountCredentials_Purpose_SHOPIFYORDERMANAGEMENT,
        AccountCredentials_Purpose_SHOPIFYINTEGRATION,
        ..
      ),

    -- * AccountLabel_LabelType
    AccountLabel_LabelType
      ( AccountLabel_LabelType_LABELTYPEUNSPECIFIED,
        AccountLabel_LabelType_Manual,
        AccountLabel_LabelType_Automatic,
        ..
      ),

    -- * AccountReturnCarrier_CarrierCode
    AccountReturnCarrier_CarrierCode
      ( AccountReturnCarrier_CarrierCode_CARRIERCODEUNSPECIFIED,
        AccountReturnCarrier_CarrierCode_Fedex,
        AccountReturnCarrier_CarrierCode_Ups,
        ..
      ),

    -- * AttributionSettings_AttributionModel
    AttributionSettings_AttributionModel
      ( AttributionSettings_AttributionModel_ATTRIBUTIONMODELUNSPECIFIED,
        AttributionSettings_AttributionModel_CROSSCHANNELLASTCLICK,
        AttributionSettings_AttributionModel_ADSPREFERREDLASTCLICK,
        AttributionSettings_AttributionModel_CROSSCHANNELDATADRIVEN,
        AttributionSettings_AttributionModel_CROSSCHANNELFIRSTCLICK,
        AttributionSettings_AttributionModel_CROSSCHANNELLINEAR,
        AttributionSettings_AttributionModel_CROSSCHANNELPOSITIONBASED,
        AttributionSettings_AttributionModel_CROSSCHANNELTIMEDECAY,
        ..
      ),

    -- * BestSellers_PreviousRelativeDemand
    BestSellers_PreviousRelativeDemand
      ( BestSellers_PreviousRelativeDemand_RELATIVEDEMANDUNSPECIFIED,
        BestSellers_PreviousRelativeDemand_VERYLOW,
        BestSellers_PreviousRelativeDemand_Low,
        BestSellers_PreviousRelativeDemand_Medium,
        BestSellers_PreviousRelativeDemand_High,
        BestSellers_PreviousRelativeDemand_VERYHIGH,
        ..
      ),

    -- * BestSellers_RelativeDemand
    BestSellers_RelativeDemand
      ( BestSellers_RelativeDemand_RELATIVEDEMANDUNSPECIFIED,
        BestSellers_RelativeDemand_VERYLOW,
        BestSellers_RelativeDemand_Low,
        BestSellers_RelativeDemand_Medium,
        BestSellers_RelativeDemand_High,
        BestSellers_RelativeDemand_VERYHIGH,
        ..
      ),

    -- * BestSellers_RelativeDemandChange
    BestSellers_RelativeDemandChange
      ( BestSellers_RelativeDemandChange_RELATIVEDEMANDCHANGETYPEUNSPECIFIED,
        BestSellers_RelativeDemandChange_Sinker,
        BestSellers_RelativeDemandChange_Flat,
        BestSellers_RelativeDemandChange_Riser,
        ..
      ),

    -- * BestSellers_ReportGranularity
    BestSellers_ReportGranularity
      ( BestSellers_ReportGranularity_REPORTGRANULARITYUNSPECIFIED,
        BestSellers_ReportGranularity_Weekly,
        BestSellers_ReportGranularity_Monthly,
        ..
      ),

    -- * BuyOnGoogleProgramStatus_BusinessModelItem
    BuyOnGoogleProgramStatus_BusinessModelItem
      ( BuyOnGoogleProgramStatus_BusinessModelItem_BUSINESSMODELUNSPECIFIED,
        BuyOnGoogleProgramStatus_BusinessModelItem_Manufacturer,
        BuyOnGoogleProgramStatus_BusinessModelItem_Importer,
        BuyOnGoogleProgramStatus_BusinessModelItem_Reseller,
        BuyOnGoogleProgramStatus_BusinessModelItem_Other,
        ..
      ),

    -- * BuyOnGoogleProgramStatus_OnlineSalesChannel
    BuyOnGoogleProgramStatus_OnlineSalesChannel
      ( BuyOnGoogleProgramStatus_OnlineSalesChannel_ONLINESALESCHANNELUNSPECIFIED,
        BuyOnGoogleProgramStatus_OnlineSalesChannel_GOOGLEEXCLUSIVE,
        BuyOnGoogleProgramStatus_OnlineSalesChannel_GOOGLEANDOTHERWEBSITES,
        ..
      ),

    -- * BuyOnGoogleProgramStatus_ParticipationStage
    BuyOnGoogleProgramStatus_ParticipationStage
      ( BuyOnGoogleProgramStatus_ParticipationStage_PROGRAMPARTICIPATIONSTAGEUNSPECIFIED,
        BuyOnGoogleProgramStatus_ParticipationStage_NOTELIGIBLE,
        BuyOnGoogleProgramStatus_ParticipationStage_Eligible,
        BuyOnGoogleProgramStatus_ParticipationStage_Onboarding,
        BuyOnGoogleProgramStatus_ParticipationStage_ELIGIBLEFORREVIEW,
        BuyOnGoogleProgramStatus_ParticipationStage_PENDINGREVIEW,
        BuyOnGoogleProgramStatus_ParticipationStage_REVIEWDISAPPROVED,
        BuyOnGoogleProgramStatus_ParticipationStage_Active,
        BuyOnGoogleProgramStatus_ParticipationStage_Paused,
        ..
      ),

    -- * CaptureOrderResponse_ExecutionStatus
    CaptureOrderResponse_ExecutionStatus
      ( CaptureOrderResponse_ExecutionStatus_EXECUTIONSTATUSUNSPECIFIED,
        CaptureOrderResponse_ExecutionStatus_Executed,
        CaptureOrderResponse_ExecutionStatus_Duplicate,
        ..
      ),

    -- * ConversionSource_State
    ConversionSource_State
      ( ConversionSource_State_STATEUNSPECIFIED,
        ConversionSource_State_Active,
        ConversionSource_State_Archived,
        ConversionSource_State_Pending,
        ..
      ),

    -- * FreeListingsProgramStatus_GlobalState
    FreeListingsProgramStatus_GlobalState
      ( FreeListingsProgramStatus_GlobalState_PROGRAMSTATEUNSPECIFIED,
        FreeListingsProgramStatus_GlobalState_NOTENABLED,
        FreeListingsProgramStatus_GlobalState_NOOFFERSUPLOADED,
        FreeListingsProgramStatus_GlobalState_Enabled,
        ..
      ),

    -- * FreeListingsProgramStatusRegionStatus_EligibilityStatus
    FreeListingsProgramStatusRegionStatus_EligibilityStatus
      ( FreeListingsProgramStatusRegionStatus_EligibilityStatus_STATEUNSPECIFIED,
        FreeListingsProgramStatusRegionStatus_EligibilityStatus_Approved,
        FreeListingsProgramStatusRegionStatus_EligibilityStatus_Disapproved,
        FreeListingsProgramStatusRegionStatus_EligibilityStatus_Warning,
        FreeListingsProgramStatusRegionStatus_EligibilityStatus_UNDERREVIEW,
        FreeListingsProgramStatusRegionStatus_EligibilityStatus_PENDINGREVIEW,
        FreeListingsProgramStatusRegionStatus_EligibilityStatus_Onboarding,
        ..
      ),

    -- * FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
    FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
      ( FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_REVIEWELIGIBILITYUNSPECIFIED,
        FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_Eligible,
        FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_Ineligible,
        ..
      ),

    -- * FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
    FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
      ( FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_REVIEWINELIGIBILITYREASONUNSPECIFIED,
        FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ONBOARDINGISSUES,
        FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_NOTENOUGHOFFERS,
        FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_INCOOLDOWNPERIOD,
        FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYUNDERREVIEW,
        FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_NOREVIEWREQUIRED,
        FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_WILLBEREVIEWEDAUTOMATICALLY,
        FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ISRETIRED,
        FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYREVIEWED,
        ..
      ),

    -- * InapplicabilityDetails_InapplicableReason
    InapplicabilityDetails_InapplicableReason
      ( InapplicabilityDetails_InapplicableReason_INAPPLICABLEREASONUNSPECIFIED,
        InapplicabilityDetails_InapplicableReason_CANNOTBEATBUYBOXWINNER,
        InapplicabilityDetails_InapplicableReason_ALREADYWINNINGBUYBOX,
        InapplicabilityDetails_InapplicableReason_TRIUMPHEDOVERBYSAMETYPERULE,
        InapplicabilityDetails_InapplicableReason_TRIUMPHEDOVERBYOTHERRULEONOFFER,
        InapplicabilityDetails_InapplicableReason_RESTRICTIONSNOTMET,
        InapplicabilityDetails_InapplicableReason_Uncategorized,
        InapplicabilityDetails_InapplicableReason_INVALIDAUTOPRICEMIN,
        InapplicabilityDetails_InapplicableReason_INVALIDFLOORCONFIG,
        ..
      ),

    -- * OrderTrackingSignalShippingInfo_ShippingStatus
    OrderTrackingSignalShippingInfo_ShippingStatus
      ( OrderTrackingSignalShippingInfo_ShippingStatus_SHIPPINGSTATEUNSPECIFIED,
        OrderTrackingSignalShippingInfo_ShippingStatus_Shipped,
        OrderTrackingSignalShippingInfo_ShippingStatus_Delivered,
        ..
      ),

    -- * ProductCluster_BrandInventoryStatus
    ProductCluster_BrandInventoryStatus
      ( ProductCluster_BrandInventoryStatus_INVENTORYSTATUSUNSPECIFIED,
        ProductCluster_BrandInventoryStatus_INSTOCK,
        ProductCluster_BrandInventoryStatus_OUTOFSTOCK,
        ProductCluster_BrandInventoryStatus_NOTININVENTORY,
        ..
      ),

    -- * ProductCluster_InventoryStatus
    ProductCluster_InventoryStatus
      ( ProductCluster_InventoryStatus_INVENTORYSTATUSUNSPECIFIED,
        ProductCluster_InventoryStatus_INSTOCK,
        ProductCluster_InventoryStatus_OUTOFSTOCK,
        ProductCluster_InventoryStatus_NOTININVENTORY,
        ..
      ),

    -- * ProductView_AggregatedDestinationStatus
    ProductView_AggregatedDestinationStatus
      ( ProductView_AggregatedDestinationStatus_AGGREGATEDSTATUSUNSPECIFIED,
        ProductView_AggregatedDestinationStatus_NOTELIGIBLEORDISAPPROVED,
        ProductView_AggregatedDestinationStatus_Pending,
        ProductView_AggregatedDestinationStatus_ELIGIBLELIMITED,
        ProductView_AggregatedDestinationStatus_Eligible,
        ..
      ),

    -- * ProductView_Channel
    ProductView_Channel
      ( ProductView_Channel_CHANNELUNSPECIFIED,
        ProductView_Channel_Local,
        ProductView_Channel_Online,
        ..
      ),

    -- * ProductViewItemIssue_Resolution
    ProductViewItemIssue_Resolution
      ( ProductViewItemIssue_Resolution_Unknown,
        ProductViewItemIssue_Resolution_MERCHANTACTION,
        ProductViewItemIssue_Resolution_PENDINGPROCESSING,
        ..
      ),

    -- * ProductViewItemIssueItemIssueSeverity_AggregatedSeverity
    ProductViewItemIssueItemIssueSeverity_AggregatedSeverity
      ( ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_AGGREGATEDISSUESEVERITYUNSPECIFIED,
        ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Disapproved,
        ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Demoted,
        ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Pending,
        ..
      ),

    -- * Promotion_CouponValueType
    Promotion_CouponValueType
      ( Promotion_CouponValueType_COUPONVALUETYPEUNSPECIFIED,
        Promotion_CouponValueType_MONEYOFF,
        Promotion_CouponValueType_PERCENTOFF,
        Promotion_CouponValueType_BUYMGETNMONEYOFF,
        Promotion_CouponValueType_BUYMGETNPERCENTOFF,
        Promotion_CouponValueType_BUYMGETMONEYOFF,
        Promotion_CouponValueType_BUYMGETPERCENTOFF,
        Promotion_CouponValueType_FREEGIFT,
        Promotion_CouponValueType_FREEGIFTWITHVALUE,
        Promotion_CouponValueType_FREEGIFTWITHITEMID,
        Promotion_CouponValueType_FREESHIPPINGSTANDARD,
        Promotion_CouponValueType_FREESHIPPINGOVERNIGHT,
        Promotion_CouponValueType_FREESHIPPINGTWODAY,
        ..
      ),

    -- * Promotion_OfferType
    Promotion_OfferType
      ( Promotion_OfferType_OFFERTYPEUNSPECIFIED,
        Promotion_OfferType_NOCODE,
        Promotion_OfferType_GENERICCODE,
        ..
      ),

    -- * Promotion_ProductApplicability
    Promotion_ProductApplicability
      ( Promotion_ProductApplicability_PRODUCTAPPLICABILITYUNSPECIFIED,
        Promotion_ProductApplicability_ALLPRODUCTS,
        Promotion_ProductApplicability_SPECIFICPRODUCTS,
        ..
      ),

    -- * Promotion_RedemptionChannelItem
    Promotion_RedemptionChannelItem
      ( Promotion_RedemptionChannelItem_REDEMPTIONCHANNELUNSPECIFIED,
        Promotion_RedemptionChannelItem_INSTORE,
        Promotion_RedemptionChannelItem_Online,
        ..
      ),

    -- * Promotion_StoreApplicability
    Promotion_StoreApplicability
      ( Promotion_StoreApplicability_STOREAPPLICABILITYUNSPECIFIED,
        Promotion_StoreApplicability_ALLSTORES,
        Promotion_StoreApplicability_SPECIFICSTORES,
        ..
      ),

    -- * PromotionPromotionStatusDestinationStatus_Status
    PromotionPromotionStatusDestinationStatus_Status
      ( PromotionPromotionStatusDestinationStatus_Status_STATEUNSPECIFIED,
        PromotionPromotionStatusDestinationStatus_Status_INREVIEW,
        PromotionPromotionStatusDestinationStatus_Status_Rejected,
        PromotionPromotionStatusDestinationStatus_Status_Live,
        PromotionPromotionStatusDestinationStatus_Status_Stopped,
        PromotionPromotionStatusDestinationStatus_Status_Expired,
        PromotionPromotionStatusDestinationStatus_Status_Pending,
        ..
      ),

    -- * RecommendationCreative_Type
    RecommendationCreative_Type
      ( RecommendationCreative_Type_CREATIVETYPEUNSPECIFIED,
        RecommendationCreative_Type_Video,
        RecommendationCreative_Type_Photo,
        ..
      ),

    -- * RecommendationDescription_Type
    RecommendationDescription_Type
      ( RecommendationDescription_Type_DESCRIPTIONTYPEUNSPECIFIED,
        RecommendationDescription_Type_Short,
        RecommendationDescription_Type_Long,
        ..
      ),

    -- * ReportInteractionRequest_InteractionType
    ReportInteractionRequest_InteractionType
      ( ReportInteractionRequest_InteractionType_INTERACTIONTYPEUNSPECIFIED,
        ReportInteractionRequest_InteractionType_INTERACTIONCLICK,
        ..
      ),

    -- * RepricingProductReport_Type
    RepricingProductReport_Type
      ( RepricingProductReport_Type_REPRICINGRULETYPEUNSPECIFIED,
        RepricingProductReport_Type_TYPESTATSBASED,
        RepricingProductReport_Type_TYPECOGSBASED,
        RepricingProductReport_Type_TYPESALESVOLUMEBASED,
        RepricingProductReport_Type_TYPECOMPETITIVEPRICE,
        ..
      ),

    -- * RepricingRule_Type
    RepricingRule_Type
      ( RepricingRule_Type_REPRICINGRULETYPEUNSPECIFIED,
        RepricingRule_Type_TYPESTATSBASED,
        RepricingRule_Type_TYPECOGSBASED,
        RepricingRule_Type_TYPESALESVOLUMEBASED,
        RepricingRule_Type_TYPECOMPETITIVEPRICE,
        ..
      ),

    -- * RepricingRuleEligibleOfferMatcher_MatcherOption
    RepricingRuleEligibleOfferMatcher_MatcherOption
      ( RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONUNSPECIFIED,
        RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONCUSTOMFILTER,
        RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONUSEFEEDATTRIBUTE,
        RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONALLPRODUCTS,
        ..
      ),

    -- * RepricingRuleReport_Type
    RepricingRuleReport_Type
      ( RepricingRuleReport_Type_REPRICINGRULETYPEUNSPECIFIED,
        RepricingRuleReport_Type_TYPESTATSBASED,
        RepricingRuleReport_Type_TYPECOGSBASED,
        RepricingRuleReport_Type_TYPESALESVOLUMEBASED,
        RepricingRuleReport_Type_TYPECOMPETITIVEPRICE,
        ..
      ),

    -- * RequestPhoneVerificationRequest_PhoneVerificationMethod
    RequestPhoneVerificationRequest_PhoneVerificationMethod
      ( RequestPhoneVerificationRequest_PhoneVerificationMethod_PHONEVERIFICATIONMETHODUNSPECIFIED,
        RequestPhoneVerificationRequest_PhoneVerificationMethod_Sms,
        RequestPhoneVerificationRequest_PhoneVerificationMethod_PHONECALL,
        ..
      ),

    -- * ReturnPolicyOnline_ItemConditionsItem
    ReturnPolicyOnline_ItemConditionsItem
      ( ReturnPolicyOnline_ItemConditionsItem_ITEMCONDITIONUNSPECIFIED,
        ReturnPolicyOnline_ItemConditionsItem_New,
        ReturnPolicyOnline_ItemConditionsItem_Used,
        ..
      ),

    -- * ReturnPolicyOnline_ReturnMethodsItem
    ReturnPolicyOnline_ReturnMethodsItem
      ( ReturnPolicyOnline_ReturnMethodsItem_RETURNMETHODUNSPECIFIED,
        ReturnPolicyOnline_ReturnMethodsItem_BYMAIL,
        ReturnPolicyOnline_ReturnMethodsItem_INSTORE,
        ReturnPolicyOnline_ReturnMethodsItem_ATAKIOSK,
        ..
      ),

    -- * ReturnPolicyOnlinePolicy_Type
    ReturnPolicyOnlinePolicy_Type
      ( ReturnPolicyOnlinePolicy_Type_TYPEUNSPECIFIED,
        ReturnPolicyOnlinePolicy_Type_NUMBEROFDAYSAFTERDELIVERY,
        ReturnPolicyOnlinePolicy_Type_NORETURNS,
        ReturnPolicyOnlinePolicy_Type_LIFETIMERETURNS,
        ..
      ),

    -- * ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
    ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
      ( ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_RETURNLABELSOURCEUNSPECIFIED,
        ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_DOWNLOADANDPRINT,
        ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_INTHEBOX,
        ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_CUSTOMERRESPONSIBILITY,
        ..
      ),

    -- * ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory
    ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory
      ( ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_RETURNREASONCATEGORYUNSPECIFIED,
        ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_BUYERREMORSE,
        ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_ITEMDEFECT,
        ..
      ),

    -- * ReturnPolicyOnlineReturnShippingFee_Type
    ReturnPolicyOnlineReturnShippingFee_Type
      ( ReturnPolicyOnlineReturnShippingFee_Type_TYPEUNSPECIFIED,
        ReturnPolicyOnlineReturnShippingFee_Type_Fixed,
        ReturnPolicyOnlineReturnShippingFee_Type_CUSTOMERPAYINGACTUALFEE,
        ..
      ),

    -- * Segments_Program
    Segments_Program
      ( Segments_Program_PROGRAMUNSPECIFIED,
        Segments_Program_SHOPPINGADS,
        Segments_Program_FREEPRODUCTLISTING,
        Segments_Program_FREELOCALPRODUCTLISTING,
        Segments_Program_BUYONGOOGLELISTING,
        ..
      ),

    -- * ShoppingAdsProgramStatus_GlobalState
    ShoppingAdsProgramStatus_GlobalState
      ( ShoppingAdsProgramStatus_GlobalState_PROGRAMSTATEUNSPECIFIED,
        ShoppingAdsProgramStatus_GlobalState_NOTENABLED,
        ShoppingAdsProgramStatus_GlobalState_NOOFFERSUPLOADED,
        ShoppingAdsProgramStatus_GlobalState_Enabled,
        ..
      ),

    -- * ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
    ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
      ( ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_STATEUNSPECIFIED,
        ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Approved,
        ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Disapproved,
        ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Warning,
        ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_UNDERREVIEW,
        ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_PENDINGREVIEW,
        ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Onboarding,
        ..
      ),

    -- * ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
    ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
      ( ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_REVIEWELIGIBILITYUNSPECIFIED,
        ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_Eligible,
        ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_Ineligible,
        ..
      ),

    -- * ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
    ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
      ( ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_REVIEWINELIGIBILITYREASONUNSPECIFIED,
        ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ONBOARDINGISSUES,
        ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_NOTENOUGHOFFERS,
        ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_INCOOLDOWNPERIOD,
        ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYUNDERREVIEW,
        ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_NOREVIEWREQUIRED,
        ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_WILLBEREVIEWEDAUTOMATICALLY,
        ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ISRETIRED,
        ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYREVIEWED,
        ..
      ),

    -- * VerifyPhoneNumberRequest_PhoneVerificationMethod
    VerifyPhoneNumberRequest_PhoneVerificationMethod
      ( VerifyPhoneNumberRequest_PhoneVerificationMethod_PHONEVERIFICATIONMETHODUNSPECIFIED,
        VerifyPhoneNumberRequest_PhoneVerificationMethod_Sms,
        VerifyPhoneNumberRequest_PhoneVerificationMethod_PHONECALL,
        ..
      ),

    -- * AccountsGetView
    AccountsGetView
      ( AccountsGetView_Merchant,
        AccountsGetView_Css,
        ..
      ),

    -- * AccountsListView
    AccountsListView
      ( AccountsListView_Merchant,
        AccountsListView_Css,
        ..
      ),

    -- * OrderreturnsListOrderBy
    OrderreturnsListOrderBy
      ( OrderreturnsListOrderBy_RETURNCREATIONTIMEDESC,
        OrderreturnsListOrderBy_RETURNCREATIONTIMEASC,
        ..
      ),

    -- * OrderreturnsListShipmentStates
    OrderreturnsListShipmentStates
      ( OrderreturnsListShipmentStates_New,
        OrderreturnsListShipmentStates_Shipped,
        OrderreturnsListShipmentStates_Completed,
        OrderreturnsListShipmentStates_Undeliverable,
        OrderreturnsListShipmentStates_Pending,
        ..
      ),

    -- * OrderreturnsListShipmentStatus
    OrderreturnsListShipmentStatus
      ( OrderreturnsListShipmentStatus_New,
        OrderreturnsListShipmentStatus_INPROGRESS,
        OrderreturnsListShipmentStatus_Processed,
        ..
      ),

    -- * OrderreturnsListShipmentTypes
    OrderreturnsListShipmentTypes
      ( OrderreturnsListShipmentTypes_BYMAIL,
        OrderreturnsListShipmentTypes_Returnless,
        OrderreturnsListShipmentTypes_CONTACTCUSTOMERSUPPORT,
        ..
      ),

    -- * OrdersGettestordertemplateTemplateName
    OrdersGettestordertemplateTemplateName
      ( OrdersGettestordertemplateTemplateName_TEMPLATE1,
        OrdersGettestordertemplateTemplateName_TEMPLATE2,
        OrdersGettestordertemplateTemplateName_TEMPLATE1A,
        OrdersGettestordertemplateTemplateName_TEMPLATE1B,
        OrdersGettestordertemplateTemplateName_TEMPLATE3,
        OrdersGettestordertemplateTemplateName_TEMPLATE4,
        ..
      ),

    -- * OrdersListStatuses
    OrdersListStatuses
      ( OrdersListStatuses_Active,
        OrdersListStatuses_Completed,
        OrdersListStatuses_Canceled,
        OrdersListStatuses_INPROGRESS,
        OrdersListStatuses_PENDINGSHIPMENT,
        OrdersListStatuses_PARTIALLYSHIPPED,
        OrdersListStatuses_Shipped,
        OrdersListStatuses_PARTIALLYDELIVERED,
        OrdersListStatuses_Delivered,
        OrdersListStatuses_PARTIALLYRETURNED,
        OrdersListStatuses_Returned,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Indicates to Google how Google should use these OAuth tokens.
newtype AccountCredentials_Purpose = AccountCredentials_Purpose {fromAccountCredentials_Purpose :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown purpose.
pattern AccountCredentials_Purpose_ACCOUNTCREDENTIALSPURPOSEUNSPECIFIED :: AccountCredentials_Purpose
pattern AccountCredentials_Purpose_ACCOUNTCREDENTIALSPURPOSEUNSPECIFIED = AccountCredentials_Purpose "ACCOUNT_CREDENTIALS_PURPOSE_UNSPECIFIED"

-- | The credentials allow Google to manage Shopify orders on behalf of the merchant (deprecated).
pattern AccountCredentials_Purpose_SHOPIFYORDERMANAGEMENT :: AccountCredentials_Purpose
pattern AccountCredentials_Purpose_SHOPIFYORDERMANAGEMENT = AccountCredentials_Purpose "SHOPIFY_ORDER_MANAGEMENT"

-- | The credentials allow Google to manage Shopify integration on behalf of the merchant.
pattern AccountCredentials_Purpose_SHOPIFYINTEGRATION :: AccountCredentials_Purpose
pattern AccountCredentials_Purpose_SHOPIFYINTEGRATION = AccountCredentials_Purpose "SHOPIFY_INTEGRATION"

{-# COMPLETE
  AccountCredentials_Purpose_ACCOUNTCREDENTIALSPURPOSEUNSPECIFIED,
  AccountCredentials_Purpose_SHOPIFYORDERMANAGEMENT,
  AccountCredentials_Purpose_SHOPIFYINTEGRATION,
  AccountCredentials_Purpose
  #-}

-- | Output only. The type of this label.
newtype AccountLabel_LabelType = AccountLabel_LabelType {fromAccountLabel_LabelType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown label type.
pattern AccountLabel_LabelType_LABELTYPEUNSPECIFIED :: AccountLabel_LabelType
pattern AccountLabel_LabelType_LABELTYPEUNSPECIFIED = AccountLabel_LabelType "LABEL_TYPE_UNSPECIFIED"

-- | Indicates that the label was created manually.
pattern AccountLabel_LabelType_Manual :: AccountLabel_LabelType
pattern AccountLabel_LabelType_Manual = AccountLabel_LabelType "MANUAL"

-- | Indicates that the label was created automatically by CSS Center.
pattern AccountLabel_LabelType_Automatic :: AccountLabel_LabelType
pattern AccountLabel_LabelType_Automatic = AccountLabel_LabelType "AUTOMATIC"

{-# COMPLETE
  AccountLabel_LabelType_LABELTYPEUNSPECIFIED,
  AccountLabel_LabelType_Manual,
  AccountLabel_LabelType_Automatic,
  AccountLabel_LabelType
  #-}

-- | The carrier code enum. Accepts the values FEDEX or UPS.
newtype AccountReturnCarrier_CarrierCode = AccountReturnCarrier_CarrierCode {fromAccountReturnCarrier_CarrierCode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Carrier not specified
pattern AccountReturnCarrier_CarrierCode_CARRIERCODEUNSPECIFIED :: AccountReturnCarrier_CarrierCode
pattern AccountReturnCarrier_CarrierCode_CARRIERCODEUNSPECIFIED = AccountReturnCarrier_CarrierCode "CARRIER_CODE_UNSPECIFIED"

-- | FedEx carrier
pattern AccountReturnCarrier_CarrierCode_Fedex :: AccountReturnCarrier_CarrierCode
pattern AccountReturnCarrier_CarrierCode_Fedex = AccountReturnCarrier_CarrierCode "FEDEX"

-- | UPS carrier
pattern AccountReturnCarrier_CarrierCode_Ups :: AccountReturnCarrier_CarrierCode
pattern AccountReturnCarrier_CarrierCode_Ups = AccountReturnCarrier_CarrierCode "UPS"

{-# COMPLETE
  AccountReturnCarrier_CarrierCode_CARRIERCODEUNSPECIFIED,
  AccountReturnCarrier_CarrierCode_Fedex,
  AccountReturnCarrier_CarrierCode_Ups,
  AccountReturnCarrier_CarrierCode
  #-}

-- | Required. Attribution model.
newtype AttributionSettings_AttributionModel = AttributionSettings_AttributionModel {fromAttributionSettings_AttributionModel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern AttributionSettings_AttributionModel_ATTRIBUTIONMODELUNSPECIFIED :: AttributionSettings_AttributionModel
pattern AttributionSettings_AttributionModel_ATTRIBUTIONMODELUNSPECIFIED = AttributionSettings_AttributionModel "ATTRIBUTION_MODEL_UNSPECIFIED"

-- | Cross-channel Last Click model.
pattern AttributionSettings_AttributionModel_CROSSCHANNELLASTCLICK :: AttributionSettings_AttributionModel
pattern AttributionSettings_AttributionModel_CROSSCHANNELLASTCLICK = AttributionSettings_AttributionModel "CROSS_CHANNEL_LAST_CLICK"

-- | Ads-preferred Last Click model.
pattern AttributionSettings_AttributionModel_ADSPREFERREDLASTCLICK :: AttributionSettings_AttributionModel
pattern AttributionSettings_AttributionModel_ADSPREFERREDLASTCLICK = AttributionSettings_AttributionModel "ADS_PREFERRED_LAST_CLICK"

-- | Cross-channel Data Driven model.
pattern AttributionSettings_AttributionModel_CROSSCHANNELDATADRIVEN :: AttributionSettings_AttributionModel
pattern AttributionSettings_AttributionModel_CROSSCHANNELDATADRIVEN = AttributionSettings_AttributionModel "CROSS_CHANNEL_DATA_DRIVEN"

-- | Cross-channel Frist Click model.
pattern AttributionSettings_AttributionModel_CROSSCHANNELFIRSTCLICK :: AttributionSettings_AttributionModel
pattern AttributionSettings_AttributionModel_CROSSCHANNELFIRSTCLICK = AttributionSettings_AttributionModel "CROSS_CHANNEL_FIRST_CLICK"

-- | Cross-channel Linear model.
pattern AttributionSettings_AttributionModel_CROSSCHANNELLINEAR :: AttributionSettings_AttributionModel
pattern AttributionSettings_AttributionModel_CROSSCHANNELLINEAR = AttributionSettings_AttributionModel "CROSS_CHANNEL_LINEAR"

-- | Cross-channel Position Based model.
pattern AttributionSettings_AttributionModel_CROSSCHANNELPOSITIONBASED :: AttributionSettings_AttributionModel
pattern AttributionSettings_AttributionModel_CROSSCHANNELPOSITIONBASED = AttributionSettings_AttributionModel "CROSS_CHANNEL_POSITION_BASED"

-- | Cross-channel Time Decay model.
pattern AttributionSettings_AttributionModel_CROSSCHANNELTIMEDECAY :: AttributionSettings_AttributionModel
pattern AttributionSettings_AttributionModel_CROSSCHANNELTIMEDECAY = AttributionSettings_AttributionModel "CROSS_CHANNEL_TIME_DECAY"

{-# COMPLETE
  AttributionSettings_AttributionModel_ATTRIBUTIONMODELUNSPECIFIED,
  AttributionSettings_AttributionModel_CROSSCHANNELLASTCLICK,
  AttributionSettings_AttributionModel_ADSPREFERREDLASTCLICK,
  AttributionSettings_AttributionModel_CROSSCHANNELDATADRIVEN,
  AttributionSettings_AttributionModel_CROSSCHANNELFIRSTCLICK,
  AttributionSettings_AttributionModel_CROSSCHANNELLINEAR,
  AttributionSettings_AttributionModel_CROSSCHANNELPOSITIONBASED,
  AttributionSettings_AttributionModel_CROSSCHANNELTIMEDECAY,
  AttributionSettings_AttributionModel
  #-}

-- | Estimated demand in relation to the item with the highest popularity rank in the same category and country in the previous week or month.
newtype BestSellers_PreviousRelativeDemand = BestSellers_PreviousRelativeDemand {fromBestSellers_PreviousRelativeDemand :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Relative demand is unknown.
pattern BestSellers_PreviousRelativeDemand_RELATIVEDEMANDUNSPECIFIED :: BestSellers_PreviousRelativeDemand
pattern BestSellers_PreviousRelativeDemand_RELATIVEDEMANDUNSPECIFIED = BestSellers_PreviousRelativeDemand "RELATIVE_DEMAND_UNSPECIFIED"

-- | Demand is 0-5% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_PreviousRelativeDemand_VERYLOW :: BestSellers_PreviousRelativeDemand
pattern BestSellers_PreviousRelativeDemand_VERYLOW = BestSellers_PreviousRelativeDemand "VERY_LOW"

-- | Demand is 6-10% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_PreviousRelativeDemand_Low :: BestSellers_PreviousRelativeDemand
pattern BestSellers_PreviousRelativeDemand_Low = BestSellers_PreviousRelativeDemand "LOW"

-- | Demand is 11-20% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_PreviousRelativeDemand_Medium :: BestSellers_PreviousRelativeDemand
pattern BestSellers_PreviousRelativeDemand_Medium = BestSellers_PreviousRelativeDemand "MEDIUM"

-- | Demand is 21-50% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_PreviousRelativeDemand_High :: BestSellers_PreviousRelativeDemand
pattern BestSellers_PreviousRelativeDemand_High = BestSellers_PreviousRelativeDemand "HIGH"

-- | Demand is 51-100% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_PreviousRelativeDemand_VERYHIGH :: BestSellers_PreviousRelativeDemand
pattern BestSellers_PreviousRelativeDemand_VERYHIGH = BestSellers_PreviousRelativeDemand "VERY_HIGH"

{-# COMPLETE
  BestSellers_PreviousRelativeDemand_RELATIVEDEMANDUNSPECIFIED,
  BestSellers_PreviousRelativeDemand_VERYLOW,
  BestSellers_PreviousRelativeDemand_Low,
  BestSellers_PreviousRelativeDemand_Medium,
  BestSellers_PreviousRelativeDemand_High,
  BestSellers_PreviousRelativeDemand_VERYHIGH,
  BestSellers_PreviousRelativeDemand
  #-}

-- | Estimated demand in relation to the item with the highest popularity rank in the same category and country.
newtype BestSellers_RelativeDemand = BestSellers_RelativeDemand {fromBestSellers_RelativeDemand :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Relative demand is unknown.
pattern BestSellers_RelativeDemand_RELATIVEDEMANDUNSPECIFIED :: BestSellers_RelativeDemand
pattern BestSellers_RelativeDemand_RELATIVEDEMANDUNSPECIFIED = BestSellers_RelativeDemand "RELATIVE_DEMAND_UNSPECIFIED"

-- | Demand is 0-5% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_RelativeDemand_VERYLOW :: BestSellers_RelativeDemand
pattern BestSellers_RelativeDemand_VERYLOW = BestSellers_RelativeDemand "VERY_LOW"

-- | Demand is 6-10% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_RelativeDemand_Low :: BestSellers_RelativeDemand
pattern BestSellers_RelativeDemand_Low = BestSellers_RelativeDemand "LOW"

-- | Demand is 11-20% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_RelativeDemand_Medium :: BestSellers_RelativeDemand
pattern BestSellers_RelativeDemand_Medium = BestSellers_RelativeDemand "MEDIUM"

-- | Demand is 21-50% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_RelativeDemand_High :: BestSellers_RelativeDemand
pattern BestSellers_RelativeDemand_High = BestSellers_RelativeDemand "HIGH"

-- | Demand is 51-100% of the demand of the highest ranked product clusters or brands.
pattern BestSellers_RelativeDemand_VERYHIGH :: BestSellers_RelativeDemand
pattern BestSellers_RelativeDemand_VERYHIGH = BestSellers_RelativeDemand "VERY_HIGH"

{-# COMPLETE
  BestSellers_RelativeDemand_RELATIVEDEMANDUNSPECIFIED,
  BestSellers_RelativeDemand_VERYLOW,
  BestSellers_RelativeDemand_Low,
  BestSellers_RelativeDemand_Medium,
  BestSellers_RelativeDemand_High,
  BestSellers_RelativeDemand_VERYHIGH,
  BestSellers_RelativeDemand
  #-}

-- | Change in the estimated demand. Whether it rose, sank or remained flat.
newtype BestSellers_RelativeDemandChange = BestSellers_RelativeDemandChange {fromBestSellers_RelativeDemandChange :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Relative demand change is unknown.
pattern BestSellers_RelativeDemandChange_RELATIVEDEMANDCHANGETYPEUNSPECIFIED :: BestSellers_RelativeDemandChange
pattern BestSellers_RelativeDemandChange_RELATIVEDEMANDCHANGETYPEUNSPECIFIED = BestSellers_RelativeDemandChange "RELATIVE_DEMAND_CHANGE_TYPE_UNSPECIFIED"

-- | Relative demand is lower than previous time period.
pattern BestSellers_RelativeDemandChange_Sinker :: BestSellers_RelativeDemandChange
pattern BestSellers_RelativeDemandChange_Sinker = BestSellers_RelativeDemandChange "SINKER"

-- | Relative demand is equal to previous time period.
pattern BestSellers_RelativeDemandChange_Flat :: BestSellers_RelativeDemandChange
pattern BestSellers_RelativeDemandChange_Flat = BestSellers_RelativeDemandChange "FLAT"

-- | Relative demand is higher than the previous time period.
pattern BestSellers_RelativeDemandChange_Riser :: BestSellers_RelativeDemandChange
pattern BestSellers_RelativeDemandChange_Riser = BestSellers_RelativeDemandChange "RISER"

{-# COMPLETE
  BestSellers_RelativeDemandChange_RELATIVEDEMANDCHANGETYPEUNSPECIFIED,
  BestSellers_RelativeDemandChange_Sinker,
  BestSellers_RelativeDemandChange_Flat,
  BestSellers_RelativeDemandChange_Riser,
  BestSellers_RelativeDemandChange
  #-}

-- | Granularity of the report. The ranking can be done over a week or a month timeframe. A @WHERE@ condition on @best_sellers.report_granularity@ is required in the query.
newtype BestSellers_ReportGranularity = BestSellers_ReportGranularity {fromBestSellers_ReportGranularity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Report granularity is unknown.
pattern BestSellers_ReportGranularity_REPORTGRANULARITYUNSPECIFIED :: BestSellers_ReportGranularity
pattern BestSellers_ReportGranularity_REPORTGRANULARITYUNSPECIFIED = BestSellers_ReportGranularity "REPORT_GRANULARITY_UNSPECIFIED"

-- | Ranking is done over a week timeframe.
pattern BestSellers_ReportGranularity_Weekly :: BestSellers_ReportGranularity
pattern BestSellers_ReportGranularity_Weekly = BestSellers_ReportGranularity "WEEKLY"

-- | Ranking is done over a month timeframe.
pattern BestSellers_ReportGranularity_Monthly :: BestSellers_ReportGranularity
pattern BestSellers_ReportGranularity_Monthly = BestSellers_ReportGranularity "MONTHLY"

{-# COMPLETE
  BestSellers_ReportGranularity_REPORTGRANULARITYUNSPECIFIED,
  BestSellers_ReportGranularity_Weekly,
  BestSellers_ReportGranularity_Monthly,
  BestSellers_ReportGranularity
  #-}

newtype BuyOnGoogleProgramStatus_BusinessModelItem = BuyOnGoogleProgramStatus_BusinessModelItem {fromBuyOnGoogleProgramStatus_BusinessModelItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value when business model is not set.
pattern BuyOnGoogleProgramStatus_BusinessModelItem_BUSINESSMODELUNSPECIFIED :: BuyOnGoogleProgramStatus_BusinessModelItem
pattern BuyOnGoogleProgramStatus_BusinessModelItem_BUSINESSMODELUNSPECIFIED = BuyOnGoogleProgramStatus_BusinessModelItem "BUSINESS_MODEL_UNSPECIFIED"

-- | Merchant is a manufacturer.
pattern BuyOnGoogleProgramStatus_BusinessModelItem_Manufacturer :: BuyOnGoogleProgramStatus_BusinessModelItem
pattern BuyOnGoogleProgramStatus_BusinessModelItem_Manufacturer = BuyOnGoogleProgramStatus_BusinessModelItem "MANUFACTURER"

-- | Merchant is an importer.
pattern BuyOnGoogleProgramStatus_BusinessModelItem_Importer :: BuyOnGoogleProgramStatus_BusinessModelItem
pattern BuyOnGoogleProgramStatus_BusinessModelItem_Importer = BuyOnGoogleProgramStatus_BusinessModelItem "IMPORTER"

-- | Merchant is a reseller.
pattern BuyOnGoogleProgramStatus_BusinessModelItem_Reseller :: BuyOnGoogleProgramStatus_BusinessModelItem
pattern BuyOnGoogleProgramStatus_BusinessModelItem_Reseller = BuyOnGoogleProgramStatus_BusinessModelItem "RESELLER"

-- | Merchant has a different business model.
pattern BuyOnGoogleProgramStatus_BusinessModelItem_Other :: BuyOnGoogleProgramStatus_BusinessModelItem
pattern BuyOnGoogleProgramStatus_BusinessModelItem_Other = BuyOnGoogleProgramStatus_BusinessModelItem "OTHER"

{-# COMPLETE
  BuyOnGoogleProgramStatus_BusinessModelItem_BUSINESSMODELUNSPECIFIED,
  BuyOnGoogleProgramStatus_BusinessModelItem_Manufacturer,
  BuyOnGoogleProgramStatus_BusinessModelItem_Importer,
  BuyOnGoogleProgramStatus_BusinessModelItem_Reseller,
  BuyOnGoogleProgramStatus_BusinessModelItem_Other,
  BuyOnGoogleProgramStatus_BusinessModelItem
  #-}

-- | The channels through which the merchant is selling.
newtype BuyOnGoogleProgramStatus_OnlineSalesChannel = BuyOnGoogleProgramStatus_OnlineSalesChannel {fromBuyOnGoogleProgramStatus_OnlineSalesChannel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value when online sales channel is not set.
pattern BuyOnGoogleProgramStatus_OnlineSalesChannel_ONLINESALESCHANNELUNSPECIFIED :: BuyOnGoogleProgramStatus_OnlineSalesChannel
pattern BuyOnGoogleProgramStatus_OnlineSalesChannel_ONLINESALESCHANNELUNSPECIFIED = BuyOnGoogleProgramStatus_OnlineSalesChannel "ONLINE_SALES_CHANNEL_UNSPECIFIED"

-- | Merchant is selling exclusively on Google.
pattern BuyOnGoogleProgramStatus_OnlineSalesChannel_GOOGLEEXCLUSIVE :: BuyOnGoogleProgramStatus_OnlineSalesChannel
pattern BuyOnGoogleProgramStatus_OnlineSalesChannel_GOOGLEEXCLUSIVE = BuyOnGoogleProgramStatus_OnlineSalesChannel "GOOGLE_EXCLUSIVE"

-- | Merchant is selling on Google and other websites.
pattern BuyOnGoogleProgramStatus_OnlineSalesChannel_GOOGLEANDOTHERWEBSITES :: BuyOnGoogleProgramStatus_OnlineSalesChannel
pattern BuyOnGoogleProgramStatus_OnlineSalesChannel_GOOGLEANDOTHERWEBSITES = BuyOnGoogleProgramStatus_OnlineSalesChannel "GOOGLE_AND_OTHER_WEBSITES"

{-# COMPLETE
  BuyOnGoogleProgramStatus_OnlineSalesChannel_ONLINESALESCHANNELUNSPECIFIED,
  BuyOnGoogleProgramStatus_OnlineSalesChannel_GOOGLEEXCLUSIVE,
  BuyOnGoogleProgramStatus_OnlineSalesChannel_GOOGLEANDOTHERWEBSITES,
  BuyOnGoogleProgramStatus_OnlineSalesChannel
  #-}

-- | Output only. The current participation stage for the program.
newtype BuyOnGoogleProgramStatus_ParticipationStage = BuyOnGoogleProgramStatus_ParticipationStage {fromBuyOnGoogleProgramStatus_ParticipationStage :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value when participation stage is not set.
pattern BuyOnGoogleProgramStatus_ParticipationStage_PROGRAMPARTICIPATIONSTAGEUNSPECIFIED :: BuyOnGoogleProgramStatus_ParticipationStage
pattern BuyOnGoogleProgramStatus_ParticipationStage_PROGRAMPARTICIPATIONSTAGEUNSPECIFIED = BuyOnGoogleProgramStatus_ParticipationStage "PROGRAM_PARTICIPATION_STAGE_UNSPECIFIED"

-- | Merchant is not eligible for onboarding to a given program in a specific region code.
pattern BuyOnGoogleProgramStatus_ParticipationStage_NOTELIGIBLE :: BuyOnGoogleProgramStatus_ParticipationStage
pattern BuyOnGoogleProgramStatus_ParticipationStage_NOTELIGIBLE = BuyOnGoogleProgramStatus_ParticipationStage "NOT_ELIGIBLE"

-- | Merchant is eligible for onboarding to a given program in a specific region code.
pattern BuyOnGoogleProgramStatus_ParticipationStage_Eligible :: BuyOnGoogleProgramStatus_ParticipationStage
pattern BuyOnGoogleProgramStatus_ParticipationStage_Eligible = BuyOnGoogleProgramStatus_ParticipationStage "ELIGIBLE"

-- | Merchant is onboarding to a given program in a specific region code.
pattern BuyOnGoogleProgramStatus_ParticipationStage_Onboarding :: BuyOnGoogleProgramStatus_ParticipationStage
pattern BuyOnGoogleProgramStatus_ParticipationStage_Onboarding = BuyOnGoogleProgramStatus_ParticipationStage "ONBOARDING"

-- | Merchant fulfilled all the requirements and is ready to request review in a specific region code.
pattern BuyOnGoogleProgramStatus_ParticipationStage_ELIGIBLEFORREVIEW :: BuyOnGoogleProgramStatus_ParticipationStage
pattern BuyOnGoogleProgramStatus_ParticipationStage_ELIGIBLEFORREVIEW = BuyOnGoogleProgramStatus_ParticipationStage "ELIGIBLE_FOR_REVIEW"

-- | Merchant is waiting for the review to be completed in a specific region code.
pattern BuyOnGoogleProgramStatus_ParticipationStage_PENDINGREVIEW :: BuyOnGoogleProgramStatus_ParticipationStage
pattern BuyOnGoogleProgramStatus_ParticipationStage_PENDINGREVIEW = BuyOnGoogleProgramStatus_ParticipationStage "PENDING_REVIEW"

-- | The review for a merchant has been rejected in a specific region code.
pattern BuyOnGoogleProgramStatus_ParticipationStage_REVIEWDISAPPROVED :: BuyOnGoogleProgramStatus_ParticipationStage
pattern BuyOnGoogleProgramStatus_ParticipationStage_REVIEWDISAPPROVED = BuyOnGoogleProgramStatus_ParticipationStage "REVIEW_DISAPPROVED"

-- | Merchant\'s program participation is active for a specific region code.
pattern BuyOnGoogleProgramStatus_ParticipationStage_Active :: BuyOnGoogleProgramStatus_ParticipationStage
pattern BuyOnGoogleProgramStatus_ParticipationStage_Active = BuyOnGoogleProgramStatus_ParticipationStage "ACTIVE"

-- | Participation has been paused.
pattern BuyOnGoogleProgramStatus_ParticipationStage_Paused :: BuyOnGoogleProgramStatus_ParticipationStage
pattern BuyOnGoogleProgramStatus_ParticipationStage_Paused = BuyOnGoogleProgramStatus_ParticipationStage "PAUSED"

{-# COMPLETE
  BuyOnGoogleProgramStatus_ParticipationStage_PROGRAMPARTICIPATIONSTAGEUNSPECIFIED,
  BuyOnGoogleProgramStatus_ParticipationStage_NOTELIGIBLE,
  BuyOnGoogleProgramStatus_ParticipationStage_Eligible,
  BuyOnGoogleProgramStatus_ParticipationStage_Onboarding,
  BuyOnGoogleProgramStatus_ParticipationStage_ELIGIBLEFORREVIEW,
  BuyOnGoogleProgramStatus_ParticipationStage_PENDINGREVIEW,
  BuyOnGoogleProgramStatus_ParticipationStage_REVIEWDISAPPROVED,
  BuyOnGoogleProgramStatus_ParticipationStage_Active,
  BuyOnGoogleProgramStatus_ParticipationStage_Paused,
  BuyOnGoogleProgramStatus_ParticipationStage
  #-}

-- | The status of the execution. Only defined if the request was successful. Acceptable values are: * \"duplicate\" * \"executed\"
newtype CaptureOrderResponse_ExecutionStatus = CaptureOrderResponse_ExecutionStatus {fromCaptureOrderResponse_ExecutionStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern CaptureOrderResponse_ExecutionStatus_EXECUTIONSTATUSUNSPECIFIED :: CaptureOrderResponse_ExecutionStatus
pattern CaptureOrderResponse_ExecutionStatus_EXECUTIONSTATUSUNSPECIFIED = CaptureOrderResponse_ExecutionStatus "EXECUTION_STATUS_UNSPECIFIED"

-- | The request was completed successfully.
pattern CaptureOrderResponse_ExecutionStatus_Executed :: CaptureOrderResponse_ExecutionStatus
pattern CaptureOrderResponse_ExecutionStatus_Executed = CaptureOrderResponse_ExecutionStatus "EXECUTED"

-- | The request was not performed because it already executed once successfully.
pattern CaptureOrderResponse_ExecutionStatus_Duplicate :: CaptureOrderResponse_ExecutionStatus
pattern CaptureOrderResponse_ExecutionStatus_Duplicate = CaptureOrderResponse_ExecutionStatus "DUPLICATE"

{-# COMPLETE
  CaptureOrderResponse_ExecutionStatus_EXECUTIONSTATUSUNSPECIFIED,
  CaptureOrderResponse_ExecutionStatus_Executed,
  CaptureOrderResponse_ExecutionStatus_Duplicate,
  CaptureOrderResponse_ExecutionStatus
  #-}

-- | Output only. Current state of this conversion source. Can\'t be edited through the API.
newtype ConversionSource_State = ConversionSource_State {fromConversionSource_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern ConversionSource_State_STATEUNSPECIFIED :: ConversionSource_State
pattern ConversionSource_State_STATEUNSPECIFIED = ConversionSource_State "STATE_UNSPECIFIED"

-- | Conversion source is fully functional.
pattern ConversionSource_State_Active :: ConversionSource_State
pattern ConversionSource_State_Active = ConversionSource_State "ACTIVE"

-- | Conversion source has been archived in the last 30 days and not currently functional. Can be restored using the undelete method.
pattern ConversionSource_State_Archived :: ConversionSource_State
pattern ConversionSource_State_Archived = ConversionSource_State "ARCHIVED"

-- | Conversion source creation has started but not fully finished yet.
pattern ConversionSource_State_Pending :: ConversionSource_State
pattern ConversionSource_State_Pending = ConversionSource_State "PENDING"

{-# COMPLETE
  ConversionSource_State_STATEUNSPECIFIED,
  ConversionSource_State_Active,
  ConversionSource_State_Archived,
  ConversionSource_State_Pending,
  ConversionSource_State
  #-}

-- | State of the program. @ENABLED@ if there are offers for at least one region.
newtype FreeListingsProgramStatus_GlobalState = FreeListingsProgramStatus_GlobalState {fromFreeListingsProgramStatus_GlobalState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | State is unknown.
pattern FreeListingsProgramStatus_GlobalState_PROGRAMSTATEUNSPECIFIED :: FreeListingsProgramStatus_GlobalState
pattern FreeListingsProgramStatus_GlobalState_PROGRAMSTATEUNSPECIFIED = FreeListingsProgramStatus_GlobalState "PROGRAM_STATE_UNSPECIFIED"

-- | Program is not enabled for any country.
pattern FreeListingsProgramStatus_GlobalState_NOTENABLED :: FreeListingsProgramStatus_GlobalState
pattern FreeListingsProgramStatus_GlobalState_NOTENABLED = FreeListingsProgramStatus_GlobalState "NOT_ENABLED"

-- | No products have been uploaded for any region. Upload products to Merchant Center.
pattern FreeListingsProgramStatus_GlobalState_NOOFFERSUPLOADED :: FreeListingsProgramStatus_GlobalState
pattern FreeListingsProgramStatus_GlobalState_NOOFFERSUPLOADED = FreeListingsProgramStatus_GlobalState "NO_OFFERS_UPLOADED"

-- | Program is enabled and offers are uploaded for at least one country.
pattern FreeListingsProgramStatus_GlobalState_Enabled :: FreeListingsProgramStatus_GlobalState
pattern FreeListingsProgramStatus_GlobalState_Enabled = FreeListingsProgramStatus_GlobalState "ENABLED"

{-# COMPLETE
  FreeListingsProgramStatus_GlobalState_PROGRAMSTATEUNSPECIFIED,
  FreeListingsProgramStatus_GlobalState_NOTENABLED,
  FreeListingsProgramStatus_GlobalState_NOOFFERSUPLOADED,
  FreeListingsProgramStatus_GlobalState_Enabled,
  FreeListingsProgramStatus_GlobalState
  #-}

-- | Eligibility status of the standard free listing program.
newtype FreeListingsProgramStatusRegionStatus_EligibilityStatus = FreeListingsProgramStatusRegionStatus_EligibilityStatus {fromFreeListingsProgramStatusRegionStatus_EligibilityStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | State is not known.
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_STATEUNSPECIFIED :: FreeListingsProgramStatusRegionStatus_EligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_STATEUNSPECIFIED = FreeListingsProgramStatusRegionStatus_EligibilityStatus "STATE_UNSPECIFIED"

-- | If the account has no issues and review is completed successfully.
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_Approved :: FreeListingsProgramStatusRegionStatus_EligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_Approved = FreeListingsProgramStatusRegionStatus_EligibilityStatus "APPROVED"

-- | There are one or more issues that needs to be resolved for account to be active for the program. Detailed list of account issues are available in <https://developers.google.com/shopping-content/reference/rest/v2.1/accountstatuses accountstatuses> API.
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_Disapproved :: FreeListingsProgramStatusRegionStatus_EligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_Disapproved = FreeListingsProgramStatusRegionStatus_EligibilityStatus "DISAPPROVED"

-- | If account has issues but offers are servable. Some of the issue can make account DISAPPROVED after a certain deadline.
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_Warning :: FreeListingsProgramStatusRegionStatus_EligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_Warning = FreeListingsProgramStatusRegionStatus_EligibilityStatus "WARNING"

-- | Account is under review.
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_UNDERREVIEW :: FreeListingsProgramStatusRegionStatus_EligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_UNDERREVIEW = FreeListingsProgramStatusRegionStatus_EligibilityStatus "UNDER_REVIEW"

-- | Account is waiting for review to start.
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_PENDINGREVIEW :: FreeListingsProgramStatusRegionStatus_EligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_PENDINGREVIEW = FreeListingsProgramStatusRegionStatus_EligibilityStatus "PENDING_REVIEW"

-- | Program is currently onboarding. Upload valid offers to complete onboarding.
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_Onboarding :: FreeListingsProgramStatusRegionStatus_EligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_EligibilityStatus_Onboarding = FreeListingsProgramStatusRegionStatus_EligibilityStatus "ONBOARDING"

{-# COMPLETE
  FreeListingsProgramStatusRegionStatus_EligibilityStatus_STATEUNSPECIFIED,
  FreeListingsProgramStatusRegionStatus_EligibilityStatus_Approved,
  FreeListingsProgramStatusRegionStatus_EligibilityStatus_Disapproved,
  FreeListingsProgramStatusRegionStatus_EligibilityStatus_Warning,
  FreeListingsProgramStatusRegionStatus_EligibilityStatus_UNDERREVIEW,
  FreeListingsProgramStatusRegionStatus_EligibilityStatus_PENDINGREVIEW,
  FreeListingsProgramStatusRegionStatus_EligibilityStatus_Onboarding,
  FreeListingsProgramStatusRegionStatus_EligibilityStatus
  #-}

-- | If a program is eligible for review in a specific region. Only visible if @eligibilityStatus@ is @DISAPPROVED@.
newtype FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus = FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus {fromFreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Review eligibility state is unknown.
pattern FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_REVIEWELIGIBILITYUNSPECIFIED :: FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_REVIEWELIGIBILITYUNSPECIFIED = FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus "REVIEW_ELIGIBILITY_UNSPECIFIED"

-- | Account is eligible for review for a specified region code.
pattern FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_Eligible :: FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_Eligible = FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus "ELIGIBLE"

-- | Account is not eligible for review for a specified region code.
pattern FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_Ineligible :: FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
pattern FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_Ineligible = FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus "INELIGIBLE"

{-# COMPLETE
  FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_REVIEWELIGIBILITYUNSPECIFIED,
  FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_Eligible,
  FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus_Ineligible,
  FreeListingsProgramStatusRegionStatus_ReviewEligibilityStatus
  #-}

-- | Review ineligibility reason if account is not eligible for review.
newtype FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason {fromFreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Requesting a review from Google is not possible.
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_REVIEWINELIGIBILITYREASONUNSPECIFIED :: FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_REVIEWINELIGIBILITYREASONUNSPECIFIED = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason "REVIEW_INELIGIBILITY_REASON_UNSPECIFIED"

-- | All onboarding issues needs to be fixed.
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ONBOARDINGISSUES :: FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ONBOARDINGISSUES = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason "ONBOARDING_ISSUES"

-- | Not enough offers uploaded for this country.
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_NOTENOUGHOFFERS :: FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_NOTENOUGHOFFERS = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason "NOT_ENOUGH_OFFERS"

-- | Cooldown period applies. Wait until cooldown period ends.
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_INCOOLDOWNPERIOD :: FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_INCOOLDOWNPERIOD = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason "IN_COOLDOWN_PERIOD"

-- | Account is already under review.
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYUNDERREVIEW :: FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYUNDERREVIEW = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason "ALREADY_UNDER_REVIEW"

-- | No issues available to review.
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_NOREVIEWREQUIRED :: FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_NOREVIEWREQUIRED = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason "NO_REVIEW_REQUIRED"

-- | Account will be automatically reviewed at the end of the grace period.
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_WILLBEREVIEWEDAUTOMATICALLY :: FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_WILLBEREVIEWEDAUTOMATICALLY = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason "WILL_BE_REVIEWED_AUTOMATICALLY"

-- | Account is retired. Should not appear in MC.
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ISRETIRED :: FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ISRETIRED = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason "IS_RETIRED"

-- | Account was already reviewd.
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYREVIEWED :: FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYREVIEWED = FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason "ALREADY_REVIEWED"

{-# COMPLETE
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_REVIEWINELIGIBILITYREASONUNSPECIFIED,
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ONBOARDINGISSUES,
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_NOTENOUGHOFFERS,
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_INCOOLDOWNPERIOD,
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYUNDERREVIEW,
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_NOREVIEWREQUIRED,
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_WILLBEREVIEWEDAUTOMATICALLY,
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ISRETIRED,
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYREVIEWED,
  FreeListingsProgramStatusRegionStatus_ReviewIneligibilityReason
  #-}

-- | Reason code this rule was not applicable.
newtype InapplicabilityDetails_InapplicableReason = InapplicabilityDetails_InapplicableReason {fromInapplicabilityDetails_InapplicableReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Should not be used.
pattern InapplicabilityDetails_InapplicableReason_INAPPLICABLEREASONUNSPECIFIED :: InapplicabilityDetails_InapplicableReason
pattern InapplicabilityDetails_InapplicableReason_INAPPLICABLEREASONUNSPECIFIED = InapplicabilityDetails_InapplicableReason "INAPPLICABLE_REASON_UNSPECIFIED"

-- | The rule set for this product cannot beat the buybox winner.
pattern InapplicabilityDetails_InapplicableReason_CANNOTBEATBUYBOXWINNER :: InapplicabilityDetails_InapplicableReason
pattern InapplicabilityDetails_InapplicableReason_CANNOTBEATBUYBOXWINNER = InapplicabilityDetails_InapplicableReason "CANNOT_BEAT_BUYBOX_WINNER"

-- | This product can already win the buybox without rule.
pattern InapplicabilityDetails_InapplicableReason_ALREADYWINNINGBUYBOX :: InapplicabilityDetails_InapplicableReason
pattern InapplicabilityDetails_InapplicableReason_ALREADYWINNINGBUYBOX = InapplicabilityDetails_InapplicableReason "ALREADY_WINNING_BUYBOX"

-- | Another rule of the same type takes precedence over this one.
pattern InapplicabilityDetails_InapplicableReason_TRIUMPHEDOVERBYSAMETYPERULE :: InapplicabilityDetails_InapplicableReason
pattern InapplicabilityDetails_InapplicableReason_TRIUMPHEDOVERBYSAMETYPERULE = InapplicabilityDetails_InapplicableReason "TRIUMPHED_OVER_BY_SAME_TYPE_RULE"

-- | Another rule of a different type takes precedence over this one.
pattern InapplicabilityDetails_InapplicableReason_TRIUMPHEDOVERBYOTHERRULEONOFFER :: InapplicabilityDetails_InapplicableReason
pattern InapplicabilityDetails_InapplicableReason_TRIUMPHEDOVERBYOTHERRULEONOFFER = InapplicabilityDetails_InapplicableReason "TRIUMPHED_OVER_BY_OTHER_RULE_ON_OFFER"

-- | The rule restrictions are not met. For example, this may be the case if the calculated rule price is lower than floor price in the restriction.
pattern InapplicabilityDetails_InapplicableReason_RESTRICTIONSNOTMET :: InapplicabilityDetails_InapplicableReason
pattern InapplicabilityDetails_InapplicableReason_RESTRICTIONSNOTMET = InapplicabilityDetails_InapplicableReason "RESTRICTIONS_NOT_MET"

-- | The reason is not categorized to any known reason.
pattern InapplicabilityDetails_InapplicableReason_Uncategorized :: InapplicabilityDetails_InapplicableReason
pattern InapplicabilityDetails_InapplicableReason_Uncategorized = InapplicabilityDetails_InapplicableReason "UNCATEGORIZED"

-- | The auto/pricing/min_price is invalid. For example, it is missing or \< 0.
pattern InapplicabilityDetails_InapplicableReason_INVALIDAUTOPRICEMIN :: InapplicabilityDetails_InapplicableReason
pattern InapplicabilityDetails_InapplicableReason_INVALIDAUTOPRICEMIN = InapplicabilityDetails_InapplicableReason "INVALID_AUTO_PRICE_MIN"

-- | The floor defined in the rule is invalid. For example, it has the wrong sign which results in a floor \< 0.
pattern InapplicabilityDetails_InapplicableReason_INVALIDFLOORCONFIG :: InapplicabilityDetails_InapplicableReason
pattern InapplicabilityDetails_InapplicableReason_INVALIDFLOORCONFIG = InapplicabilityDetails_InapplicableReason "INVALID_FLOOR_CONFIG"

{-# COMPLETE
  InapplicabilityDetails_InapplicableReason_INAPPLICABLEREASONUNSPECIFIED,
  InapplicabilityDetails_InapplicableReason_CANNOTBEATBUYBOXWINNER,
  InapplicabilityDetails_InapplicableReason_ALREADYWINNINGBUYBOX,
  InapplicabilityDetails_InapplicableReason_TRIUMPHEDOVERBYSAMETYPERULE,
  InapplicabilityDetails_InapplicableReason_TRIUMPHEDOVERBYOTHERRULEONOFFER,
  InapplicabilityDetails_InapplicableReason_RESTRICTIONSNOTMET,
  InapplicabilityDetails_InapplicableReason_Uncategorized,
  InapplicabilityDetails_InapplicableReason_INVALIDAUTOPRICEMIN,
  InapplicabilityDetails_InapplicableReason_INVALIDFLOORCONFIG,
  InapplicabilityDetails_InapplicableReason
  #-}

-- | The status of the shipment.
newtype OrderTrackingSignalShippingInfo_ShippingStatus = OrderTrackingSignalShippingInfo_ShippingStatus {fromOrderTrackingSignalShippingInfo_ShippingStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The shipping status is not known to merchant.
pattern OrderTrackingSignalShippingInfo_ShippingStatus_SHIPPINGSTATEUNSPECIFIED :: OrderTrackingSignalShippingInfo_ShippingStatus
pattern OrderTrackingSignalShippingInfo_ShippingStatus_SHIPPINGSTATEUNSPECIFIED = OrderTrackingSignalShippingInfo_ShippingStatus "SHIPPING_STATE_UNSPECIFIED"

-- | All items are shipped.
pattern OrderTrackingSignalShippingInfo_ShippingStatus_Shipped :: OrderTrackingSignalShippingInfo_ShippingStatus
pattern OrderTrackingSignalShippingInfo_ShippingStatus_Shipped = OrderTrackingSignalShippingInfo_ShippingStatus "SHIPPED"

-- | The shipment is already delivered.
pattern OrderTrackingSignalShippingInfo_ShippingStatus_Delivered :: OrderTrackingSignalShippingInfo_ShippingStatus
pattern OrderTrackingSignalShippingInfo_ShippingStatus_Delivered = OrderTrackingSignalShippingInfo_ShippingStatus "DELIVERED"

{-# COMPLETE
  OrderTrackingSignalShippingInfo_ShippingStatus_SHIPPINGSTATEUNSPECIFIED,
  OrderTrackingSignalShippingInfo_ShippingStatus_Shipped,
  OrderTrackingSignalShippingInfo_ShippingStatus_Delivered,
  OrderTrackingSignalShippingInfo_ShippingStatus
  #-}

-- | Tells if there is at least one product of the brand currently @IN_STOCK@ in your product feed across multiple countries, all products are @OUT_OF_STOCK@ in your product feed, or @NOT_IN_INVENTORY@. The field doesn\'t take the Best Sellers report country filter into account.
newtype ProductCluster_BrandInventoryStatus = ProductCluster_BrandInventoryStatus {fromProductCluster_BrandInventoryStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Inventory status is unknown.
pattern ProductCluster_BrandInventoryStatus_INVENTORYSTATUSUNSPECIFIED :: ProductCluster_BrandInventoryStatus
pattern ProductCluster_BrandInventoryStatus_INVENTORYSTATUSUNSPECIFIED = ProductCluster_BrandInventoryStatus "INVENTORY_STATUS_UNSPECIFIED"

-- | Merchant has a product for this product cluster or brand in stock.
pattern ProductCluster_BrandInventoryStatus_INSTOCK :: ProductCluster_BrandInventoryStatus
pattern ProductCluster_BrandInventoryStatus_INSTOCK = ProductCluster_BrandInventoryStatus "IN_STOCK"

-- | Merchant has a product for this product cluster or brand in inventory but it is currently out of stock.
pattern ProductCluster_BrandInventoryStatus_OUTOFSTOCK :: ProductCluster_BrandInventoryStatus
pattern ProductCluster_BrandInventoryStatus_OUTOFSTOCK = ProductCluster_BrandInventoryStatus "OUT_OF_STOCK"

-- | Merchant does not have a product for this product cluster or brand in inventory.
pattern ProductCluster_BrandInventoryStatus_NOTININVENTORY :: ProductCluster_BrandInventoryStatus
pattern ProductCluster_BrandInventoryStatus_NOTININVENTORY = ProductCluster_BrandInventoryStatus "NOT_IN_INVENTORY"

{-# COMPLETE
  ProductCluster_BrandInventoryStatus_INVENTORYSTATUSUNSPECIFIED,
  ProductCluster_BrandInventoryStatus_INSTOCK,
  ProductCluster_BrandInventoryStatus_OUTOFSTOCK,
  ProductCluster_BrandInventoryStatus_NOTININVENTORY,
  ProductCluster_BrandInventoryStatus
  #-}

-- | Tells whether the product cluster is @IN_STOCK@ in your product feed across multiple countries, @OUT_OF_STOCK@ in your product feed, or @NOT_IN_INVENTORY@ at all. The field doesn\'t take the Best Sellers report country filter into account.
newtype ProductCluster_InventoryStatus = ProductCluster_InventoryStatus {fromProductCluster_InventoryStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Inventory status is unknown.
pattern ProductCluster_InventoryStatus_INVENTORYSTATUSUNSPECIFIED :: ProductCluster_InventoryStatus
pattern ProductCluster_InventoryStatus_INVENTORYSTATUSUNSPECIFIED = ProductCluster_InventoryStatus "INVENTORY_STATUS_UNSPECIFIED"

-- | Merchant has a product for this product cluster or brand in stock.
pattern ProductCluster_InventoryStatus_INSTOCK :: ProductCluster_InventoryStatus
pattern ProductCluster_InventoryStatus_INSTOCK = ProductCluster_InventoryStatus "IN_STOCK"

-- | Merchant has a product for this product cluster or brand in inventory but it is currently out of stock.
pattern ProductCluster_InventoryStatus_OUTOFSTOCK :: ProductCluster_InventoryStatus
pattern ProductCluster_InventoryStatus_OUTOFSTOCK = ProductCluster_InventoryStatus "OUT_OF_STOCK"

-- | Merchant does not have a product for this product cluster or brand in inventory.
pattern ProductCluster_InventoryStatus_NOTININVENTORY :: ProductCluster_InventoryStatus
pattern ProductCluster_InventoryStatus_NOTININVENTORY = ProductCluster_InventoryStatus "NOT_IN_INVENTORY"

{-# COMPLETE
  ProductCluster_InventoryStatus_INVENTORYSTATUSUNSPECIFIED,
  ProductCluster_InventoryStatus_INSTOCK,
  ProductCluster_InventoryStatus_OUTOFSTOCK,
  ProductCluster_InventoryStatus_NOTININVENTORY,
  ProductCluster_InventoryStatus
  #-}

-- | Aggregated destination status.
newtype ProductView_AggregatedDestinationStatus = ProductView_AggregatedDestinationStatus {fromProductView_AggregatedDestinationStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Undefined aggregated status.
pattern ProductView_AggregatedDestinationStatus_AGGREGATEDSTATUSUNSPECIFIED :: ProductView_AggregatedDestinationStatus
pattern ProductView_AggregatedDestinationStatus_AGGREGATEDSTATUSUNSPECIFIED = ProductView_AggregatedDestinationStatus "AGGREGATED_STATUS_UNSPECIFIED"

-- | Offer isn\'t eligible, or is disapproved for all destinations.
pattern ProductView_AggregatedDestinationStatus_NOTELIGIBLEORDISAPPROVED :: ProductView_AggregatedDestinationStatus
pattern ProductView_AggregatedDestinationStatus_NOTELIGIBLEORDISAPPROVED = ProductView_AggregatedDestinationStatus "NOT_ELIGIBLE_OR_DISAPPROVED"

-- | Offer\'s status is pending in all destinations.
pattern ProductView_AggregatedDestinationStatus_Pending :: ProductView_AggregatedDestinationStatus
pattern ProductView_AggregatedDestinationStatus_Pending = ProductView_AggregatedDestinationStatus "PENDING"

-- | Offer is eligible for some (but not all) destinations.
pattern ProductView_AggregatedDestinationStatus_ELIGIBLELIMITED :: ProductView_AggregatedDestinationStatus
pattern ProductView_AggregatedDestinationStatus_ELIGIBLELIMITED = ProductView_AggregatedDestinationStatus "ELIGIBLE_LIMITED"

-- | Offer is eligible for all destinations.
pattern ProductView_AggregatedDestinationStatus_Eligible :: ProductView_AggregatedDestinationStatus
pattern ProductView_AggregatedDestinationStatus_Eligible = ProductView_AggregatedDestinationStatus "ELIGIBLE"

{-# COMPLETE
  ProductView_AggregatedDestinationStatus_AGGREGATEDSTATUSUNSPECIFIED,
  ProductView_AggregatedDestinationStatus_NOTELIGIBLEORDISAPPROVED,
  ProductView_AggregatedDestinationStatus_Pending,
  ProductView_AggregatedDestinationStatus_ELIGIBLELIMITED,
  ProductView_AggregatedDestinationStatus_Eligible,
  ProductView_AggregatedDestinationStatus
  #-}

-- | Channel of the product (online versus local).
newtype ProductView_Channel = ProductView_Channel {fromProductView_Channel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Indicates that the channel is unspecified.
pattern ProductView_Channel_CHANNELUNSPECIFIED :: ProductView_Channel
pattern ProductView_Channel_CHANNELUNSPECIFIED = ProductView_Channel "CHANNEL_UNSPECIFIED"

-- | Indicates that the channel is local.
pattern ProductView_Channel_Local :: ProductView_Channel
pattern ProductView_Channel_Local = ProductView_Channel "LOCAL"

-- | Indicates that the channel is online.
pattern ProductView_Channel_Online :: ProductView_Channel
pattern ProductView_Channel_Online = ProductView_Channel "ONLINE"

{-# COMPLETE
  ProductView_Channel_CHANNELUNSPECIFIED,
  ProductView_Channel_Local,
  ProductView_Channel_Online,
  ProductView_Channel
  #-}

-- | Item issue resolution.
newtype ProductViewItemIssue_Resolution = ProductViewItemIssue_Resolution {fromProductViewItemIssue_Resolution :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown resolution type.
pattern ProductViewItemIssue_Resolution_Unknown :: ProductViewItemIssue_Resolution
pattern ProductViewItemIssue_Resolution_Unknown = ProductViewItemIssue_Resolution "UNKNOWN"

-- | The merchant has to fix the issue.
pattern ProductViewItemIssue_Resolution_MERCHANTACTION :: ProductViewItemIssue_Resolution
pattern ProductViewItemIssue_Resolution_MERCHANTACTION = ProductViewItemIssue_Resolution "MERCHANT_ACTION"

-- | The issue will be resolved automatically (for example, image crawl), or Google review. No merchant action is required now. Resolution might lead to another issue (for example, if crawl fails).
pattern ProductViewItemIssue_Resolution_PENDINGPROCESSING :: ProductViewItemIssue_Resolution
pattern ProductViewItemIssue_Resolution_PENDINGPROCESSING = ProductViewItemIssue_Resolution "PENDING_PROCESSING"

{-# COMPLETE
  ProductViewItemIssue_Resolution_Unknown,
  ProductViewItemIssue_Resolution_MERCHANTACTION,
  ProductViewItemIssue_Resolution_PENDINGPROCESSING,
  ProductViewItemIssue_Resolution
  #-}

-- | Severity of an issue aggregated for destination.
newtype ProductViewItemIssueItemIssueSeverity_AggregatedSeverity = ProductViewItemIssueItemIssueSeverity_AggregatedSeverity {fromProductViewItemIssueItemIssueSeverity_AggregatedSeverity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Undefined Issue severity.
pattern ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_AGGREGATEDISSUESEVERITYUNSPECIFIED :: ProductViewItemIssueItemIssueSeverity_AggregatedSeverity
pattern ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_AGGREGATEDISSUESEVERITYUNSPECIFIED = ProductViewItemIssueItemIssueSeverity_AggregatedSeverity "AGGREGATED_ISSUE_SEVERITY_UNSPECIFIED"

-- | Issue disapproves the product in at least one of the selected destinations.
pattern ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Disapproved :: ProductViewItemIssueItemIssueSeverity_AggregatedSeverity
pattern ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Disapproved = ProductViewItemIssueItemIssueSeverity_AggregatedSeverity "DISAPPROVED"

-- | Issue demotes the product in all selected destinations it affects.
pattern ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Demoted :: ProductViewItemIssueItemIssueSeverity_AggregatedSeverity
pattern ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Demoted = ProductViewItemIssueItemIssueSeverity_AggregatedSeverity "DEMOTED"

-- | Issue resolution is @PENDING_PROCESSING@.
pattern ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Pending :: ProductViewItemIssueItemIssueSeverity_AggregatedSeverity
pattern ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Pending = ProductViewItemIssueItemIssueSeverity_AggregatedSeverity "PENDING"

{-# COMPLETE
  ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_AGGREGATEDISSUESEVERITYUNSPECIFIED,
  ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Disapproved,
  ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Demoted,
  ProductViewItemIssueItemIssueSeverity_AggregatedSeverity_Pending,
  ProductViewItemIssueItemIssueSeverity_AggregatedSeverity
  #-}

-- | Required. Coupon value type for the promotion.
newtype Promotion_CouponValueType = Promotion_CouponValueType {fromPromotion_CouponValueType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Indicates that the coupon value type is unspecified.
pattern Promotion_CouponValueType_COUPONVALUETYPEUNSPECIFIED :: Promotion_CouponValueType
pattern Promotion_CouponValueType_COUPONVALUETYPEUNSPECIFIED = Promotion_CouponValueType "COUPON_VALUE_TYPE_UNSPECIFIED"

-- | Money off coupon value type.
pattern Promotion_CouponValueType_MONEYOFF :: Promotion_CouponValueType
pattern Promotion_CouponValueType_MONEYOFF = Promotion_CouponValueType "MONEY_OFF"

-- | Percent off coupon value type.
pattern Promotion_CouponValueType_PERCENTOFF :: Promotion_CouponValueType
pattern Promotion_CouponValueType_PERCENTOFF = Promotion_CouponValueType "PERCENT_OFF"

-- | Buy M quantity, get N money off coupon value type. @buy_this_quantity@ and @get_this_quantity@ must be present. @money_off_amount@ must also be present.
pattern Promotion_CouponValueType_BUYMGETNMONEYOFF :: Promotion_CouponValueType
pattern Promotion_CouponValueType_BUYMGETNMONEYOFF = Promotion_CouponValueType "BUY_M_GET_N_MONEY_OFF"

-- | Buy M quantity, get N percent off coupon value type. @buy_this_quantity@ and @get_this_quantity@ must be present. @percent_off_percentage@ must also be present.
pattern Promotion_CouponValueType_BUYMGETNPERCENTOFF :: Promotion_CouponValueType
pattern Promotion_CouponValueType_BUYMGETNPERCENTOFF = Promotion_CouponValueType "BUY_M_GET_N_PERCENT_OFF"

-- | Buy M quantity, get money off. @buy_this_quantity@ and @money_off_amount@ must be present.
pattern Promotion_CouponValueType_BUYMGETMONEYOFF :: Promotion_CouponValueType
pattern Promotion_CouponValueType_BUYMGETMONEYOFF = Promotion_CouponValueType "BUY_M_GET_MONEY_OFF"

-- | Buy M quantity, get money off. @buy_this_quantity@ and @percent_off_percentage@ must be present.
pattern Promotion_CouponValueType_BUYMGETPERCENTOFF :: Promotion_CouponValueType
pattern Promotion_CouponValueType_BUYMGETPERCENTOFF = Promotion_CouponValueType "BUY_M_GET_PERCENT_OFF"

-- | Free gift with description only.
pattern Promotion_CouponValueType_FREEGIFT :: Promotion_CouponValueType
pattern Promotion_CouponValueType_FREEGIFT = Promotion_CouponValueType "FREE_GIFT"

-- | Free gift with value (description is optional).
pattern Promotion_CouponValueType_FREEGIFTWITHVALUE :: Promotion_CouponValueType
pattern Promotion_CouponValueType_FREEGIFTWITHVALUE = Promotion_CouponValueType "FREE_GIFT_WITH_VALUE"

-- | Free gift with item ID (description is optional).
pattern Promotion_CouponValueType_FREEGIFTWITHITEMID :: Promotion_CouponValueType
pattern Promotion_CouponValueType_FREEGIFTWITHITEMID = Promotion_CouponValueType "FREE_GIFT_WITH_ITEM_ID"

-- | Standard free shipping coupon value type.
pattern Promotion_CouponValueType_FREESHIPPINGSTANDARD :: Promotion_CouponValueType
pattern Promotion_CouponValueType_FREESHIPPINGSTANDARD = Promotion_CouponValueType "FREE_SHIPPING_STANDARD"

-- | Overnight free shipping coupon value type.
pattern Promotion_CouponValueType_FREESHIPPINGOVERNIGHT :: Promotion_CouponValueType
pattern Promotion_CouponValueType_FREESHIPPINGOVERNIGHT = Promotion_CouponValueType "FREE_SHIPPING_OVERNIGHT"

-- | Two day free shipping coupon value type.
pattern Promotion_CouponValueType_FREESHIPPINGTWODAY :: Promotion_CouponValueType
pattern Promotion_CouponValueType_FREESHIPPINGTWODAY = Promotion_CouponValueType "FREE_SHIPPING_TWO_DAY"

{-# COMPLETE
  Promotion_CouponValueType_COUPONVALUETYPEUNSPECIFIED,
  Promotion_CouponValueType_MONEYOFF,
  Promotion_CouponValueType_PERCENTOFF,
  Promotion_CouponValueType_BUYMGETNMONEYOFF,
  Promotion_CouponValueType_BUYMGETNPERCENTOFF,
  Promotion_CouponValueType_BUYMGETMONEYOFF,
  Promotion_CouponValueType_BUYMGETPERCENTOFF,
  Promotion_CouponValueType_FREEGIFT,
  Promotion_CouponValueType_FREEGIFTWITHVALUE,
  Promotion_CouponValueType_FREEGIFTWITHITEMID,
  Promotion_CouponValueType_FREESHIPPINGSTANDARD,
  Promotion_CouponValueType_FREESHIPPINGOVERNIGHT,
  Promotion_CouponValueType_FREESHIPPINGTWODAY,
  Promotion_CouponValueType
  #-}

-- | Required. Type of the promotion.
newtype Promotion_OfferType = Promotion_OfferType {fromPromotion_OfferType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown offer type.
pattern Promotion_OfferType_OFFERTYPEUNSPECIFIED :: Promotion_OfferType
pattern Promotion_OfferType_OFFERTYPEUNSPECIFIED = Promotion_OfferType "OFFER_TYPE_UNSPECIFIED"

-- | Offer type without a code.
pattern Promotion_OfferType_NOCODE :: Promotion_OfferType
pattern Promotion_OfferType_NOCODE = Promotion_OfferType "NO_CODE"

-- | Offer type with a code.
pattern Promotion_OfferType_GENERICCODE :: Promotion_OfferType
pattern Promotion_OfferType_GENERICCODE = Promotion_OfferType "GENERIC_CODE"

{-# COMPLETE
  Promotion_OfferType_OFFERTYPEUNSPECIFIED,
  Promotion_OfferType_NOCODE,
  Promotion_OfferType_GENERICCODE,
  Promotion_OfferType
  #-}

-- | Required. Applicability of the promotion to either all products or only specific products.
newtype Promotion_ProductApplicability = Promotion_ProductApplicability {fromPromotion_ProductApplicability :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Which products the promotion applies to is unknown.
pattern Promotion_ProductApplicability_PRODUCTAPPLICABILITYUNSPECIFIED :: Promotion_ProductApplicability
pattern Promotion_ProductApplicability_PRODUCTAPPLICABILITYUNSPECIFIED = Promotion_ProductApplicability "PRODUCT_APPLICABILITY_UNSPECIFIED"

-- | Applicable to all products.
pattern Promotion_ProductApplicability_ALLPRODUCTS :: Promotion_ProductApplicability
pattern Promotion_ProductApplicability_ALLPRODUCTS = Promotion_ProductApplicability "ALL_PRODUCTS"

-- | Applicable to only a single product or list of products.
pattern Promotion_ProductApplicability_SPECIFICPRODUCTS :: Promotion_ProductApplicability
pattern Promotion_ProductApplicability_SPECIFICPRODUCTS = Promotion_ProductApplicability "SPECIFIC_PRODUCTS"

{-# COMPLETE
  Promotion_ProductApplicability_PRODUCTAPPLICABILITYUNSPECIFIED,
  Promotion_ProductApplicability_ALLPRODUCTS,
  Promotion_ProductApplicability_SPECIFICPRODUCTS,
  Promotion_ProductApplicability
  #-}

newtype Promotion_RedemptionChannelItem = Promotion_RedemptionChannelItem {fromPromotion_RedemptionChannelItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Indicates that the channel is unspecified.
pattern Promotion_RedemptionChannelItem_REDEMPTIONCHANNELUNSPECIFIED :: Promotion_RedemptionChannelItem
pattern Promotion_RedemptionChannelItem_REDEMPTIONCHANNELUNSPECIFIED = Promotion_RedemptionChannelItem "REDEMPTION_CHANNEL_UNSPECIFIED"

-- | Indicates that the channel is in store.
pattern Promotion_RedemptionChannelItem_INSTORE :: Promotion_RedemptionChannelItem
pattern Promotion_RedemptionChannelItem_INSTORE = Promotion_RedemptionChannelItem "IN_STORE"

-- | Indicates that the channel is online.
pattern Promotion_RedemptionChannelItem_Online :: Promotion_RedemptionChannelItem
pattern Promotion_RedemptionChannelItem_Online = Promotion_RedemptionChannelItem "ONLINE"

{-# COMPLETE
  Promotion_RedemptionChannelItem_REDEMPTIONCHANNELUNSPECIFIED,
  Promotion_RedemptionChannelItem_INSTORE,
  Promotion_RedemptionChannelItem_Online,
  Promotion_RedemptionChannelItem
  #-}

-- | Whether the promotion applies to all stores, or only specified stores. Local Inventory ads promotions throw an error if no store applicability is included. An INVALID/ARGUMENT error is thrown if store/applicability is set to ALL/STORES and store/code or score/code/exclusion is set to a value.
newtype Promotion_StoreApplicability = Promotion_StoreApplicability {fromPromotion_StoreApplicability :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Which store codes the promotion applies to is unknown.
pattern Promotion_StoreApplicability_STOREAPPLICABILITYUNSPECIFIED :: Promotion_StoreApplicability
pattern Promotion_StoreApplicability_STOREAPPLICABILITYUNSPECIFIED = Promotion_StoreApplicability "STORE_APPLICABILITY_UNSPECIFIED"

-- | Promotion applies to all stores.
pattern Promotion_StoreApplicability_ALLSTORES :: Promotion_StoreApplicability
pattern Promotion_StoreApplicability_ALLSTORES = Promotion_StoreApplicability "ALL_STORES"

-- | Promotion applies to only the specified stores.
pattern Promotion_StoreApplicability_SPECIFICSTORES :: Promotion_StoreApplicability
pattern Promotion_StoreApplicability_SPECIFICSTORES = Promotion_StoreApplicability "SPECIFIC_STORES"

{-# COMPLETE
  Promotion_StoreApplicability_STOREAPPLICABILITYUNSPECIFIED,
  Promotion_StoreApplicability_ALLSTORES,
  Promotion_StoreApplicability_SPECIFICSTORES,
  Promotion_StoreApplicability
  #-}

-- | The status for the specified destination.
newtype PromotionPromotionStatusDestinationStatus_Status = PromotionPromotionStatusDestinationStatus_Status {fromPromotionPromotionStatusDestinationStatus_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown promotion state.
pattern PromotionPromotionStatusDestinationStatus_Status_STATEUNSPECIFIED :: PromotionPromotionStatusDestinationStatus_Status
pattern PromotionPromotionStatusDestinationStatus_Status_STATEUNSPECIFIED = PromotionPromotionStatusDestinationStatus_Status "STATE_UNSPECIFIED"

-- | The promotion is under review.
pattern PromotionPromotionStatusDestinationStatus_Status_INREVIEW :: PromotionPromotionStatusDestinationStatus_Status
pattern PromotionPromotionStatusDestinationStatus_Status_INREVIEW = PromotionPromotionStatusDestinationStatus_Status "IN_REVIEW"

-- | The promotion is disapproved
pattern PromotionPromotionStatusDestinationStatus_Status_Rejected :: PromotionPromotionStatusDestinationStatus_Status
pattern PromotionPromotionStatusDestinationStatus_Status_Rejected = PromotionPromotionStatusDestinationStatus_Status "REJECTED"

-- | The promotion is approved and active.
pattern PromotionPromotionStatusDestinationStatus_Status_Live :: PromotionPromotionStatusDestinationStatus_Status
pattern PromotionPromotionStatusDestinationStatus_Status_Live = PromotionPromotionStatusDestinationStatus_Status "LIVE"

-- | The promotion is stopped by merchant.
pattern PromotionPromotionStatusDestinationStatus_Status_Stopped :: PromotionPromotionStatusDestinationStatus_Status
pattern PromotionPromotionStatusDestinationStatus_Status_Stopped = PromotionPromotionStatusDestinationStatus_Status "STOPPED"

-- | The promotion is no longer active.
pattern PromotionPromotionStatusDestinationStatus_Status_Expired :: PromotionPromotionStatusDestinationStatus_Status
pattern PromotionPromotionStatusDestinationStatus_Status_Expired = PromotionPromotionStatusDestinationStatus_Status "EXPIRED"

-- | The promotion is not stopped, and all reviews are approved, but the active date is in the future.
pattern PromotionPromotionStatusDestinationStatus_Status_Pending :: PromotionPromotionStatusDestinationStatus_Status
pattern PromotionPromotionStatusDestinationStatus_Status_Pending = PromotionPromotionStatusDestinationStatus_Status "PENDING"

{-# COMPLETE
  PromotionPromotionStatusDestinationStatus_Status_STATEUNSPECIFIED,
  PromotionPromotionStatusDestinationStatus_Status_INREVIEW,
  PromotionPromotionStatusDestinationStatus_Status_Rejected,
  PromotionPromotionStatusDestinationStatus_Status_Live,
  PromotionPromotionStatusDestinationStatus_Status_Stopped,
  PromotionPromotionStatusDestinationStatus_Status_Expired,
  PromotionPromotionStatusDestinationStatus_Status_Pending,
  PromotionPromotionStatusDestinationStatus_Status
  #-}

-- | Type of the creative.
newtype RecommendationCreative_Type = RecommendationCreative_Type {fromRecommendationCreative_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. If provided, shall be considered invalid.
pattern RecommendationCreative_Type_CREATIVETYPEUNSPECIFIED :: RecommendationCreative_Type
pattern RecommendationCreative_Type_CREATIVETYPEUNSPECIFIED = RecommendationCreative_Type "CREATIVE_TYPE_UNSPECIFIED"

-- | Video creatives.
pattern RecommendationCreative_Type_Video :: RecommendationCreative_Type
pattern RecommendationCreative_Type_Video = RecommendationCreative_Type "VIDEO"

-- | Photo creatives.
pattern RecommendationCreative_Type_Photo :: RecommendationCreative_Type
pattern RecommendationCreative_Type_Photo = RecommendationCreative_Type "PHOTO"

{-# COMPLETE
  RecommendationCreative_Type_CREATIVETYPEUNSPECIFIED,
  RecommendationCreative_Type_Video,
  RecommendationCreative_Type_Photo,
  RecommendationCreative_Type
  #-}

-- | Output only. Type of the description.
newtype RecommendationDescription_Type = RecommendationDescription_Type {fromRecommendationDescription_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. Will never be provided by the API.
pattern RecommendationDescription_Type_DESCRIPTIONTYPEUNSPECIFIED :: RecommendationDescription_Type
pattern RecommendationDescription_Type_DESCRIPTIONTYPEUNSPECIFIED = RecommendationDescription_Type "DESCRIPTION_TYPE_UNSPECIFIED"

-- | Short description.
pattern RecommendationDescription_Type_Short :: RecommendationDescription_Type
pattern RecommendationDescription_Type_Short = RecommendationDescription_Type "SHORT"

-- | Long description.
pattern RecommendationDescription_Type_Long :: RecommendationDescription_Type
pattern RecommendationDescription_Type_Long = RecommendationDescription_Type "LONG"

{-# COMPLETE
  RecommendationDescription_Type_DESCRIPTIONTYPEUNSPECIFIED,
  RecommendationDescription_Type_Short,
  RecommendationDescription_Type_Long,
  RecommendationDescription_Type
  #-}

-- | Required. Type of the interaction that is reported, for example INTERACTION_CLICK.
newtype ReportInteractionRequest_InteractionType = ReportInteractionRequest_InteractionType {fromReportInteractionRequest_InteractionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. If provided, the service will throw ApiError with description \"Required parameter: interactionType\".
pattern ReportInteractionRequest_InteractionType_INTERACTIONTYPEUNSPECIFIED :: ReportInteractionRequest_InteractionType
pattern ReportInteractionRequest_InteractionType_INTERACTIONTYPEUNSPECIFIED = ReportInteractionRequest_InteractionType "INTERACTION_TYPE_UNSPECIFIED"

-- | When a recommendation is clicked.
pattern ReportInteractionRequest_InteractionType_INTERACTIONCLICK :: ReportInteractionRequest_InteractionType
pattern ReportInteractionRequest_InteractionType_INTERACTIONCLICK = ReportInteractionRequest_InteractionType "INTERACTION_CLICK"

{-# COMPLETE
  ReportInteractionRequest_InteractionType_INTERACTIONTYPEUNSPECIFIED,
  ReportInteractionRequest_InteractionType_INTERACTIONCLICK,
  ReportInteractionRequest_InteractionType
  #-}

-- | Type of the rule.
newtype RepricingProductReport_Type = RepricingProductReport_Type {fromRepricingProductReport_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unused.
pattern RepricingProductReport_Type_REPRICINGRULETYPEUNSPECIFIED :: RepricingProductReport_Type
pattern RepricingProductReport_Type_REPRICINGRULETYPEUNSPECIFIED = RepricingProductReport_Type "REPRICING_RULE_TYPE_UNSPECIFIED"

-- | Statistical measurement based rules among Google SA merchants. If this rule is chosen, repricer will adjust the offer price based on statistical metrics (currently only min is available) among other merchants who sell the same product. Details need to be provdided in the RuleDefinition.
pattern RepricingProductReport_Type_TYPESTATSBASED :: RepricingProductReport_Type
pattern RepricingProductReport_Type_TYPESTATSBASED = RepricingProductReport_Type "TYPE_STATS_BASED"

-- | Cost of goods sale based rule. Repricer will adjust the offer price based on the offer\'s sale cost which is provided by the merchant.
pattern RepricingProductReport_Type_TYPECOGSBASED :: RepricingProductReport_Type
pattern RepricingProductReport_Type_TYPECOGSBASED = RepricingProductReport_Type "TYPE_COGS_BASED"

-- | Sales volume based rule. Repricer will adjust the offer price based on the offer\'s sales volume in the past period of time defined within the rule.
pattern RepricingProductReport_Type_TYPESALESVOLUMEBASED :: RepricingProductReport_Type
pattern RepricingProductReport_Type_TYPESALESVOLUMEBASED = RepricingProductReport_Type "TYPE_SALES_VOLUME_BASED"

-- | Competitive price rule. Repricer will adjust the offer price based on the min price from a list of unnamed big competitors.
pattern RepricingProductReport_Type_TYPECOMPETITIVEPRICE :: RepricingProductReport_Type
pattern RepricingProductReport_Type_TYPECOMPETITIVEPRICE = RepricingProductReport_Type "TYPE_COMPETITIVE_PRICE"

{-# COMPLETE
  RepricingProductReport_Type_REPRICINGRULETYPEUNSPECIFIED,
  RepricingProductReport_Type_TYPESTATSBASED,
  RepricingProductReport_Type_TYPECOGSBASED,
  RepricingProductReport_Type_TYPESALESVOLUMEBASED,
  RepricingProductReport_Type_TYPECOMPETITIVEPRICE,
  RepricingProductReport_Type
  #-}

-- | Required. Immutable. The type of the rule.
newtype RepricingRule_Type = RepricingRule_Type {fromRepricingRule_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unused.
pattern RepricingRule_Type_REPRICINGRULETYPEUNSPECIFIED :: RepricingRule_Type
pattern RepricingRule_Type_REPRICINGRULETYPEUNSPECIFIED = RepricingRule_Type "REPRICING_RULE_TYPE_UNSPECIFIED"

-- | Statistical measurement based rules among Google SA merchants. If this rule is chosen, repricer will adjust the offer price based on statistical metrics (currently only min is available) among other merchants who sell the same product. Details need to be provdided in the RuleDefinition.
pattern RepricingRule_Type_TYPESTATSBASED :: RepricingRule_Type
pattern RepricingRule_Type_TYPESTATSBASED = RepricingRule_Type "TYPE_STATS_BASED"

-- | Cost of goods sale based rule. Repricer will adjust the offer price based on the offer\'s sale cost which is provided by the merchant.
pattern RepricingRule_Type_TYPECOGSBASED :: RepricingRule_Type
pattern RepricingRule_Type_TYPECOGSBASED = RepricingRule_Type "TYPE_COGS_BASED"

-- | Sales volume based rule. Repricer will adjust the offer price based on the offer\'s sales volume in the past period of time defined within the rule.
pattern RepricingRule_Type_TYPESALESVOLUMEBASED :: RepricingRule_Type
pattern RepricingRule_Type_TYPESALESVOLUMEBASED = RepricingRule_Type "TYPE_SALES_VOLUME_BASED"

-- | Competitive price rule. Repricer will adjust the offer price based on the min price from a list of unnamed big competitors.
pattern RepricingRule_Type_TYPECOMPETITIVEPRICE :: RepricingRule_Type
pattern RepricingRule_Type_TYPECOMPETITIVEPRICE = RepricingRule_Type "TYPE_COMPETITIVE_PRICE"

{-# COMPLETE
  RepricingRule_Type_REPRICINGRULETYPEUNSPECIFIED,
  RepricingRule_Type_TYPESTATSBASED,
  RepricingRule_Type_TYPECOGSBASED,
  RepricingRule_Type_TYPESALESVOLUMEBASED,
  RepricingRule_Type_TYPECOMPETITIVEPRICE,
  RepricingRule_Type
  #-}

-- | Determines whether to use the custom matchers or the product feed attribute \"repricing/rule/id\" to specify offer-rule mapping.
newtype RepricingRuleEligibleOfferMatcher_MatcherOption = RepricingRuleEligibleOfferMatcher_MatcherOption {fromRepricingRuleEligibleOfferMatcher_MatcherOption :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unused.
pattern RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONUNSPECIFIED :: RepricingRuleEligibleOfferMatcher_MatcherOption
pattern RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONUNSPECIFIED = RepricingRuleEligibleOfferMatcher_MatcherOption "MATCHER_OPTION_UNSPECIFIED"

-- | Use custom filters.
pattern RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONCUSTOMFILTER :: RepricingRuleEligibleOfferMatcher_MatcherOption
pattern RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONCUSTOMFILTER = RepricingRuleEligibleOfferMatcher_MatcherOption "MATCHER_OPTION_CUSTOM_FILTER"

-- | Use repricing/rule/id feed attribute on the product resource to specify offer-rule mapping.
pattern RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONUSEFEEDATTRIBUTE :: RepricingRuleEligibleOfferMatcher_MatcherOption
pattern RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONUSEFEEDATTRIBUTE = RepricingRuleEligibleOfferMatcher_MatcherOption "MATCHER_OPTION_USE_FEED_ATTRIBUTE"

-- | Matching all products.
pattern RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONALLPRODUCTS :: RepricingRuleEligibleOfferMatcher_MatcherOption
pattern RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONALLPRODUCTS = RepricingRuleEligibleOfferMatcher_MatcherOption "MATCHER_OPTION_ALL_PRODUCTS"

{-# COMPLETE
  RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONUNSPECIFIED,
  RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONCUSTOMFILTER,
  RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONUSEFEEDATTRIBUTE,
  RepricingRuleEligibleOfferMatcher_MatcherOption_MATCHEROPTIONALLPRODUCTS,
  RepricingRuleEligibleOfferMatcher_MatcherOption
  #-}

-- | Type of the rule.
newtype RepricingRuleReport_Type = RepricingRuleReport_Type {fromRepricingRuleReport_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unused.
pattern RepricingRuleReport_Type_REPRICINGRULETYPEUNSPECIFIED :: RepricingRuleReport_Type
pattern RepricingRuleReport_Type_REPRICINGRULETYPEUNSPECIFIED = RepricingRuleReport_Type "REPRICING_RULE_TYPE_UNSPECIFIED"

-- | Statistical measurement based rules among Google SA merchants. If this rule is chosen, repricer will adjust the offer price based on statistical metrics (currently only min is available) among other merchants who sell the same product. Details need to be provdided in the RuleDefinition.
pattern RepricingRuleReport_Type_TYPESTATSBASED :: RepricingRuleReport_Type
pattern RepricingRuleReport_Type_TYPESTATSBASED = RepricingRuleReport_Type "TYPE_STATS_BASED"

-- | Cost of goods sale based rule. Repricer will adjust the offer price based on the offer\'s sale cost which is provided by the merchant.
pattern RepricingRuleReport_Type_TYPECOGSBASED :: RepricingRuleReport_Type
pattern RepricingRuleReport_Type_TYPECOGSBASED = RepricingRuleReport_Type "TYPE_COGS_BASED"

-- | Sales volume based rule. Repricer will adjust the offer price based on the offer\'s sales volume in the past period of time defined within the rule.
pattern RepricingRuleReport_Type_TYPESALESVOLUMEBASED :: RepricingRuleReport_Type
pattern RepricingRuleReport_Type_TYPESALESVOLUMEBASED = RepricingRuleReport_Type "TYPE_SALES_VOLUME_BASED"

-- | Competitive price rule. Repricer will adjust the offer price based on the min price from a list of unnamed big competitors.
pattern RepricingRuleReport_Type_TYPECOMPETITIVEPRICE :: RepricingRuleReport_Type
pattern RepricingRuleReport_Type_TYPECOMPETITIVEPRICE = RepricingRuleReport_Type "TYPE_COMPETITIVE_PRICE"

{-# COMPLETE
  RepricingRuleReport_Type_REPRICINGRULETYPEUNSPECIFIED,
  RepricingRuleReport_Type_TYPESTATSBASED,
  RepricingRuleReport_Type_TYPECOGSBASED,
  RepricingRuleReport_Type_TYPESALESVOLUMEBASED,
  RepricingRuleReport_Type_TYPECOMPETITIVEPRICE,
  RepricingRuleReport_Type
  #-}

-- | Verification method to receive verification code.
newtype RequestPhoneVerificationRequest_PhoneVerificationMethod = RequestPhoneVerificationRequest_PhoneVerificationMethod {fromRequestPhoneVerificationRequest_PhoneVerificationMethod :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown method.
pattern RequestPhoneVerificationRequest_PhoneVerificationMethod_PHONEVERIFICATIONMETHODUNSPECIFIED :: RequestPhoneVerificationRequest_PhoneVerificationMethod
pattern RequestPhoneVerificationRequest_PhoneVerificationMethod_PHONEVERIFICATIONMETHODUNSPECIFIED = RequestPhoneVerificationRequest_PhoneVerificationMethod "PHONE_VERIFICATION_METHOD_UNSPECIFIED"

-- | Receive verification code by SMS.
pattern RequestPhoneVerificationRequest_PhoneVerificationMethod_Sms :: RequestPhoneVerificationRequest_PhoneVerificationMethod
pattern RequestPhoneVerificationRequest_PhoneVerificationMethod_Sms = RequestPhoneVerificationRequest_PhoneVerificationMethod "SMS"

-- | Receive verification code by phone call.
pattern RequestPhoneVerificationRequest_PhoneVerificationMethod_PHONECALL :: RequestPhoneVerificationRequest_PhoneVerificationMethod
pattern RequestPhoneVerificationRequest_PhoneVerificationMethod_PHONECALL = RequestPhoneVerificationRequest_PhoneVerificationMethod "PHONE_CALL"

{-# COMPLETE
  RequestPhoneVerificationRequest_PhoneVerificationMethod_PHONEVERIFICATIONMETHODUNSPECIFIED,
  RequestPhoneVerificationRequest_PhoneVerificationMethod_Sms,
  RequestPhoneVerificationRequest_PhoneVerificationMethod_PHONECALL,
  RequestPhoneVerificationRequest_PhoneVerificationMethod
  #-}

newtype ReturnPolicyOnline_ItemConditionsItem = ReturnPolicyOnline_ItemConditionsItem {fromReturnPolicyOnline_ItemConditionsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ReturnPolicyOnline_ItemConditionsItem_ITEMCONDITIONUNSPECIFIED :: ReturnPolicyOnline_ItemConditionsItem
pattern ReturnPolicyOnline_ItemConditionsItem_ITEMCONDITIONUNSPECIFIED = ReturnPolicyOnline_ItemConditionsItem "ITEM_CONDITION_UNSPECIFIED"

-- | New.
pattern ReturnPolicyOnline_ItemConditionsItem_New :: ReturnPolicyOnline_ItemConditionsItem
pattern ReturnPolicyOnline_ItemConditionsItem_New = ReturnPolicyOnline_ItemConditionsItem "NEW"

-- | Used.
pattern ReturnPolicyOnline_ItemConditionsItem_Used :: ReturnPolicyOnline_ItemConditionsItem
pattern ReturnPolicyOnline_ItemConditionsItem_Used = ReturnPolicyOnline_ItemConditionsItem "USED"

{-# COMPLETE
  ReturnPolicyOnline_ItemConditionsItem_ITEMCONDITIONUNSPECIFIED,
  ReturnPolicyOnline_ItemConditionsItem_New,
  ReturnPolicyOnline_ItemConditionsItem_Used,
  ReturnPolicyOnline_ItemConditionsItem
  #-}

newtype ReturnPolicyOnline_ReturnMethodsItem = ReturnPolicyOnline_ReturnMethodsItem {fromReturnPolicyOnline_ReturnMethodsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ReturnPolicyOnline_ReturnMethodsItem_RETURNMETHODUNSPECIFIED :: ReturnPolicyOnline_ReturnMethodsItem
pattern ReturnPolicyOnline_ReturnMethodsItem_RETURNMETHODUNSPECIFIED = ReturnPolicyOnline_ReturnMethodsItem "RETURN_METHOD_UNSPECIFIED"

-- | By mail.
pattern ReturnPolicyOnline_ReturnMethodsItem_BYMAIL :: ReturnPolicyOnline_ReturnMethodsItem
pattern ReturnPolicyOnline_ReturnMethodsItem_BYMAIL = ReturnPolicyOnline_ReturnMethodsItem "BY_MAIL"

-- | In store.
pattern ReturnPolicyOnline_ReturnMethodsItem_INSTORE :: ReturnPolicyOnline_ReturnMethodsItem
pattern ReturnPolicyOnline_ReturnMethodsItem_INSTORE = ReturnPolicyOnline_ReturnMethodsItem "IN_STORE"

-- | At a kiosk.
pattern ReturnPolicyOnline_ReturnMethodsItem_ATAKIOSK :: ReturnPolicyOnline_ReturnMethodsItem
pattern ReturnPolicyOnline_ReturnMethodsItem_ATAKIOSK = ReturnPolicyOnline_ReturnMethodsItem "AT_A_KIOSK"

{-# COMPLETE
  ReturnPolicyOnline_ReturnMethodsItem_RETURNMETHODUNSPECIFIED,
  ReturnPolicyOnline_ReturnMethodsItem_BYMAIL,
  ReturnPolicyOnline_ReturnMethodsItem_INSTORE,
  ReturnPolicyOnline_ReturnMethodsItem_ATAKIOSK,
  ReturnPolicyOnline_ReturnMethodsItem
  #-}

-- | Policy type.
newtype ReturnPolicyOnlinePolicy_Type = ReturnPolicyOnlinePolicy_Type {fromReturnPolicyOnlinePolicy_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ReturnPolicyOnlinePolicy_Type_TYPEUNSPECIFIED :: ReturnPolicyOnlinePolicy_Type
pattern ReturnPolicyOnlinePolicy_Type_TYPEUNSPECIFIED = ReturnPolicyOnlinePolicy_Type "TYPE_UNSPECIFIED"

-- | Number of days after a return is delivered.
pattern ReturnPolicyOnlinePolicy_Type_NUMBEROFDAYSAFTERDELIVERY :: ReturnPolicyOnlinePolicy_Type
pattern ReturnPolicyOnlinePolicy_Type_NUMBEROFDAYSAFTERDELIVERY = ReturnPolicyOnlinePolicy_Type "NUMBER_OF_DAYS_AFTER_DELIVERY"

-- | No returns.
pattern ReturnPolicyOnlinePolicy_Type_NORETURNS :: ReturnPolicyOnlinePolicy_Type
pattern ReturnPolicyOnlinePolicy_Type_NORETURNS = ReturnPolicyOnlinePolicy_Type "NO_RETURNS"

-- | Life time returns.
pattern ReturnPolicyOnlinePolicy_Type_LIFETIMERETURNS :: ReturnPolicyOnlinePolicy_Type
pattern ReturnPolicyOnlinePolicy_Type_LIFETIMERETURNS = ReturnPolicyOnlinePolicy_Type "LIFETIME_RETURNS"

{-# COMPLETE
  ReturnPolicyOnlinePolicy_Type_TYPEUNSPECIFIED,
  ReturnPolicyOnlinePolicy_Type_NUMBEROFDAYSAFTERDELIVERY,
  ReturnPolicyOnlinePolicy_Type_NORETURNS,
  ReturnPolicyOnlinePolicy_Type_LIFETIMERETURNS,
  ReturnPolicyOnlinePolicy_Type
  #-}

-- | The corresponding return label source.
newtype ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource = ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource {fromReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_RETURNLABELSOURCEUNSPECIFIED :: ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_RETURNLABELSOURCEUNSPECIFIED = ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource "RETURN_LABEL_SOURCE_UNSPECIFIED"

-- | Download and print the label.
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_DOWNLOADANDPRINT :: ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_DOWNLOADANDPRINT = ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource "DOWNLOAD_AND_PRINT"

-- | Label in the box.
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_INTHEBOX :: ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_INTHEBOX = ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource "IN_THE_BOX"

-- | Customers\' responsibility to get the label.
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_CUSTOMERRESPONSIBILITY :: ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_CUSTOMERRESPONSIBILITY = ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource "CUSTOMER_RESPONSIBILITY"

{-# COMPLETE
  ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_RETURNLABELSOURCEUNSPECIFIED,
  ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_DOWNLOADANDPRINT,
  ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_INTHEBOX,
  ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource_CUSTOMERRESPONSIBILITY,
  ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnLabelSource
  #-}

-- | The return reason category.
newtype ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory = ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory {fromReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_RETURNREASONCATEGORYUNSPECIFIED :: ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_RETURNREASONCATEGORYUNSPECIFIED = ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory "RETURN_REASON_CATEGORY_UNSPECIFIED"

-- | Buyer remorse.
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_BUYERREMORSE :: ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_BUYERREMORSE = ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory "BUYER_REMORSE"

-- | Item defect.
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_ITEMDEFECT :: ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory
pattern ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_ITEMDEFECT = ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory "ITEM_DEFECT"

{-# COMPLETE
  ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_RETURNREASONCATEGORYUNSPECIFIED,
  ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_BUYERREMORSE,
  ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory_ITEMDEFECT,
  ReturnPolicyOnlineReturnReasonCategoryInfo_ReturnReasonCategory
  #-}

-- | Type of return shipping fee.
newtype ReturnPolicyOnlineReturnShippingFee_Type = ReturnPolicyOnlineReturnShippingFee_Type {fromReturnPolicyOnlineReturnShippingFee_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern ReturnPolicyOnlineReturnShippingFee_Type_TYPEUNSPECIFIED :: ReturnPolicyOnlineReturnShippingFee_Type
pattern ReturnPolicyOnlineReturnShippingFee_Type_TYPEUNSPECIFIED = ReturnPolicyOnlineReturnShippingFee_Type "TYPE_UNSPECIFIED"

-- | The return shipping fee is a fixed value.
pattern ReturnPolicyOnlineReturnShippingFee_Type_Fixed :: ReturnPolicyOnlineReturnShippingFee_Type
pattern ReturnPolicyOnlineReturnShippingFee_Type_Fixed = ReturnPolicyOnlineReturnShippingFee_Type "FIXED"

-- | Customer will pay the actual return shipping fee.
pattern ReturnPolicyOnlineReturnShippingFee_Type_CUSTOMERPAYINGACTUALFEE :: ReturnPolicyOnlineReturnShippingFee_Type
pattern ReturnPolicyOnlineReturnShippingFee_Type_CUSTOMERPAYINGACTUALFEE = ReturnPolicyOnlineReturnShippingFee_Type "CUSTOMER_PAYING_ACTUAL_FEE"

{-# COMPLETE
  ReturnPolicyOnlineReturnShippingFee_Type_TYPEUNSPECIFIED,
  ReturnPolicyOnlineReturnShippingFee_Type_Fixed,
  ReturnPolicyOnlineReturnShippingFee_Type_CUSTOMERPAYINGACTUALFEE,
  ReturnPolicyOnlineReturnShippingFee_Type
  #-}

-- | Program to which metrics apply, for example, Free Product Listing.
newtype Segments_Program = Segments_Program {fromSegments_Program :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not specified.
pattern Segments_Program_PROGRAMUNSPECIFIED :: Segments_Program
pattern Segments_Program_PROGRAMUNSPECIFIED = Segments_Program "PROGRAM_UNSPECIFIED"

-- | Shopping Ads.
pattern Segments_Program_SHOPPINGADS :: Segments_Program
pattern Segments_Program_SHOPPINGADS = Segments_Program "SHOPPING_ADS"

-- | Free Product Listing.
pattern Segments_Program_FREEPRODUCTLISTING :: Segments_Program
pattern Segments_Program_FREEPRODUCTLISTING = Segments_Program "FREE_PRODUCT_LISTING"

-- | Free Local Product Listing.
pattern Segments_Program_FREELOCALPRODUCTLISTING :: Segments_Program
pattern Segments_Program_FREELOCALPRODUCTLISTING = Segments_Program "FREE_LOCAL_PRODUCT_LISTING"

-- | Buy on Google Listing.
pattern Segments_Program_BUYONGOOGLELISTING :: Segments_Program
pattern Segments_Program_BUYONGOOGLELISTING = Segments_Program "BUY_ON_GOOGLE_LISTING"

{-# COMPLETE
  Segments_Program_PROGRAMUNSPECIFIED,
  Segments_Program_SHOPPINGADS,
  Segments_Program_FREEPRODUCTLISTING,
  Segments_Program_FREELOCALPRODUCTLISTING,
  Segments_Program_BUYONGOOGLELISTING,
  Segments_Program
  #-}

-- | State of the program. @ENABLED@ if there are offers for at least one region.
newtype ShoppingAdsProgramStatus_GlobalState = ShoppingAdsProgramStatus_GlobalState {fromShoppingAdsProgramStatus_GlobalState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | State is unknown.
pattern ShoppingAdsProgramStatus_GlobalState_PROGRAMSTATEUNSPECIFIED :: ShoppingAdsProgramStatus_GlobalState
pattern ShoppingAdsProgramStatus_GlobalState_PROGRAMSTATEUNSPECIFIED = ShoppingAdsProgramStatus_GlobalState "PROGRAM_STATE_UNSPECIFIED"

-- | Program is not enabled for any country.
pattern ShoppingAdsProgramStatus_GlobalState_NOTENABLED :: ShoppingAdsProgramStatus_GlobalState
pattern ShoppingAdsProgramStatus_GlobalState_NOTENABLED = ShoppingAdsProgramStatus_GlobalState "NOT_ENABLED"

-- | No products have been uploaded for any region. Upload products to Merchant Center.
pattern ShoppingAdsProgramStatus_GlobalState_NOOFFERSUPLOADED :: ShoppingAdsProgramStatus_GlobalState
pattern ShoppingAdsProgramStatus_GlobalState_NOOFFERSUPLOADED = ShoppingAdsProgramStatus_GlobalState "NO_OFFERS_UPLOADED"

-- | Program is enabled and offers are uploaded for at least one country.
pattern ShoppingAdsProgramStatus_GlobalState_Enabled :: ShoppingAdsProgramStatus_GlobalState
pattern ShoppingAdsProgramStatus_GlobalState_Enabled = ShoppingAdsProgramStatus_GlobalState "ENABLED"

{-# COMPLETE
  ShoppingAdsProgramStatus_GlobalState_PROGRAMSTATEUNSPECIFIED,
  ShoppingAdsProgramStatus_GlobalState_NOTENABLED,
  ShoppingAdsProgramStatus_GlobalState_NOOFFERSUPLOADED,
  ShoppingAdsProgramStatus_GlobalState_Enabled,
  ShoppingAdsProgramStatus_GlobalState
  #-}

-- | Eligibility status of the Shopping Ads program.
newtype ShoppingAdsProgramStatusRegionStatus_EligibilityStatus = ShoppingAdsProgramStatusRegionStatus_EligibilityStatus {fromShoppingAdsProgramStatusRegionStatus_EligibilityStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | State is not known.
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_STATEUNSPECIFIED :: ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_STATEUNSPECIFIED = ShoppingAdsProgramStatusRegionStatus_EligibilityStatus "STATE_UNSPECIFIED"

-- | If the account has no issues and review is completed successfully.
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Approved :: ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Approved = ShoppingAdsProgramStatusRegionStatus_EligibilityStatus "APPROVED"

-- | There are one or more issues that needs to be resolved for account to be active for the program. Detailed list of account issues are available in <https://developers.google.com/shopping-content/reference/rest/v2.1/accountstatuses accountstatuses> API.
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Disapproved :: ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Disapproved = ShoppingAdsProgramStatusRegionStatus_EligibilityStatus "DISAPPROVED"

-- | If account has issues but offers are servable. Some of the issue can make account DISAPPROVED after a certain deadline.
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Warning :: ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Warning = ShoppingAdsProgramStatusRegionStatus_EligibilityStatus "WARNING"

-- | Account is under review.
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_UNDERREVIEW :: ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_UNDERREVIEW = ShoppingAdsProgramStatusRegionStatus_EligibilityStatus "UNDER_REVIEW"

-- | Account is waiting for review to start.
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_PENDINGREVIEW :: ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_PENDINGREVIEW = ShoppingAdsProgramStatusRegionStatus_EligibilityStatus "PENDING_REVIEW"

-- | Program is currently onboarding. Upload valid offers to complete onboarding.
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Onboarding :: ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Onboarding = ShoppingAdsProgramStatusRegionStatus_EligibilityStatus "ONBOARDING"

{-# COMPLETE
  ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_STATEUNSPECIFIED,
  ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Approved,
  ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Disapproved,
  ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Warning,
  ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_UNDERREVIEW,
  ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_PENDINGREVIEW,
  ShoppingAdsProgramStatusRegionStatus_EligibilityStatus_Onboarding,
  ShoppingAdsProgramStatusRegionStatus_EligibilityStatus
  #-}

-- | If a program is eligible for review in a specific region. Only visible if @eligibilityStatus@ is @DISAPPROVED@.
newtype ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus = ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus {fromShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Review eligibility state is unknown.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_REVIEWELIGIBILITYUNSPECIFIED :: ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_REVIEWELIGIBILITYUNSPECIFIED = ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus "REVIEW_ELIGIBILITY_UNSPECIFIED"

-- | Account is eligible for review for a specified region code.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_Eligible :: ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_Eligible = ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus "ELIGIBLE"

-- | Account is not eligible for review for a specified region code.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_Ineligible :: ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
pattern ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_Ineligible = ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus "INELIGIBLE"

{-# COMPLETE
  ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_REVIEWELIGIBILITYUNSPECIFIED,
  ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_Eligible,
  ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus_Ineligible,
  ShoppingAdsProgramStatusRegionStatus_ReviewEligibilityStatus
  #-}

-- | Review ineligibility reason if account is not eligible for review.
newtype ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason {fromShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Requesting a review from Google is not possible.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_REVIEWINELIGIBILITYREASONUNSPECIFIED :: ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_REVIEWINELIGIBILITYREASONUNSPECIFIED = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason "REVIEW_INELIGIBILITY_REASON_UNSPECIFIED"

-- | All onboarding issues needs to be fixed.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ONBOARDINGISSUES :: ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ONBOARDINGISSUES = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason "ONBOARDING_ISSUES"

-- | Not enough offers uploaded for this country.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_NOTENOUGHOFFERS :: ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_NOTENOUGHOFFERS = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason "NOT_ENOUGH_OFFERS"

-- | Cooldown period applies. Wait until cooldown period ends.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_INCOOLDOWNPERIOD :: ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_INCOOLDOWNPERIOD = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason "IN_COOLDOWN_PERIOD"

-- | Account is already under review.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYUNDERREVIEW :: ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYUNDERREVIEW = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason "ALREADY_UNDER_REVIEW"

-- | No issues available to review.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_NOREVIEWREQUIRED :: ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_NOREVIEWREQUIRED = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason "NO_REVIEW_REQUIRED"

-- | Account will be automatically reviewed at the end of the grace period.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_WILLBEREVIEWEDAUTOMATICALLY :: ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_WILLBEREVIEWEDAUTOMATICALLY = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason "WILL_BE_REVIEWED_AUTOMATICALLY"

-- | Account is retired. Should not appear in MC.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ISRETIRED :: ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ISRETIRED = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason "IS_RETIRED"

-- | Account was already reviewd.
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYREVIEWED :: ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
pattern ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYREVIEWED = ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason "ALREADY_REVIEWED"

{-# COMPLETE
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_REVIEWINELIGIBILITYREASONUNSPECIFIED,
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ONBOARDINGISSUES,
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_NOTENOUGHOFFERS,
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_INCOOLDOWNPERIOD,
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYUNDERREVIEW,
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_NOREVIEWREQUIRED,
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_WILLBEREVIEWEDAUTOMATICALLY,
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ISRETIRED,
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason_ALREADYREVIEWED,
  ShoppingAdsProgramStatusRegionStatus_ReviewIneligibilityReason
  #-}

-- | Verification method used to receive verification code.
newtype VerifyPhoneNumberRequest_PhoneVerificationMethod = VerifyPhoneNumberRequest_PhoneVerificationMethod {fromVerifyPhoneNumberRequest_PhoneVerificationMethod :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown method.
pattern VerifyPhoneNumberRequest_PhoneVerificationMethod_PHONEVERIFICATIONMETHODUNSPECIFIED :: VerifyPhoneNumberRequest_PhoneVerificationMethod
pattern VerifyPhoneNumberRequest_PhoneVerificationMethod_PHONEVERIFICATIONMETHODUNSPECIFIED = VerifyPhoneNumberRequest_PhoneVerificationMethod "PHONE_VERIFICATION_METHOD_UNSPECIFIED"

-- | Receive verification code by SMS.
pattern VerifyPhoneNumberRequest_PhoneVerificationMethod_Sms :: VerifyPhoneNumberRequest_PhoneVerificationMethod
pattern VerifyPhoneNumberRequest_PhoneVerificationMethod_Sms = VerifyPhoneNumberRequest_PhoneVerificationMethod "SMS"

-- | Receive verification code by phone call.
pattern VerifyPhoneNumberRequest_PhoneVerificationMethod_PHONECALL :: VerifyPhoneNumberRequest_PhoneVerificationMethod
pattern VerifyPhoneNumberRequest_PhoneVerificationMethod_PHONECALL = VerifyPhoneNumberRequest_PhoneVerificationMethod "PHONE_CALL"

{-# COMPLETE
  VerifyPhoneNumberRequest_PhoneVerificationMethod_PHONEVERIFICATIONMETHODUNSPECIFIED,
  VerifyPhoneNumberRequest_PhoneVerificationMethod_Sms,
  VerifyPhoneNumberRequest_PhoneVerificationMethod_PHONECALL,
  VerifyPhoneNumberRequest_PhoneVerificationMethod
  #-}

-- | Controls which fields will be populated. Acceptable values are: \"merchant\" and \"css\". The default value is \"merchant\".
newtype AccountsGetView = AccountsGetView {fromAccountsGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. View is populated with Merchant Center fields.
pattern AccountsGetView_Merchant :: AccountsGetView
pattern AccountsGetView_Merchant = AccountsGetView "MERCHANT"

-- | View is populated with Comparison Shopping Services fields.
pattern AccountsGetView_Css :: AccountsGetView
pattern AccountsGetView_Css = AccountsGetView "CSS"

{-# COMPLETE
  AccountsGetView_Merchant,
  AccountsGetView_Css,
  AccountsGetView
  #-}

-- | Controls which fields will be populated. Acceptable values are: \"merchant\" and \"css\". The default value is \"merchant\".
newtype AccountsListView = AccountsListView {fromAccountsListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default. View is populated with Merchant Center fields.
pattern AccountsListView_Merchant :: AccountsListView
pattern AccountsListView_Merchant = AccountsListView "MERCHANT"

-- | View is populated with Comparison Shopping Services fields.
pattern AccountsListView_Css :: AccountsListView
pattern AccountsListView_Css = AccountsListView "CSS"

{-# COMPLETE
  AccountsListView_Merchant,
  AccountsListView_Css,
  AccountsListView
  #-}

-- | Return the results in the specified order.
newtype OrderreturnsListOrderBy = OrderreturnsListOrderBy {fromOrderreturnsListOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Return results in descending order.
pattern OrderreturnsListOrderBy_RETURNCREATIONTIMEDESC :: OrderreturnsListOrderBy
pattern OrderreturnsListOrderBy_RETURNCREATIONTIMEDESC = OrderreturnsListOrderBy "RETURN_CREATION_TIME_DESC"

-- | Return results in ascending order.
pattern OrderreturnsListOrderBy_RETURNCREATIONTIMEASC :: OrderreturnsListOrderBy
pattern OrderreturnsListOrderBy_RETURNCREATIONTIMEASC = OrderreturnsListOrderBy "RETURN_CREATION_TIME_ASC"

{-# COMPLETE
  OrderreturnsListOrderBy_RETURNCREATIONTIMEDESC,
  OrderreturnsListOrderBy_RETURNCREATIONTIMEASC,
  OrderreturnsListOrderBy
  #-}

-- | Obtains order returns that match any shipment state provided in this parameter. When this parameter is not provided, order returns are obtained regardless of their shipment states.
newtype OrderreturnsListShipmentStates = OrderreturnsListShipmentStates {fromOrderreturnsListShipmentStates :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Return shipments with @new@ state only.
pattern OrderreturnsListShipmentStates_New :: OrderreturnsListShipmentStates
pattern OrderreturnsListShipmentStates_New = OrderreturnsListShipmentStates "NEW"

-- | Return shipments with @shipped@ state only.
pattern OrderreturnsListShipmentStates_Shipped :: OrderreturnsListShipmentStates
pattern OrderreturnsListShipmentStates_Shipped = OrderreturnsListShipmentStates "SHIPPED"

-- | Return shipments with @completed@ state only.
pattern OrderreturnsListShipmentStates_Completed :: OrderreturnsListShipmentStates
pattern OrderreturnsListShipmentStates_Completed = OrderreturnsListShipmentStates "COMPLETED"

-- | Return shipments with @undeliverable@ state only.
pattern OrderreturnsListShipmentStates_Undeliverable :: OrderreturnsListShipmentStates
pattern OrderreturnsListShipmentStates_Undeliverable = OrderreturnsListShipmentStates "UNDELIVERABLE"

-- | Return shipments with @pending@ state only.
pattern OrderreturnsListShipmentStates_Pending :: OrderreturnsListShipmentStates
pattern OrderreturnsListShipmentStates_Pending = OrderreturnsListShipmentStates "PENDING"

{-# COMPLETE
  OrderreturnsListShipmentStates_New,
  OrderreturnsListShipmentStates_Shipped,
  OrderreturnsListShipmentStates_Completed,
  OrderreturnsListShipmentStates_Undeliverable,
  OrderreturnsListShipmentStates_Pending,
  OrderreturnsListShipmentStates
  #-}

-- | Obtains order returns that match any shipment status provided in this parameter. When this parameter is not provided, order returns are obtained regardless of their shipment statuses.
newtype OrderreturnsListShipmentStatus = OrderreturnsListShipmentStatus {fromOrderreturnsListShipmentStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Return shipments with @new@ status only.
pattern OrderreturnsListShipmentStatus_New :: OrderreturnsListShipmentStatus
pattern OrderreturnsListShipmentStatus_New = OrderreturnsListShipmentStatus "NEW"

-- | Return shipments with @inProgress@ status only.
pattern OrderreturnsListShipmentStatus_INPROGRESS :: OrderreturnsListShipmentStatus
pattern OrderreturnsListShipmentStatus_INPROGRESS = OrderreturnsListShipmentStatus "IN_PROGRESS"

-- | Return shipments with @processed@ status only.
pattern OrderreturnsListShipmentStatus_Processed :: OrderreturnsListShipmentStatus
pattern OrderreturnsListShipmentStatus_Processed = OrderreturnsListShipmentStatus "PROCESSED"

{-# COMPLETE
  OrderreturnsListShipmentStatus_New,
  OrderreturnsListShipmentStatus_INPROGRESS,
  OrderreturnsListShipmentStatus_Processed,
  OrderreturnsListShipmentStatus
  #-}

-- | Obtains order returns that match any shipment type provided in this parameter. When this parameter is not provided, order returns are obtained regardless of their shipment types.
newtype OrderreturnsListShipmentTypes = OrderreturnsListShipmentTypes {fromOrderreturnsListShipmentTypes :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Return shipments with type @byMail@ only.
pattern OrderreturnsListShipmentTypes_BYMAIL :: OrderreturnsListShipmentTypes
pattern OrderreturnsListShipmentTypes_BYMAIL = OrderreturnsListShipmentTypes "BY_MAIL"

-- | Return shipments with type @returnless@ only.
pattern OrderreturnsListShipmentTypes_Returnless :: OrderreturnsListShipmentTypes
pattern OrderreturnsListShipmentTypes_Returnless = OrderreturnsListShipmentTypes "RETURNLESS"

-- | Return shipments with type @contactCustomerSupport@ only.
pattern OrderreturnsListShipmentTypes_CONTACTCUSTOMERSUPPORT :: OrderreturnsListShipmentTypes
pattern OrderreturnsListShipmentTypes_CONTACTCUSTOMERSUPPORT = OrderreturnsListShipmentTypes "CONTACT_CUSTOMER_SUPPORT"

{-# COMPLETE
  OrderreturnsListShipmentTypes_BYMAIL,
  OrderreturnsListShipmentTypes_Returnless,
  OrderreturnsListShipmentTypes_CONTACTCUSTOMERSUPPORT,
  OrderreturnsListShipmentTypes
  #-}

-- | The name of the template to retrieve.
newtype OrdersGettestordertemplateTemplateName = OrdersGettestordertemplateTemplateName {fromOrdersGettestordertemplateTemplateName :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Get @template1@.
pattern OrdersGettestordertemplateTemplateName_TEMPLATE1 :: OrdersGettestordertemplateTemplateName
pattern OrdersGettestordertemplateTemplateName_TEMPLATE1 = OrdersGettestordertemplateTemplateName "TEMPLATE1"

-- | Get @template2@.
pattern OrdersGettestordertemplateTemplateName_TEMPLATE2 :: OrdersGettestordertemplateTemplateName
pattern OrdersGettestordertemplateTemplateName_TEMPLATE2 = OrdersGettestordertemplateTemplateName "TEMPLATE2"

-- | Get @template1A@.
pattern OrdersGettestordertemplateTemplateName_TEMPLATE1A :: OrdersGettestordertemplateTemplateName
pattern OrdersGettestordertemplateTemplateName_TEMPLATE1A = OrdersGettestordertemplateTemplateName "TEMPLATE1A"

-- | Get @template1B@.
pattern OrdersGettestordertemplateTemplateName_TEMPLATE1B :: OrdersGettestordertemplateTemplateName
pattern OrdersGettestordertemplateTemplateName_TEMPLATE1B = OrdersGettestordertemplateTemplateName "TEMPLATE1B"

-- | Get @template3@.
pattern OrdersGettestordertemplateTemplateName_TEMPLATE3 :: OrdersGettestordertemplateTemplateName
pattern OrdersGettestordertemplateTemplateName_TEMPLATE3 = OrdersGettestordertemplateTemplateName "TEMPLATE3"

-- | Get @template4@.
pattern OrdersGettestordertemplateTemplateName_TEMPLATE4 :: OrdersGettestordertemplateTemplateName
pattern OrdersGettestordertemplateTemplateName_TEMPLATE4 = OrdersGettestordertemplateTemplateName "TEMPLATE4"

{-# COMPLETE
  OrdersGettestordertemplateTemplateName_TEMPLATE1,
  OrdersGettestordertemplateTemplateName_TEMPLATE2,
  OrdersGettestordertemplateTemplateName_TEMPLATE1A,
  OrdersGettestordertemplateTemplateName_TEMPLATE1B,
  OrdersGettestordertemplateTemplateName_TEMPLATE3,
  OrdersGettestordertemplateTemplateName_TEMPLATE4,
  OrdersGettestordertemplateTemplateName
  #-}

-- | Obtains orders that match any of the specified statuses. Note that @active@ is a shortcut for @pendingShipment@ and @partiallyShipped@, and @completed@ is a shortcut for @shipped@, @partiallyDelivered@, @delivered@, @partiallyReturned@, @returned@, and @canceled@.
newtype OrdersListStatuses = OrdersListStatuses {fromOrdersListStatuses :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Return orders with status @active@. The @active@ status includes @pendingShipment@ and @partiallyShipped@ orders.
pattern OrdersListStatuses_Active :: OrdersListStatuses
pattern OrdersListStatuses_Active = OrdersListStatuses "ACTIVE"

-- | Return orders with status @completed@. The @completed@ status includes @shipped@, @partiallyDelivered@, @delivered@, @partiallyReturned@, @returned@, and @canceled@ orders.
pattern OrdersListStatuses_Completed :: OrdersListStatuses
pattern OrdersListStatuses_Completed = OrdersListStatuses "COMPLETED"

-- | Return orders with status @canceled@.
pattern OrdersListStatuses_Canceled :: OrdersListStatuses
pattern OrdersListStatuses_Canceled = OrdersListStatuses "CANCELED"

-- | Return orders with status @inProgress@.
pattern OrdersListStatuses_INPROGRESS :: OrdersListStatuses
pattern OrdersListStatuses_INPROGRESS = OrdersListStatuses "IN_PROGRESS"

-- | Return orders with status @pendingShipment@.
pattern OrdersListStatuses_PENDINGSHIPMENT :: OrdersListStatuses
pattern OrdersListStatuses_PENDINGSHIPMENT = OrdersListStatuses "PENDING_SHIPMENT"

-- | Return orders with status @partiallyShipped@.
pattern OrdersListStatuses_PARTIALLYSHIPPED :: OrdersListStatuses
pattern OrdersListStatuses_PARTIALLYSHIPPED = OrdersListStatuses "PARTIALLY_SHIPPED"

-- | Return orders with status @shipped@.
pattern OrdersListStatuses_Shipped :: OrdersListStatuses
pattern OrdersListStatuses_Shipped = OrdersListStatuses "SHIPPED"

-- | Return orders with status @partiallyDelivered@.
pattern OrdersListStatuses_PARTIALLYDELIVERED :: OrdersListStatuses
pattern OrdersListStatuses_PARTIALLYDELIVERED = OrdersListStatuses "PARTIALLY_DELIVERED"

-- | Return orders with status @delivered@.
pattern OrdersListStatuses_Delivered :: OrdersListStatuses
pattern OrdersListStatuses_Delivered = OrdersListStatuses "DELIVERED"

-- | Return orders with status @partiallyReturned@.
pattern OrdersListStatuses_PARTIALLYRETURNED :: OrdersListStatuses
pattern OrdersListStatuses_PARTIALLYRETURNED = OrdersListStatuses "PARTIALLY_RETURNED"

-- | Return orders with status @returned@.
pattern OrdersListStatuses_Returned :: OrdersListStatuses
pattern OrdersListStatuses_Returned = OrdersListStatuses "RETURNED"

{-# COMPLETE
  OrdersListStatuses_Active,
  OrdersListStatuses_Completed,
  OrdersListStatuses_Canceled,
  OrdersListStatuses_INPROGRESS,
  OrdersListStatuses_PENDINGSHIPMENT,
  OrdersListStatuses_PARTIALLYSHIPPED,
  OrdersListStatuses_Shipped,
  OrdersListStatuses_PARTIALLYDELIVERED,
  OrdersListStatuses_Delivered,
  OrdersListStatuses_PARTIALLYRETURNED,
  OrdersListStatuses_Returned,
  OrdersListStatuses
  #-}
