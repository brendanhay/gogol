{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ShoppingContent.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
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

    -- * AccountIssueImpact_Severity
    AccountIssueImpact_Severity
      ( AccountIssueImpact_Severity_SEVERITYUNSPECIFIED,
        AccountIssueImpact_Severity_Error',
        AccountIssueImpact_Severity_Warning,
        AccountIssueImpact_Severity_Info,
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

    -- * BuiltInSimpleAction_Type
    BuiltInSimpleAction_Type
      ( BuiltInSimpleAction_Type_BUILTINSIMPLEACTIONTYPEUNSPECIFIED,
        BuiltInSimpleAction_Type_VERIFYPHONE,
        BuiltInSimpleAction_Type_CLAIMWEBSITE,
        BuiltInSimpleAction_Type_ADDPRODUCTS,
        BuiltInSimpleAction_Type_ADDCONTACTINFO,
        BuiltInSimpleAction_Type_LINKADSACCOUNT,
        BuiltInSimpleAction_Type_ADDBUSINESSREGISTRATIONNUMBER,
        BuiltInSimpleAction_Type_EDITITEMATTRIBUTE,
        BuiltInSimpleAction_Type_FIXACCOUNTISSUE,
        BuiltInSimpleAction_Type_SHOWADDITIONALCONTENT,
        ..
      ),

    -- * Callout_StyleHint
    Callout_StyleHint
      ( Callout_StyleHint_CALLOUTSTYLEHINTUNSPECIFIED,
        Callout_StyleHint_Error',
        Callout_StyleHint_Warning,
        Callout_StyleHint_Info,
        ..
      ),

    -- * CheckoutSettings_EffectiveEnrollmentState
    CheckoutSettings_EffectiveEnrollmentState
      ( CheckoutSettings_EffectiveEnrollmentState_CHECKOUTONMERCHANTENROLLMENTSTATEUNSPECIFIED,
        CheckoutSettings_EffectiveEnrollmentState_Inactive,
        CheckoutSettings_EffectiveEnrollmentState_Enrolled,
        CheckoutSettings_EffectiveEnrollmentState_OPTOUT,
        ..
      ),

    -- * CheckoutSettings_EffectiveReviewState
    CheckoutSettings_EffectiveReviewState
      ( CheckoutSettings_EffectiveReviewState_CHECKOUTONMERCHANTREVIEWSTATEUNSPECIFIED,
        CheckoutSettings_EffectiveReviewState_INREVIEW,
        CheckoutSettings_EffectiveReviewState_Approved,
        CheckoutSettings_EffectiveReviewState_Disapproved,
        ..
      ),

    -- * CheckoutSettings_EnrollmentState
    CheckoutSettings_EnrollmentState
      ( CheckoutSettings_EnrollmentState_CHECKOUTONMERCHANTENROLLMENTSTATEUNSPECIFIED,
        CheckoutSettings_EnrollmentState_Inactive,
        CheckoutSettings_EnrollmentState_Enrolled,
        CheckoutSettings_EnrollmentState_OPTOUT,
        ..
      ),

    -- * CheckoutSettings_ReviewState
    CheckoutSettings_ReviewState
      ( CheckoutSettings_ReviewState_CHECKOUTONMERCHANTREVIEWSTATEUNSPECIFIED,
        CheckoutSettings_ReviewState_INREVIEW,
        CheckoutSettings_ReviewState_Approved,
        CheckoutSettings_ReviewState_Disapproved,
        ..
      ),

    -- * CompetitiveVisibility_TrafficSource
    CompetitiveVisibility_TrafficSource
      ( CompetitiveVisibility_TrafficSource_Unknown,
        CompetitiveVisibility_TrafficSource_Organic,
        CompetitiveVisibility_TrafficSource_Ads,
        CompetitiveVisibility_TrafficSource_All,
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

    -- * ExternalAction_Type
    ExternalAction_Type
      ( ExternalAction_Type_EXTERNALACTIONTYPEUNSPECIFIED,
        ExternalAction_Type_REVIEWPRODUCTISSUEINMERCHANTCENTER,
        ExternalAction_Type_REVIEWACCOUNTISSUEINMERCHANTCENTER,
        ExternalAction_Type_LEGALAPPEALINHELPCENTER,
        ExternalAction_Type_VERIFYIDENTITYINMERCHANTCENTER,
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

    -- * InputFieldTextInput_Type
    InputFieldTextInput_Type
      ( InputFieldTextInput_Type_TEXTINPUTTYPEUNSPECIFIED,
        InputFieldTextInput_Type_GENERICSHORTTEXT,
        InputFieldTextInput_Type_GENERICLONGTEXT,
        ..
      ),

    -- * OrderTrackingSignalShippingInfo_ShippingStatus
    OrderTrackingSignalShippingInfo_ShippingStatus
      ( OrderTrackingSignalShippingInfo_ShippingStatus_SHIPPINGSTATEUNSPECIFIED,
        OrderTrackingSignalShippingInfo_ShippingStatus_Shipped,
        OrderTrackingSignalShippingInfo_ShippingStatus_Delivered,
        ..
      ),

    -- * PriceInsights_Effectiveness
    PriceInsights_Effectiveness
      ( PriceInsights_Effectiveness_EFFECTIVENESSUNSPECIFIED,
        PriceInsights_Effectiveness_Low,
        PriceInsights_Effectiveness_Medium,
        PriceInsights_Effectiveness_High,
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

    -- * ProductIssueImpact_Severity
    ProductIssueImpact_Severity
      ( ProductIssueImpact_Severity_SEVERITYUNSPECIFIED,
        ProductIssueImpact_Severity_Error',
        ProductIssueImpact_Severity_Warning,
        ProductIssueImpact_Severity_Info,
        ..
      ),

    -- * ProductSustainabilityIncentive_Type
    ProductSustainabilityIncentive_Type
      ( ProductSustainabilityIncentive_Type_TYPEUNSPECIFIED,
        ProductSustainabilityIncentive_Type_EVTAXCREDIT,
        ProductSustainabilityIncentive_Type_EVPRICEDISCOUNT,
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

    -- * ProductView_ClickPotential
    ProductView_ClickPotential
      ( ProductView_ClickPotential_CLICKPOTENTIALUNSPECIFIED,
        ProductView_ClickPotential_Low,
        ProductView_ClickPotential_Medium,
        ProductView_ClickPotential_High,
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

    -- * RenderAccountIssuesRequestPayload_ContentOption
    RenderAccountIssuesRequestPayload_ContentOption
      ( RenderAccountIssuesRequestPayload_ContentOption_CONTENTOPTIONUNSPECIFIED,
        RenderAccountIssuesRequestPayload_ContentOption_PRERENDEREDHTML,
        ..
      ),

    -- * RenderAccountIssuesRequestPayload_UserInputActionOption
    RenderAccountIssuesRequestPayload_UserInputActionOption
      ( RenderAccountIssuesRequestPayload_UserInputActionOption_USERINPUTACTIONRENDERINGOPTIONUNSPECIFIED,
        RenderAccountIssuesRequestPayload_UserInputActionOption_REDIRECTTOMERCHANTCENTER,
        RenderAccountIssuesRequestPayload_UserInputActionOption_BUILTINUSERINPUTACTIONS,
        ..
      ),

    -- * RenderProductIssuesRequestPayload_ContentOption
    RenderProductIssuesRequestPayload_ContentOption
      ( RenderProductIssuesRequestPayload_ContentOption_CONTENTOPTIONUNSPECIFIED,
        RenderProductIssuesRequestPayload_ContentOption_PRERENDEREDHTML,
        ..
      ),

    -- * RenderProductIssuesRequestPayload_UserInputActionOption
    RenderProductIssuesRequestPayload_UserInputActionOption
      ( RenderProductIssuesRequestPayload_UserInputActionOption_USERINPUTACTIONRENDERINGOPTIONUNSPECIFIED,
        RenderProductIssuesRequestPayload_UserInputActionOption_REDIRECTTOMERCHANTCENTER,
        RenderProductIssuesRequestPayload_UserInputActionOption_BUILTINUSERINPUTACTIONS,
        ..
      ),

    -- * ReportInteractionRequest_InteractionType
    ReportInteractionRequest_InteractionType
      ( ReportInteractionRequest_InteractionType_INTERACTIONTYPEUNSPECIFIED,
        ReportInteractionRequest_InteractionType_INTERACTIONDISMISS,
        ReportInteractionRequest_InteractionType_INTERACTIONCLICK,
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

    -- * TextWithTooltip_TooltipIconStyle
    TextWithTooltip_TooltipIconStyle
      ( TextWithTooltip_TooltipIconStyle_TOOLTIPICONSTYLEUNSPECIFIED,
        TextWithTooltip_TooltipIconStyle_Info,
        TextWithTooltip_TooltipIconStyle_Question,
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
  )
where

import Gogol.Prelude qualified as Core

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

-- | The severity of the issue.
newtype AccountIssueImpact_Severity = AccountIssueImpact_Severity {fromAccountIssueImpact_Severity :: Core.Text}
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
pattern AccountIssueImpact_Severity_SEVERITYUNSPECIFIED :: AccountIssueImpact_Severity
pattern AccountIssueImpact_Severity_SEVERITYUNSPECIFIED = AccountIssueImpact_Severity "SEVERITY_UNSPECIFIED"

-- | Causes either an account suspension or an item disapproval. Errors should be resolved as soon as possible to ensure items are eligible to appear in results again.
pattern AccountIssueImpact_Severity_Error' :: AccountIssueImpact_Severity
pattern AccountIssueImpact_Severity_Error' = AccountIssueImpact_Severity "ERROR"

-- | Warnings can negatively impact the performance of ads and can lead to item or account suspensions in the future unless the issue is resolved.
pattern AccountIssueImpact_Severity_Warning :: AccountIssueImpact_Severity
pattern AccountIssueImpact_Severity_Warning = AccountIssueImpact_Severity "WARNING"

-- | Infos are suggested optimizations to increase data quality. Resolving these issues is recommended, but not required.
pattern AccountIssueImpact_Severity_Info :: AccountIssueImpact_Severity
pattern AccountIssueImpact_Severity_Info = AccountIssueImpact_Severity "INFO"

{-# COMPLETE
  AccountIssueImpact_Severity_SEVERITYUNSPECIFIED,
  AccountIssueImpact_Severity_Error',
  AccountIssueImpact_Severity_Warning,
  AccountIssueImpact_Severity_Info,
  AccountIssueImpact_Severity
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

-- | Cross-channel First Click model.
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

-- | The type of action that represents a functionality that is expected to be available in third-party application.
newtype BuiltInSimpleAction_Type = BuiltInSimpleAction_Type {fromBuiltInSimpleAction_Type :: Core.Text}
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
pattern BuiltInSimpleAction_Type_BUILTINSIMPLEACTIONTYPEUNSPECIFIED :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_BUILTINSIMPLEACTIONTYPEUNSPECIFIED = BuiltInSimpleAction_Type "BUILT_IN_SIMPLE_ACTION_TYPE_UNSPECIFIED"

-- | Redirect merchant to the part of your application where they can verify their phone.
pattern BuiltInSimpleAction_Type_VERIFYPHONE :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_VERIFYPHONE = BuiltInSimpleAction_Type "VERIFY_PHONE"

-- | Redirect merchant to the part of your application where they can claim their website.
pattern BuiltInSimpleAction_Type_CLAIMWEBSITE :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_CLAIMWEBSITE = BuiltInSimpleAction_Type "CLAIM_WEBSITE"

-- | Redirect merchant to the part of your application where they can add products.
pattern BuiltInSimpleAction_Type_ADDPRODUCTS :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_ADDPRODUCTS = BuiltInSimpleAction_Type "ADD_PRODUCTS"

-- | Open a form where the merchant can edit their contact information.
pattern BuiltInSimpleAction_Type_ADDCONTACTINFO :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_ADDCONTACTINFO = BuiltInSimpleAction_Type "ADD_CONTACT_INFO"

-- | Redirect merchant to the part of your application where they can link ads account.
pattern BuiltInSimpleAction_Type_LINKADSACCOUNT :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_LINKADSACCOUNT = BuiltInSimpleAction_Type "LINK_ADS_ACCOUNT"

-- | Open a form where the merchant can add their business registration number.
pattern BuiltInSimpleAction_Type_ADDBUSINESSREGISTRATIONNUMBER :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_ADDBUSINESSREGISTRATIONNUMBER = BuiltInSimpleAction_Type "ADD_BUSINESS_REGISTRATION_NUMBER"

-- | Open a form where the merchant can edit an attribute. The attribute that needs to be updated is specified in attribute_code field of the action.
pattern BuiltInSimpleAction_Type_EDITITEMATTRIBUTE :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_EDITITEMATTRIBUTE = BuiltInSimpleAction_Type "EDIT_ITEM_ATTRIBUTE"

-- | Redirect merchant from the product issues to the diagnostic page with their account issues in your application. This action will be returned only for product issues that are caused by an account issue and thus merchant should resolve the problem on the account level.
pattern BuiltInSimpleAction_Type_FIXACCOUNTISSUE :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_FIXACCOUNTISSUE = BuiltInSimpleAction_Type "FIX_ACCOUNT_ISSUE"

-- | Show additional content to the merchant. This action will be used for example to deliver a justification from national authority.
pattern BuiltInSimpleAction_Type_SHOWADDITIONALCONTENT :: BuiltInSimpleAction_Type
pattern BuiltInSimpleAction_Type_SHOWADDITIONALCONTENT = BuiltInSimpleAction_Type "SHOW_ADDITIONAL_CONTENT"

{-# COMPLETE
  BuiltInSimpleAction_Type_BUILTINSIMPLEACTIONTYPEUNSPECIFIED,
  BuiltInSimpleAction_Type_VERIFYPHONE,
  BuiltInSimpleAction_Type_CLAIMWEBSITE,
  BuiltInSimpleAction_Type_ADDPRODUCTS,
  BuiltInSimpleAction_Type_ADDCONTACTINFO,
  BuiltInSimpleAction_Type_LINKADSACCOUNT,
  BuiltInSimpleAction_Type_ADDBUSINESSREGISTRATIONNUMBER,
  BuiltInSimpleAction_Type_EDITITEMATTRIBUTE,
  BuiltInSimpleAction_Type_FIXACCOUNTISSUE,
  BuiltInSimpleAction_Type_SHOWADDITIONALCONTENT,
  BuiltInSimpleAction_Type
  #-}

-- | Can be used to render messages with different severity in different styles. Snippets off all types contain important information that should be displayed to merchants.
newtype Callout_StyleHint = Callout_StyleHint {fromCallout_StyleHint :: Core.Text}
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
pattern Callout_StyleHint_CALLOUTSTYLEHINTUNSPECIFIED :: Callout_StyleHint
pattern Callout_StyleHint_CALLOUTSTYLEHINTUNSPECIFIED = Callout_StyleHint "CALLOUT_STYLE_HINT_UNSPECIFIED"

-- | The most important type of information highlighting problems, like an unsuccessful outcome of previously requested actions.
pattern Callout_StyleHint_Error' :: Callout_StyleHint
pattern Callout_StyleHint_Error' = Callout_StyleHint "ERROR"

-- | Information warning about pending problems, risks or deadlines.
pattern Callout_StyleHint_Warning :: Callout_StyleHint
pattern Callout_StyleHint_Warning = Callout_StyleHint "WARNING"

-- | Default severity for important information like pending status of previously requested action or cooldown for re-review.
pattern Callout_StyleHint_Info :: Callout_StyleHint
pattern Callout_StyleHint_Info = Callout_StyleHint "INFO"

{-# COMPLETE
  Callout_StyleHint_CALLOUTSTYLEHINTUNSPECIFIED,
  Callout_StyleHint_Error',
  Callout_StyleHint_Warning,
  Callout_StyleHint_Info,
  Callout_StyleHint
  #-}

-- | Output only. The effective value of enrollment state for a given merchant ID. If account level settings are present then this value will be a copy of the account level settings. Otherwise, it will have the value of the parent account.
newtype CheckoutSettings_EffectiveEnrollmentState = CheckoutSettings_EffectiveEnrollmentState {fromCheckoutSettings_EffectiveEnrollmentState :: Core.Text}
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

-- | Default enrollment state when enrollment state is not specified.
pattern CheckoutSettings_EffectiveEnrollmentState_CHECKOUTONMERCHANTENROLLMENTSTATEUNSPECIFIED :: CheckoutSettings_EffectiveEnrollmentState
pattern CheckoutSettings_EffectiveEnrollmentState_CHECKOUTONMERCHANTENROLLMENTSTATEUNSPECIFIED = CheckoutSettings_EffectiveEnrollmentState "CHECKOUT_ON_MERCHANT_ENROLLMENT_STATE_UNSPECIFIED"

-- | Merchant has not enrolled into the feature.
pattern CheckoutSettings_EffectiveEnrollmentState_Inactive :: CheckoutSettings_EffectiveEnrollmentState
pattern CheckoutSettings_EffectiveEnrollmentState_Inactive = CheckoutSettings_EffectiveEnrollmentState "INACTIVE"

-- | Merchant has enrolled into the feature by providing either an account level URL or checkout URLs as part of their feed.
pattern CheckoutSettings_EffectiveEnrollmentState_Enrolled :: CheckoutSettings_EffectiveEnrollmentState
pattern CheckoutSettings_EffectiveEnrollmentState_Enrolled = CheckoutSettings_EffectiveEnrollmentState "ENROLLED"

-- | Merchant has previously enrolled but opted out of the feature.
pattern CheckoutSettings_EffectiveEnrollmentState_OPTOUT :: CheckoutSettings_EffectiveEnrollmentState
pattern CheckoutSettings_EffectiveEnrollmentState_OPTOUT = CheckoutSettings_EffectiveEnrollmentState "OPT_OUT"

{-# COMPLETE
  CheckoutSettings_EffectiveEnrollmentState_CHECKOUTONMERCHANTENROLLMENTSTATEUNSPECIFIED,
  CheckoutSettings_EffectiveEnrollmentState_Inactive,
  CheckoutSettings_EffectiveEnrollmentState_Enrolled,
  CheckoutSettings_EffectiveEnrollmentState_OPTOUT,
  CheckoutSettings_EffectiveEnrollmentState
  #-}

-- | Output only. The effective value of review state for a given merchant ID. If account level settings are present then this value will be a copy of the account level settings. Otherwise, it will have the value of the parent account.
newtype CheckoutSettings_EffectiveReviewState = CheckoutSettings_EffectiveReviewState {fromCheckoutSettings_EffectiveReviewState :: Core.Text}
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

-- | Default review state when review state is not specified.
pattern CheckoutSettings_EffectiveReviewState_CHECKOUTONMERCHANTREVIEWSTATEUNSPECIFIED :: CheckoutSettings_EffectiveReviewState
pattern CheckoutSettings_EffectiveReviewState_CHECKOUTONMERCHANTREVIEWSTATEUNSPECIFIED = CheckoutSettings_EffectiveReviewState "CHECKOUT_ON_MERCHANT_REVIEW_STATE_UNSPECIFIED"

-- | Merchant provided URLs are being reviewed for data quality issues.
pattern CheckoutSettings_EffectiveReviewState_INREVIEW :: CheckoutSettings_EffectiveReviewState
pattern CheckoutSettings_EffectiveReviewState_INREVIEW = CheckoutSettings_EffectiveReviewState "IN_REVIEW"

-- | Merchant account has been approved. Indicates the data quality checks have passed.
pattern CheckoutSettings_EffectiveReviewState_Approved :: CheckoutSettings_EffectiveReviewState
pattern CheckoutSettings_EffectiveReviewState_Approved = CheckoutSettings_EffectiveReviewState "APPROVED"

-- | Merchant account has been disapproved due to data quality issues.
pattern CheckoutSettings_EffectiveReviewState_Disapproved :: CheckoutSettings_EffectiveReviewState
pattern CheckoutSettings_EffectiveReviewState_Disapproved = CheckoutSettings_EffectiveReviewState "DISAPPROVED"

{-# COMPLETE
  CheckoutSettings_EffectiveReviewState_CHECKOUTONMERCHANTREVIEWSTATEUNSPECIFIED,
  CheckoutSettings_EffectiveReviewState_INREVIEW,
  CheckoutSettings_EffectiveReviewState_Approved,
  CheckoutSettings_EffectiveReviewState_Disapproved,
  CheckoutSettings_EffectiveReviewState
  #-}

-- | Output only. Reflects the merchant enrollment state in @Checkout@ feature.
newtype CheckoutSettings_EnrollmentState = CheckoutSettings_EnrollmentState {fromCheckoutSettings_EnrollmentState :: Core.Text}
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

-- | Default enrollment state when enrollment state is not specified.
pattern CheckoutSettings_EnrollmentState_CHECKOUTONMERCHANTENROLLMENTSTATEUNSPECIFIED :: CheckoutSettings_EnrollmentState
pattern CheckoutSettings_EnrollmentState_CHECKOUTONMERCHANTENROLLMENTSTATEUNSPECIFIED = CheckoutSettings_EnrollmentState "CHECKOUT_ON_MERCHANT_ENROLLMENT_STATE_UNSPECIFIED"

-- | Merchant has not enrolled into the feature.
pattern CheckoutSettings_EnrollmentState_Inactive :: CheckoutSettings_EnrollmentState
pattern CheckoutSettings_EnrollmentState_Inactive = CheckoutSettings_EnrollmentState "INACTIVE"

-- | Merchant has enrolled into the feature by providing either an account level URL or checkout URLs as part of their feed.
pattern CheckoutSettings_EnrollmentState_Enrolled :: CheckoutSettings_EnrollmentState
pattern CheckoutSettings_EnrollmentState_Enrolled = CheckoutSettings_EnrollmentState "ENROLLED"

-- | Merchant has previously enrolled but opted out of the feature.
pattern CheckoutSettings_EnrollmentState_OPTOUT :: CheckoutSettings_EnrollmentState
pattern CheckoutSettings_EnrollmentState_OPTOUT = CheckoutSettings_EnrollmentState "OPT_OUT"

{-# COMPLETE
  CheckoutSettings_EnrollmentState_CHECKOUTONMERCHANTENROLLMENTSTATEUNSPECIFIED,
  CheckoutSettings_EnrollmentState_Inactive,
  CheckoutSettings_EnrollmentState_Enrolled,
  CheckoutSettings_EnrollmentState_OPTOUT,
  CheckoutSettings_EnrollmentState
  #-}

-- | Output only. Reflects the merchant review state in @Checkout@ feature. This is set based on the data quality reviews of the URL provided by the merchant. A merchant with enrollment state as @ENROLLED@ can be in the following review states: @IN_REVIEW@, @APPROVED@ or @DISAPPROVED@. A merchant must be in an enrollment_state of @ENROLLED@ before a review can begin for the merchant.
newtype CheckoutSettings_ReviewState = CheckoutSettings_ReviewState {fromCheckoutSettings_ReviewState :: Core.Text}
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

-- | Default review state when review state is not specified.
pattern CheckoutSettings_ReviewState_CHECKOUTONMERCHANTREVIEWSTATEUNSPECIFIED :: CheckoutSettings_ReviewState
pattern CheckoutSettings_ReviewState_CHECKOUTONMERCHANTREVIEWSTATEUNSPECIFIED = CheckoutSettings_ReviewState "CHECKOUT_ON_MERCHANT_REVIEW_STATE_UNSPECIFIED"

-- | Merchant provided URLs are being reviewed for data quality issues.
pattern CheckoutSettings_ReviewState_INREVIEW :: CheckoutSettings_ReviewState
pattern CheckoutSettings_ReviewState_INREVIEW = CheckoutSettings_ReviewState "IN_REVIEW"

-- | Merchant account has been approved. Indicates the data quality checks have passed.
pattern CheckoutSettings_ReviewState_Approved :: CheckoutSettings_ReviewState
pattern CheckoutSettings_ReviewState_Approved = CheckoutSettings_ReviewState "APPROVED"

-- | Merchant account has been disapproved due to data quality issues.
pattern CheckoutSettings_ReviewState_Disapproved :: CheckoutSettings_ReviewState
pattern CheckoutSettings_ReviewState_Disapproved = CheckoutSettings_ReviewState "DISAPPROVED"

{-# COMPLETE
  CheckoutSettings_ReviewState_CHECKOUTONMERCHANTREVIEWSTATEUNSPECIFIED,
  CheckoutSettings_ReviewState_INREVIEW,
  CheckoutSettings_ReviewState_Approved,
  CheckoutSettings_ReviewState_Disapproved,
  CheckoutSettings_ReviewState
  #-}

-- | Type of impression listing. Required in the @SELECT@ clause. Cannot be filtered on in the \'WHERE\' clause.
newtype CompetitiveVisibility_TrafficSource = CompetitiveVisibility_TrafficSource {fromCompetitiveVisibility_TrafficSource :: Core.Text}
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

-- | Traffic source is unknown.
pattern CompetitiveVisibility_TrafficSource_Unknown :: CompetitiveVisibility_TrafficSource
pattern CompetitiveVisibility_TrafficSource_Unknown = CompetitiveVisibility_TrafficSource "UNKNOWN"

-- | Organic traffic.
pattern CompetitiveVisibility_TrafficSource_Organic :: CompetitiveVisibility_TrafficSource
pattern CompetitiveVisibility_TrafficSource_Organic = CompetitiveVisibility_TrafficSource "ORGANIC"

-- | Traffic from Ads.
pattern CompetitiveVisibility_TrafficSource_Ads :: CompetitiveVisibility_TrafficSource
pattern CompetitiveVisibility_TrafficSource_Ads = CompetitiveVisibility_TrafficSource "ADS"

-- | Organic and Ads traffic.
pattern CompetitiveVisibility_TrafficSource_All :: CompetitiveVisibility_TrafficSource
pattern CompetitiveVisibility_TrafficSource_All = CompetitiveVisibility_TrafficSource "ALL"

{-# COMPLETE
  CompetitiveVisibility_TrafficSource_Unknown,
  CompetitiveVisibility_TrafficSource_Organic,
  CompetitiveVisibility_TrafficSource_Ads,
  CompetitiveVisibility_TrafficSource_All,
  CompetitiveVisibility_TrafficSource
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

-- | The type of external action.
newtype ExternalAction_Type = ExternalAction_Type {fromExternalAction_Type :: Core.Text}
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
pattern ExternalAction_Type_EXTERNALACTIONTYPEUNSPECIFIED :: ExternalAction_Type
pattern ExternalAction_Type_EXTERNALACTIONTYPEUNSPECIFIED = ExternalAction_Type "EXTERNAL_ACTION_TYPE_UNSPECIFIED"

-- | Redirect to Merchant Center where the merchant can request a review for issue related to their product.
pattern ExternalAction_Type_REVIEWPRODUCTISSUEINMERCHANTCENTER :: ExternalAction_Type
pattern ExternalAction_Type_REVIEWPRODUCTISSUEINMERCHANTCENTER = ExternalAction_Type "REVIEW_PRODUCT_ISSUE_IN_MERCHANT_CENTER"

-- | Redirect to Merchant Center where the merchant can request a review for issue related to their account.
pattern ExternalAction_Type_REVIEWACCOUNTISSUEINMERCHANTCENTER :: ExternalAction_Type
pattern ExternalAction_Type_REVIEWACCOUNTISSUEINMERCHANTCENTER = ExternalAction_Type "REVIEW_ACCOUNT_ISSUE_IN_MERCHANT_CENTER"

-- | Redirect to the form in Help Center where the merchant can request a legal appeal for the issue.
pattern ExternalAction_Type_LEGALAPPEALINHELPCENTER :: ExternalAction_Type
pattern ExternalAction_Type_LEGALAPPEALINHELPCENTER = ExternalAction_Type "LEGAL_APPEAL_IN_HELP_CENTER"

-- | Redirect to Merchant Center where the merchant can perform identity verification.
pattern ExternalAction_Type_VERIFYIDENTITYINMERCHANTCENTER :: ExternalAction_Type
pattern ExternalAction_Type_VERIFYIDENTITYINMERCHANTCENTER = ExternalAction_Type "VERIFY_IDENTITY_IN_MERCHANT_CENTER"

{-# COMPLETE
  ExternalAction_Type_EXTERNALACTIONTYPEUNSPECIFIED,
  ExternalAction_Type_REVIEWPRODUCTISSUEINMERCHANTCENTER,
  ExternalAction_Type_REVIEWACCOUNTISSUEINMERCHANTCENTER,
  ExternalAction_Type_LEGALAPPEALINHELPCENTER,
  ExternalAction_Type_VERIFYIDENTITYINMERCHANTCENTER,
  ExternalAction_Type
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

-- | Account has already been reviewed. You can\'t request further reviews.
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

-- | Type of the text input
newtype InputFieldTextInput_Type = InputFieldTextInput_Type {fromInputFieldTextInput_Type :: Core.Text}
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
pattern InputFieldTextInput_Type_TEXTINPUTTYPEUNSPECIFIED :: InputFieldTextInput_Type
pattern InputFieldTextInput_Type_TEXTINPUTTYPEUNSPECIFIED = InputFieldTextInput_Type "TEXT_INPUT_TYPE_UNSPECIFIED"

-- | Used when a short text is expected. The field can be rendered as a <https://www.w3.org/TR/2012/WD-html-markup-20121025/input.text.html#input.text text field>.
pattern InputFieldTextInput_Type_GENERICSHORTTEXT :: InputFieldTextInput_Type
pattern InputFieldTextInput_Type_GENERICSHORTTEXT = InputFieldTextInput_Type "GENERIC_SHORT_TEXT"

-- | Used when a longer text is expected. The field should be rendered as a <https://www.w3.org/TR/2012/WD-html-markup-20121025/textarea.html#textarea textarea>.
pattern InputFieldTextInput_Type_GENERICLONGTEXT :: InputFieldTextInput_Type
pattern InputFieldTextInput_Type_GENERICLONGTEXT = InputFieldTextInput_Type "GENERIC_LONG_TEXT"

{-# COMPLETE
  InputFieldTextInput_Type_TEXTINPUTTYPEUNSPECIFIED,
  InputFieldTextInput_Type_GENERICSHORTTEXT,
  InputFieldTextInput_Type_GENERICLONGTEXT,
  InputFieldTextInput_Type
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

-- | The predicted effectiveness of applying the price suggestion, bucketed.
newtype PriceInsights_Effectiveness = PriceInsights_Effectiveness {fromPriceInsights_Effectiveness :: Core.Text}
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

-- | Effectiveness is unknown.
pattern PriceInsights_Effectiveness_EFFECTIVENESSUNSPECIFIED :: PriceInsights_Effectiveness
pattern PriceInsights_Effectiveness_EFFECTIVENESSUNSPECIFIED = PriceInsights_Effectiveness "EFFECTIVENESS_UNSPECIFIED"

-- | Effectiveness is low.
pattern PriceInsights_Effectiveness_Low :: PriceInsights_Effectiveness
pattern PriceInsights_Effectiveness_Low = PriceInsights_Effectiveness "LOW"

-- | Effectiveness is medium.
pattern PriceInsights_Effectiveness_Medium :: PriceInsights_Effectiveness
pattern PriceInsights_Effectiveness_Medium = PriceInsights_Effectiveness "MEDIUM"

-- | Effectiveness is high.
pattern PriceInsights_Effectiveness_High :: PriceInsights_Effectiveness
pattern PriceInsights_Effectiveness_High = PriceInsights_Effectiveness "HIGH"

{-# COMPLETE
  PriceInsights_Effectiveness_EFFECTIVENESSUNSPECIFIED,
  PriceInsights_Effectiveness_Low,
  PriceInsights_Effectiveness_Medium,
  PriceInsights_Effectiveness_High,
  PriceInsights_Effectiveness
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

-- | The severity of the issue.
newtype ProductIssueImpact_Severity = ProductIssueImpact_Severity {fromProductIssueImpact_Severity :: Core.Text}
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
pattern ProductIssueImpact_Severity_SEVERITYUNSPECIFIED :: ProductIssueImpact_Severity
pattern ProductIssueImpact_Severity_SEVERITYUNSPECIFIED = ProductIssueImpact_Severity "SEVERITY_UNSPECIFIED"

-- | Causes either an account suspension or an item disapproval. Errors should be resolved as soon as possible to ensure items are eligible to appear in results again.
pattern ProductIssueImpact_Severity_Error' :: ProductIssueImpact_Severity
pattern ProductIssueImpact_Severity_Error' = ProductIssueImpact_Severity "ERROR"

-- | Warnings can negatively impact the performance of ads and can lead to item or account suspensions in the future unless the issue is resolved.
pattern ProductIssueImpact_Severity_Warning :: ProductIssueImpact_Severity
pattern ProductIssueImpact_Severity_Warning = ProductIssueImpact_Severity "WARNING"

-- | Infos are suggested optimizations to increase data quality. Resolving these issues is recommended, but not required.
pattern ProductIssueImpact_Severity_Info :: ProductIssueImpact_Severity
pattern ProductIssueImpact_Severity_Info = ProductIssueImpact_Severity "INFO"

{-# COMPLETE
  ProductIssueImpact_Severity_SEVERITYUNSPECIFIED,
  ProductIssueImpact_Severity_Error',
  ProductIssueImpact_Severity_Warning,
  ProductIssueImpact_Severity_Info,
  ProductIssueImpact_Severity
  #-}

-- | Required. Sustainability incentive program.
newtype ProductSustainabilityIncentive_Type = ProductSustainabilityIncentive_Type {fromProductSustainabilityIncentive_Type :: Core.Text}
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

-- | Unspecified or unknown sustainability incentive type.
pattern ProductSustainabilityIncentive_Type_TYPEUNSPECIFIED :: ProductSustainabilityIncentive_Type
pattern ProductSustainabilityIncentive_Type_TYPEUNSPECIFIED = ProductSustainabilityIncentive_Type "TYPE_UNSPECIFIED"

-- | Program offering tax liability reductions for electric vehicles and, in some countries, plug-in hybrids. These reductions can be based on a specific amount or a percentage of the sale price.
pattern ProductSustainabilityIncentive_Type_EVTAXCREDIT :: ProductSustainabilityIncentive_Type
pattern ProductSustainabilityIncentive_Type_EVTAXCREDIT = ProductSustainabilityIncentive_Type "EV_TAX_CREDIT"

-- | A subsidy program, often called an environmental bonus, provides a purchase grant for electric vehicles and, in some countries, plug-in hybrids. The grant amount may be a fixed sum or a percentage of the sale price.
pattern ProductSustainabilityIncentive_Type_EVPRICEDISCOUNT :: ProductSustainabilityIncentive_Type
pattern ProductSustainabilityIncentive_Type_EVPRICEDISCOUNT = ProductSustainabilityIncentive_Type "EV_PRICE_DISCOUNT"

{-# COMPLETE
  ProductSustainabilityIncentive_Type_TYPEUNSPECIFIED,
  ProductSustainabilityIncentive_Type_EVTAXCREDIT,
  ProductSustainabilityIncentive_Type_EVPRICEDISCOUNT,
  ProductSustainabilityIncentive_Type
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

-- | Estimated performance potential compared to highest performing products of the merchant.
newtype ProductView_ClickPotential = ProductView_ClickPotential {fromProductView_ClickPotential :: Core.Text}
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

-- | Unknown predicted clicks impact.
pattern ProductView_ClickPotential_CLICKPOTENTIALUNSPECIFIED :: ProductView_ClickPotential
pattern ProductView_ClickPotential_CLICKPOTENTIALUNSPECIFIED = ProductView_ClickPotential "CLICK_POTENTIAL_UNSPECIFIED"

-- | Potential to receive a low number of clicks compared to the highest performing products of the merchant.
pattern ProductView_ClickPotential_Low :: ProductView_ClickPotential
pattern ProductView_ClickPotential_Low = ProductView_ClickPotential "LOW"

-- | Potential to receive a moderate number of clicks compared to the highest performing products of the merchant.
pattern ProductView_ClickPotential_Medium :: ProductView_ClickPotential
pattern ProductView_ClickPotential_Medium = ProductView_ClickPotential "MEDIUM"

-- | Potential to receive a similar number of clicks as the highest performing products of the merchant.
pattern ProductView_ClickPotential_High :: ProductView_ClickPotential
pattern ProductView_ClickPotential_High = ProductView_ClickPotential "HIGH"

{-# COMPLETE
  ProductView_ClickPotential_CLICKPOTENTIALUNSPECIFIED,
  ProductView_ClickPotential_Low,
  ProductView_ClickPotential_Medium,
  ProductView_ClickPotential_High,
  ProductView_ClickPotential
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

-- | Optional. How the detailed content should be returned. Default option is to return the content as a pre-rendered HTML text.
newtype RenderAccountIssuesRequestPayload_ContentOption = RenderAccountIssuesRequestPayload_ContentOption {fromRenderAccountIssuesRequestPayload_ContentOption :: Core.Text}
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
pattern RenderAccountIssuesRequestPayload_ContentOption_CONTENTOPTIONUNSPECIFIED :: RenderAccountIssuesRequestPayload_ContentOption
pattern RenderAccountIssuesRequestPayload_ContentOption_CONTENTOPTIONUNSPECIFIED = RenderAccountIssuesRequestPayload_ContentOption "CONTENT_OPTION_UNSPECIFIED"

-- | Returns the detail of the issue as a pre-rendered HTML text.
pattern RenderAccountIssuesRequestPayload_ContentOption_PRERENDEREDHTML :: RenderAccountIssuesRequestPayload_ContentOption
pattern RenderAccountIssuesRequestPayload_ContentOption_PRERENDEREDHTML = RenderAccountIssuesRequestPayload_ContentOption "PRE_RENDERED_HTML"

{-# COMPLETE
  RenderAccountIssuesRequestPayload_ContentOption_CONTENTOPTIONUNSPECIFIED,
  RenderAccountIssuesRequestPayload_ContentOption_PRERENDEREDHTML,
  RenderAccountIssuesRequestPayload_ContentOption
  #-}

-- | Optional. How actions with user input form should be handled. If not provided, actions will be returned as links that points merchant to Merchant Center where they can request the action.
newtype RenderAccountIssuesRequestPayload_UserInputActionOption = RenderAccountIssuesRequestPayload_UserInputActionOption {fromRenderAccountIssuesRequestPayload_UserInputActionOption :: Core.Text}
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
pattern RenderAccountIssuesRequestPayload_UserInputActionOption_USERINPUTACTIONRENDERINGOPTIONUNSPECIFIED :: RenderAccountIssuesRequestPayload_UserInputActionOption
pattern RenderAccountIssuesRequestPayload_UserInputActionOption_USERINPUTACTIONRENDERINGOPTIONUNSPECIFIED = RenderAccountIssuesRequestPayload_UserInputActionOption "USER_INPUT_ACTION_RENDERING_OPTION_UNSPECIFIED"

-- | Actions that require user input are represented only as links that points merchant to Merchant Center where they can request the action. Provides easier to implement alternative to @BUILT_IN_USER_INPUT_ACTIONS@.
pattern RenderAccountIssuesRequestPayload_UserInputActionOption_REDIRECTTOMERCHANTCENTER :: RenderAccountIssuesRequestPayload_UserInputActionOption
pattern RenderAccountIssuesRequestPayload_UserInputActionOption_REDIRECTTOMERCHANTCENTER = RenderAccountIssuesRequestPayload_UserInputActionOption "REDIRECT_TO_MERCHANT_CENTER"

-- | Returns content and input form definition for each complex action. Your application needs to display this content and input form to the merchant before they can request processing of the action. To start the action, your application needs to call the @triggeraction@ method.
pattern RenderAccountIssuesRequestPayload_UserInputActionOption_BUILTINUSERINPUTACTIONS :: RenderAccountIssuesRequestPayload_UserInputActionOption
pattern RenderAccountIssuesRequestPayload_UserInputActionOption_BUILTINUSERINPUTACTIONS = RenderAccountIssuesRequestPayload_UserInputActionOption "BUILT_IN_USER_INPUT_ACTIONS"

{-# COMPLETE
  RenderAccountIssuesRequestPayload_UserInputActionOption_USERINPUTACTIONRENDERINGOPTIONUNSPECIFIED,
  RenderAccountIssuesRequestPayload_UserInputActionOption_REDIRECTTOMERCHANTCENTER,
  RenderAccountIssuesRequestPayload_UserInputActionOption_BUILTINUSERINPUTACTIONS,
  RenderAccountIssuesRequestPayload_UserInputActionOption
  #-}

-- | Optional. How the detailed content should be returned. Default option is to return the content as a pre-rendered HTML text.
newtype RenderProductIssuesRequestPayload_ContentOption = RenderProductIssuesRequestPayload_ContentOption {fromRenderProductIssuesRequestPayload_ContentOption :: Core.Text}
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
pattern RenderProductIssuesRequestPayload_ContentOption_CONTENTOPTIONUNSPECIFIED :: RenderProductIssuesRequestPayload_ContentOption
pattern RenderProductIssuesRequestPayload_ContentOption_CONTENTOPTIONUNSPECIFIED = RenderProductIssuesRequestPayload_ContentOption "CONTENT_OPTION_UNSPECIFIED"

-- | Returns the detail of the issue as a pre-rendered HTML text.
pattern RenderProductIssuesRequestPayload_ContentOption_PRERENDEREDHTML :: RenderProductIssuesRequestPayload_ContentOption
pattern RenderProductIssuesRequestPayload_ContentOption_PRERENDEREDHTML = RenderProductIssuesRequestPayload_ContentOption "PRE_RENDERED_HTML"

{-# COMPLETE
  RenderProductIssuesRequestPayload_ContentOption_CONTENTOPTIONUNSPECIFIED,
  RenderProductIssuesRequestPayload_ContentOption_PRERENDEREDHTML,
  RenderProductIssuesRequestPayload_ContentOption
  #-}

-- | Optional. How actions with user input form should be handled. If not provided, actions will be returned as links that points merchant to Merchant Center where they can request the action.
newtype RenderProductIssuesRequestPayload_UserInputActionOption = RenderProductIssuesRequestPayload_UserInputActionOption {fromRenderProductIssuesRequestPayload_UserInputActionOption :: Core.Text}
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
pattern RenderProductIssuesRequestPayload_UserInputActionOption_USERINPUTACTIONRENDERINGOPTIONUNSPECIFIED :: RenderProductIssuesRequestPayload_UserInputActionOption
pattern RenderProductIssuesRequestPayload_UserInputActionOption_USERINPUTACTIONRENDERINGOPTIONUNSPECIFIED = RenderProductIssuesRequestPayload_UserInputActionOption "USER_INPUT_ACTION_RENDERING_OPTION_UNSPECIFIED"

-- | Actions that require user input are represented only as links that points merchant to Merchant Center where they can request the action. Provides easier to implement alternative to @BUILT_IN_USER_INPUT_ACTIONS@.
pattern RenderProductIssuesRequestPayload_UserInputActionOption_REDIRECTTOMERCHANTCENTER :: RenderProductIssuesRequestPayload_UserInputActionOption
pattern RenderProductIssuesRequestPayload_UserInputActionOption_REDIRECTTOMERCHANTCENTER = RenderProductIssuesRequestPayload_UserInputActionOption "REDIRECT_TO_MERCHANT_CENTER"

-- | Returns content and input form definition for each complex action. Your application needs to display this content and input form to the merchant before they can request processing of the action. To start the action, your application needs to call the @triggeraction@ method.
pattern RenderProductIssuesRequestPayload_UserInputActionOption_BUILTINUSERINPUTACTIONS :: RenderProductIssuesRequestPayload_UserInputActionOption
pattern RenderProductIssuesRequestPayload_UserInputActionOption_BUILTINUSERINPUTACTIONS = RenderProductIssuesRequestPayload_UserInputActionOption "BUILT_IN_USER_INPUT_ACTIONS"

{-# COMPLETE
  RenderProductIssuesRequestPayload_UserInputActionOption_USERINPUTACTIONRENDERINGOPTIONUNSPECIFIED,
  RenderProductIssuesRequestPayload_UserInputActionOption_REDIRECTTOMERCHANTCENTER,
  RenderProductIssuesRequestPayload_UserInputActionOption_BUILTINUSERINPUTACTIONS,
  RenderProductIssuesRequestPayload_UserInputActionOption
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

-- | When a recommendation is dismissed.
pattern ReportInteractionRequest_InteractionType_INTERACTIONDISMISS :: ReportInteractionRequest_InteractionType
pattern ReportInteractionRequest_InteractionType_INTERACTIONDISMISS = ReportInteractionRequest_InteractionType "INTERACTION_DISMISS"

-- | When a recommendation is clicked.
pattern ReportInteractionRequest_InteractionType_INTERACTIONCLICK :: ReportInteractionRequest_InteractionType
pattern ReportInteractionRequest_InteractionType_INTERACTIONCLICK = ReportInteractionRequest_InteractionType "INTERACTION_CLICK"

{-# COMPLETE
  ReportInteractionRequest_InteractionType_INTERACTIONTYPEUNSPECIFIED,
  ReportInteractionRequest_InteractionType_INTERACTIONDISMISS,
  ReportInteractionRequest_InteractionType_INTERACTIONCLICK,
  ReportInteractionRequest_InteractionType
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

-- | The corresponding return label source. If the @ReturnMethod@ field includes @BY_MAIL@, it is required to specify @ReturnLabelSource@ for both @BUYER_REMORSE@ and @ITEM_DEFECT@ return reason categories.
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

-- | /Deprecated/: This value is no longer supported. Retrieving all metrics for the @BUY_ON_GOOGLE_LISTING@ program returns 0 starting from May 2024. Buy on Google Listing.
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

-- | Account has already been reviewed. You can\'t request further reviews.
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

-- | The suggested type of an icon for tooltip, if a tooltip is present.
newtype TextWithTooltip_TooltipIconStyle = TextWithTooltip_TooltipIconStyle {fromTextWithTooltip_TooltipIconStyle :: Core.Text}
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
pattern TextWithTooltip_TooltipIconStyle_TOOLTIPICONSTYLEUNSPECIFIED :: TextWithTooltip_TooltipIconStyle
pattern TextWithTooltip_TooltipIconStyle_TOOLTIPICONSTYLEUNSPECIFIED = TextWithTooltip_TooltipIconStyle "TOOLTIP_ICON_STYLE_UNSPECIFIED"

-- | Used when the tooltip adds additional information to the context, the \'i\' can be used as an icon.
pattern TextWithTooltip_TooltipIconStyle_Info :: TextWithTooltip_TooltipIconStyle
pattern TextWithTooltip_TooltipIconStyle_Info = TextWithTooltip_TooltipIconStyle "INFO"

-- | Used when the tooltip shows helpful information, the \'?\' can be used as an icon.
pattern TextWithTooltip_TooltipIconStyle_Question :: TextWithTooltip_TooltipIconStyle
pattern TextWithTooltip_TooltipIconStyle_Question = TextWithTooltip_TooltipIconStyle "QUESTION"

{-# COMPLETE
  TextWithTooltip_TooltipIconStyle_TOOLTIPICONSTYLEUNSPECIFIED,
  TextWithTooltip_TooltipIconStyle_Info,
  TextWithTooltip_TooltipIconStyle_Question,
  TextWithTooltip_TooltipIconStyle
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
