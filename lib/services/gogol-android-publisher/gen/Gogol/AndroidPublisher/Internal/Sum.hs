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
-- Module      : Gogol.AndroidPublisher.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AndroidPublisher.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AutoRenewingBasePlanType_ProrationMode
    AutoRenewingBasePlanType_ProrationMode
      ( AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODEUNSPECIFIED,
        AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODECHARGEONNEXTBILLINGDATE,
        AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODECHARGEFULLPRICEIMMEDIATELY,
        ..
      ),

    -- * AutoRenewingBasePlanType_ResubscribeState
    AutoRenewingBasePlanType_ResubscribeState
      ( AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEUNSPECIFIED,
        AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEACTIVE,
        AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEINACTIVE,
        ..
      ),

    -- * BasePlan_State
    BasePlan_State
      ( BasePlan_State_STATEUNSPECIFIED,
        BasePlan_State_Draft,
        BasePlan_State_Active,
        BasePlan_State_Inactive,
        ..
      ),

    -- * CancelSurveyResult_Reason
    CancelSurveyResult_Reason
      ( CancelSurveyResult_Reason_CANCELSURVEYREASONUNSPECIFIED,
        CancelSurveyResult_Reason_CANCELSURVEYREASONNOTENOUGHUSAGE,
        CancelSurveyResult_Reason_CANCELSURVEYREASONTECHNICALISSUES,
        CancelSurveyResult_Reason_CANCELSURVEYREASONCOSTRELATED,
        CancelSurveyResult_Reason_CANCELSURVEYREASONFOUNDBETTERAPP,
        CancelSurveyResult_Reason_CANCELSURVEYREASONOTHERS,
        ..
      ),

    -- * DeobfuscationFile_SymbolType
    DeobfuscationFile_SymbolType
      ( DeobfuscationFile_SymbolType_DeobfuscationFileTypeUnspecified,
        DeobfuscationFile_SymbolType_Proguard,
        DeobfuscationFile_SymbolType_NativeCode,
        ..
      ),

    -- * Grant_AppLevelPermissionsItem
    Grant_AppLevelPermissionsItem
      ( Grant_AppLevelPermissionsItem_APPLEVELPERMISSIONUNSPECIFIED,
        Grant_AppLevelPermissionsItem_CANACCESSAPP,
        Grant_AppLevelPermissionsItem_CANVIEWFINANCIALDATA,
        Grant_AppLevelPermissionsItem_CANMANAGEPERMISSIONS,
        Grant_AppLevelPermissionsItem_CANREPLYTOREVIEWS,
        Grant_AppLevelPermissionsItem_CANMANAGEPUBLICAPKS,
        Grant_AppLevelPermissionsItem_CANMANAGETRACKAPKS,
        Grant_AppLevelPermissionsItem_CANMANAGETRACKUSERS,
        Grant_AppLevelPermissionsItem_CANMANAGEPUBLICLISTING,
        Grant_AppLevelPermissionsItem_CANMANAGEDRAFTAPPS,
        Grant_AppLevelPermissionsItem_CANMANAGEORDERS,
        ..
      ),

    -- * InAppProduct_PurchaseType
    InAppProduct_PurchaseType
      ( InAppProduct_PurchaseType_PurchaseTypeUnspecified,
        InAppProduct_PurchaseType_ManagedUser,
        InAppProduct_PurchaseType_Subscription,
        ..
      ),

    -- * InAppProduct_Status
    InAppProduct_Status
      ( InAppProduct_Status_StatusUnspecified,
        InAppProduct_Status_Active,
        InAppProduct_Status_Inactive,
        ..
      ),

    -- * ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
    ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
      ( ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED,
        ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT,
        ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE,
        ..
      ),

    -- * PrepaidBasePlanType_TimeExtension
    PrepaidBasePlanType_TimeExtension
      ( PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONUNSPECIFIED,
        PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONACTIVE,
        PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONINACTIVE,
        ..
      ),

    -- * RegionalTaxRateInfo_StreamingTaxType
    RegionalTaxRateInfo_StreamingTaxType
      ( RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPEUNSPECIFIED,
        RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEORENTAL,
        RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEOSALES,
        RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEOMULTICHANNEL,
        RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIORENTAL,
        RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIOSALES,
        RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIOMULTICHANNEL,
        ..
      ),

    -- * RegionalTaxRateInfo_TaxTier
    RegionalTaxRateInfo_TaxTier
      ( RegionalTaxRateInfo_TaxTier_TAXTIERUNSPECIFIED,
        RegionalTaxRateInfo_TaxTier_TAX_TIER_BOOKS_1,
        RegionalTaxRateInfo_TaxTier_TAX_TIER_NEWS_1,
        RegionalTaxRateInfo_TaxTier_TAX_TIER_NEWS_2,
        RegionalTaxRateInfo_TaxTier_TAX_TIER_MUSIC_OR_AUDIO_1,
        RegionalTaxRateInfo_TaxTier_TAX_TIER_LIVE_OR_BROADCAST_1,
        ..
      ),

    -- * SubscriptionItemPriceChangeDetails_PriceChangeMode
    SubscriptionItemPriceChangeDetails_PriceChangeMode
      ( SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICECHANGEMODEUNSPECIFIED,
        SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICEDECREASE,
        SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICEINCREASE,
        ..
      ),

    -- * SubscriptionItemPriceChangeDetails_PriceChangeState
    SubscriptionItemPriceChangeDetails_PriceChangeState
      ( SubscriptionItemPriceChangeDetails_PriceChangeState_PRICECHANGESTATEUNSPECIFIED,
        SubscriptionItemPriceChangeDetails_PriceChangeState_Outstanding,
        SubscriptionItemPriceChangeDetails_PriceChangeState_Confirmed,
        SubscriptionItemPriceChangeDetails_PriceChangeState_Applied,
        ..
      ),

    -- * SubscriptionOffer_State
    SubscriptionOffer_State
      ( SubscriptionOffer_State_STATEUNSPECIFIED,
        SubscriptionOffer_State_Draft,
        SubscriptionOffer_State_Active,
        SubscriptionOffer_State_Inactive,
        ..
      ),

    -- * SubscriptionPurchaseV2_AcknowledgementState
    SubscriptionPurchaseV2_AcknowledgementState
      ( SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEUNSPECIFIED,
        SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEPENDING,
        SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEACKNOWLEDGED,
        ..
      ),

    -- * SubscriptionPurchaseV2_SubscriptionState
    SubscriptionPurchaseV2_SubscriptionState
      ( SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEUNSPECIFIED,
        SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEPENDING,
        SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEACTIVE,
        SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEPAUSED,
        SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEINGRACEPERIOD,
        SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEONHOLD,
        SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATECANCELED,
        SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEEXPIRED,
        ..
      ),

    -- * SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
    SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
      ( SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED,
        SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT,
        SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE,
        ..
      ),

    -- * TrackRelease_Status
    TrackRelease_Status
      ( TrackRelease_Status_StatusUnspecified,
        TrackRelease_Status_Draft,
        TrackRelease_Status_InProgress,
        TrackRelease_Status_Halted,
        TrackRelease_Status_Completed,
        ..
      ),

    -- * User_AccessState
    User_AccessState
      ( User_AccessState_ACCESSSTATEUNSPECIFIED,
        User_AccessState_Invited,
        User_AccessState_INVITATIONEXPIRED,
        User_AccessState_ACCESSGRANTED,
        User_AccessState_ACCESSEXPIRED,
        ..
      ),

    -- * User_DeveloperAccountPermissionsItem
    User_DeveloperAccountPermissionsItem
      ( User_DeveloperAccountPermissionsItem_DEVELOPERLEVELPERMISSIONUNSPECIFIED,
        User_DeveloperAccountPermissionsItem_CANSEEALLAPPS,
        User_DeveloperAccountPermissionsItem_CANVIEWFINANCIALDATAGLOBAL,
        User_DeveloperAccountPermissionsItem_CANMANAGEPERMISSIONSGLOBAL,
        User_DeveloperAccountPermissionsItem_CANEDITGAMESGLOBAL,
        User_DeveloperAccountPermissionsItem_CANPUBLISHGAMESGLOBAL,
        User_DeveloperAccountPermissionsItem_CANREPLYTOREVIEWSGLOBAL,
        User_DeveloperAccountPermissionsItem_CANMANAGEPUBLICAPKSGLOBAL,
        User_DeveloperAccountPermissionsItem_CANMANAGETRACKAPKSGLOBAL,
        User_DeveloperAccountPermissionsItem_CANMANAGETRACKUSERSGLOBAL,
        User_DeveloperAccountPermissionsItem_CANMANAGEPUBLICLISTINGGLOBAL,
        User_DeveloperAccountPermissionsItem_CANMANAGEDRAFTAPPSGLOBAL,
        User_DeveloperAccountPermissionsItem_CANCREATEMANAGEDPLAYAPPSGLOBAL,
        User_DeveloperAccountPermissionsItem_CANCHANGEMANAGEDPLAYSETTINGGLOBAL,
        User_DeveloperAccountPermissionsItem_CANMANAGEORDERSGLOBAL,
        ..
      ),

    -- * EditsDeobfuscationfilesUploadDeobfuscationFileType
    EditsDeobfuscationfilesUploadDeobfuscationFileType
      ( EditsDeobfuscationfilesUploadDeobfuscationFileType_DeobfuscationFileTypeUnspecified,
        EditsDeobfuscationfilesUploadDeobfuscationFileType_Proguard,
        EditsDeobfuscationfilesUploadDeobfuscationFileType_NativeCode,
        ..
      ),

    -- * EditsExpansionfilesGetExpansionFileType
    EditsExpansionfilesGetExpansionFileType
      ( EditsExpansionfilesGetExpansionFileType_ExpansionFileTypeUnspecified,
        EditsExpansionfilesGetExpansionFileType_Main,
        EditsExpansionfilesGetExpansionFileType_Patch',
        ..
      ),

    -- * EditsExpansionfilesPatchExpansionFileType
    EditsExpansionfilesPatchExpansionFileType
      ( EditsExpansionfilesPatchExpansionFileType_ExpansionFileTypeUnspecified,
        EditsExpansionfilesPatchExpansionFileType_Main,
        EditsExpansionfilesPatchExpansionFileType_Patch',
        ..
      ),

    -- * EditsExpansionfilesUpdateExpansionFileType
    EditsExpansionfilesUpdateExpansionFileType
      ( EditsExpansionfilesUpdateExpansionFileType_ExpansionFileTypeUnspecified,
        EditsExpansionfilesUpdateExpansionFileType_Main,
        EditsExpansionfilesUpdateExpansionFileType_Patch',
        ..
      ),

    -- * EditsExpansionfilesUploadExpansionFileType
    EditsExpansionfilesUploadExpansionFileType
      ( EditsExpansionfilesUploadExpansionFileType_ExpansionFileTypeUnspecified,
        EditsExpansionfilesUploadExpansionFileType_Main,
        EditsExpansionfilesUploadExpansionFileType_Patch',
        ..
      ),

    -- * EditsImagesDeleteImageType
    EditsImagesDeleteImageType
      ( EditsImagesDeleteImageType_AppImageTypeUnspecified,
        EditsImagesDeleteImageType_PhoneScreenshots,
        EditsImagesDeleteImageType_SevenInchScreenshots,
        EditsImagesDeleteImageType_TenInchScreenshots,
        EditsImagesDeleteImageType_TvScreenshots,
        EditsImagesDeleteImageType_WearScreenshots,
        EditsImagesDeleteImageType_Icon,
        EditsImagesDeleteImageType_FeatureGraphic,
        EditsImagesDeleteImageType_TvBanner,
        ..
      ),

    -- * EditsImagesDeleteallImageType
    EditsImagesDeleteallImageType
      ( EditsImagesDeleteallImageType_AppImageTypeUnspecified,
        EditsImagesDeleteallImageType_PhoneScreenshots,
        EditsImagesDeleteallImageType_SevenInchScreenshots,
        EditsImagesDeleteallImageType_TenInchScreenshots,
        EditsImagesDeleteallImageType_TvScreenshots,
        EditsImagesDeleteallImageType_WearScreenshots,
        EditsImagesDeleteallImageType_Icon,
        EditsImagesDeleteallImageType_FeatureGraphic,
        EditsImagesDeleteallImageType_TvBanner,
        ..
      ),

    -- * EditsImagesListImageType
    EditsImagesListImageType
      ( EditsImagesListImageType_AppImageTypeUnspecified,
        EditsImagesListImageType_PhoneScreenshots,
        EditsImagesListImageType_SevenInchScreenshots,
        EditsImagesListImageType_TenInchScreenshots,
        EditsImagesListImageType_TvScreenshots,
        EditsImagesListImageType_WearScreenshots,
        EditsImagesListImageType_Icon,
        EditsImagesListImageType_FeatureGraphic,
        EditsImagesListImageType_TvBanner,
        ..
      ),

    -- * EditsImagesUploadImageType
    EditsImagesUploadImageType
      ( EditsImagesUploadImageType_AppImageTypeUnspecified,
        EditsImagesUploadImageType_PhoneScreenshots,
        EditsImagesUploadImageType_SevenInchScreenshots,
        EditsImagesUploadImageType_TenInchScreenshots,
        EditsImagesUploadImageType_TvScreenshots,
        EditsImagesUploadImageType_WearScreenshots,
        EditsImagesUploadImageType_Icon,
        EditsImagesUploadImageType_FeatureGraphic,
        EditsImagesUploadImageType_TvBanner,
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

-- | The proration mode for the base plan determines what happens when a user switches to this plan from another base plan. If unspecified, defaults to CHARGE/ON/NEXT/BILLING/DATE.
newtype AutoRenewingBasePlanType_ProrationMode = AutoRenewingBasePlanType_ProrationMode {fromAutoRenewingBasePlanType_ProrationMode :: Core.Text}
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

-- | Unspecified mode.
pattern AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODEUNSPECIFIED :: AutoRenewingBasePlanType_ProrationMode
pattern AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODEUNSPECIFIED = AutoRenewingBasePlanType_ProrationMode "SUBSCRIPTION_PRORATION_MODE_UNSPECIFIED"

-- | Users will be charged for their new base plan at the end of their current billing period.
pattern AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODECHARGEONNEXTBILLINGDATE :: AutoRenewingBasePlanType_ProrationMode
pattern AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODECHARGEONNEXTBILLINGDATE = AutoRenewingBasePlanType_ProrationMode "SUBSCRIPTION_PRORATION_MODE_CHARGE_ON_NEXT_BILLING_DATE"

-- | Users will be charged for their new base plan immediately and in full. Any remaining period of their existing subscription will be used to extend the duration of the new billing plan.
pattern AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODECHARGEFULLPRICEIMMEDIATELY :: AutoRenewingBasePlanType_ProrationMode
pattern AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODECHARGEFULLPRICEIMMEDIATELY = AutoRenewingBasePlanType_ProrationMode "SUBSCRIPTION_PRORATION_MODE_CHARGE_FULL_PRICE_IMMEDIATELY"

{-# COMPLETE
  AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODEUNSPECIFIED,
  AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODECHARGEONNEXTBILLINGDATE,
  AutoRenewingBasePlanType_ProrationMode_SUBSCRIPTIONPRORATIONMODECHARGEFULLPRICEIMMEDIATELY,
  AutoRenewingBasePlanType_ProrationMode
  #-}

-- | Whether users should be able to resubscribe to this base plan in Google Play surfaces. Defaults to RESUBSCRIBE/STATE/ACTIVE if not specified.
newtype AutoRenewingBasePlanType_ResubscribeState = AutoRenewingBasePlanType_ResubscribeState {fromAutoRenewingBasePlanType_ResubscribeState :: Core.Text}
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

-- | Unspecified state.
pattern AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEUNSPECIFIED :: AutoRenewingBasePlanType_ResubscribeState
pattern AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEUNSPECIFIED = AutoRenewingBasePlanType_ResubscribeState "RESUBSCRIBE_STATE_UNSPECIFIED"

-- | Resubscribe is active.
pattern AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEACTIVE :: AutoRenewingBasePlanType_ResubscribeState
pattern AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEACTIVE = AutoRenewingBasePlanType_ResubscribeState "RESUBSCRIBE_STATE_ACTIVE"

-- | Resubscribe is inactive.
pattern AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEINACTIVE :: AutoRenewingBasePlanType_ResubscribeState
pattern AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEINACTIVE = AutoRenewingBasePlanType_ResubscribeState "RESUBSCRIBE_STATE_INACTIVE"

{-# COMPLETE
  AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEUNSPECIFIED,
  AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEACTIVE,
  AutoRenewingBasePlanType_ResubscribeState_RESUBSCRIBESTATEINACTIVE,
  AutoRenewingBasePlanType_ResubscribeState
  #-}

-- | Output only. The state of the base plan, i.e. whether it\'s active. Draft and inactive base plans can be activated or deleted. Active base plans can be made inactive. Inactive base plans can be canceled. This field cannot be changed by updating the resource. Use the dedicated endpoints instead.
newtype BasePlan_State = BasePlan_State {fromBasePlan_State :: Core.Text}
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

-- | Unspecified state.
pattern BasePlan_State_STATEUNSPECIFIED :: BasePlan_State
pattern BasePlan_State_STATEUNSPECIFIED = BasePlan_State "STATE_UNSPECIFIED"

-- | The base plan is currently in a draft state, and hasn\'t been activated. It can be safely deleted at this point.
pattern BasePlan_State_Draft :: BasePlan_State
pattern BasePlan_State_Draft = BasePlan_State "DRAFT"

-- | The base plan is active and available for new subscribers.
pattern BasePlan_State_Active :: BasePlan_State
pattern BasePlan_State_Active = BasePlan_State "ACTIVE"

-- | The base plan is inactive and only available for existing subscribers.
pattern BasePlan_State_Inactive :: BasePlan_State
pattern BasePlan_State_Inactive = BasePlan_State "INACTIVE"

{-# COMPLETE
  BasePlan_State_STATEUNSPECIFIED,
  BasePlan_State_Draft,
  BasePlan_State_Active,
  BasePlan_State_Inactive,
  BasePlan_State
  #-}

-- | The reason the user selected in the cancel survey.
newtype CancelSurveyResult_Reason = CancelSurveyResult_Reason {fromCancelSurveyResult_Reason :: Core.Text}
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

-- | Unspecified cancel survey reason.
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONUNSPECIFIED :: CancelSurveyResult_Reason
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONUNSPECIFIED = CancelSurveyResult_Reason "CANCEL_SURVEY_REASON_UNSPECIFIED"

-- | Not enough usage of the subscription.
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONNOTENOUGHUSAGE :: CancelSurveyResult_Reason
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONNOTENOUGHUSAGE = CancelSurveyResult_Reason "CANCEL_SURVEY_REASON_NOT_ENOUGH_USAGE"

-- | Technical issues while using the app.
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONTECHNICALISSUES :: CancelSurveyResult_Reason
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONTECHNICALISSUES = CancelSurveyResult_Reason "CANCEL_SURVEY_REASON_TECHNICAL_ISSUES"

-- | Cost related issues.
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONCOSTRELATED :: CancelSurveyResult_Reason
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONCOSTRELATED = CancelSurveyResult_Reason "CANCEL_SURVEY_REASON_COST_RELATED"

-- | The user found a better app.
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONFOUNDBETTERAPP :: CancelSurveyResult_Reason
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONFOUNDBETTERAPP = CancelSurveyResult_Reason "CANCEL_SURVEY_REASON_FOUND_BETTER_APP"

-- | Other reasons.
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONOTHERS :: CancelSurveyResult_Reason
pattern CancelSurveyResult_Reason_CANCELSURVEYREASONOTHERS = CancelSurveyResult_Reason "CANCEL_SURVEY_REASON_OTHERS"

{-# COMPLETE
  CancelSurveyResult_Reason_CANCELSURVEYREASONUNSPECIFIED,
  CancelSurveyResult_Reason_CANCELSURVEYREASONNOTENOUGHUSAGE,
  CancelSurveyResult_Reason_CANCELSURVEYREASONTECHNICALISSUES,
  CancelSurveyResult_Reason_CANCELSURVEYREASONCOSTRELATED,
  CancelSurveyResult_Reason_CANCELSURVEYREASONFOUNDBETTERAPP,
  CancelSurveyResult_Reason_CANCELSURVEYREASONOTHERS,
  CancelSurveyResult_Reason
  #-}

-- | The type of the deobfuscation file.
newtype DeobfuscationFile_SymbolType = DeobfuscationFile_SymbolType {fromDeobfuscationFile_SymbolType :: Core.Text}
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

-- | Unspecified deobfuscation file type.
pattern DeobfuscationFile_SymbolType_DeobfuscationFileTypeUnspecified :: DeobfuscationFile_SymbolType
pattern DeobfuscationFile_SymbolType_DeobfuscationFileTypeUnspecified = DeobfuscationFile_SymbolType "deobfuscationFileTypeUnspecified"

-- | Proguard deobfuscation file type.
pattern DeobfuscationFile_SymbolType_Proguard :: DeobfuscationFile_SymbolType
pattern DeobfuscationFile_SymbolType_Proguard = DeobfuscationFile_SymbolType "proguard"

-- | Native debugging symbols file type.
pattern DeobfuscationFile_SymbolType_NativeCode :: DeobfuscationFile_SymbolType
pattern DeobfuscationFile_SymbolType_NativeCode = DeobfuscationFile_SymbolType "nativeCode"

{-# COMPLETE
  DeobfuscationFile_SymbolType_DeobfuscationFileTypeUnspecified,
  DeobfuscationFile_SymbolType_Proguard,
  DeobfuscationFile_SymbolType_NativeCode,
  DeobfuscationFile_SymbolType
  #-}

newtype Grant_AppLevelPermissionsItem = Grant_AppLevelPermissionsItem {fromGrant_AppLevelPermissionsItem :: Core.Text}
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

-- | Unknown or unspecified permission.
pattern Grant_AppLevelPermissionsItem_APPLEVELPERMISSIONUNSPECIFIED :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_APPLEVELPERMISSIONUNSPECIFIED = Grant_AppLevelPermissionsItem "APP_LEVEL_PERMISSION_UNSPECIFIED"

-- | View app information (read-only).
pattern Grant_AppLevelPermissionsItem_CANACCESSAPP :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANACCESSAPP = Grant_AppLevelPermissionsItem "CAN_ACCESS_APP"

-- | View financial data.
pattern Grant_AppLevelPermissionsItem_CANVIEWFINANCIALDATA :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANVIEWFINANCIALDATA = Grant_AppLevelPermissionsItem "CAN_VIEW_FINANCIAL_DATA"

-- | Admin (all permissions).
pattern Grant_AppLevelPermissionsItem_CANMANAGEPERMISSIONS :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANMANAGEPERMISSIONS = Grant_AppLevelPermissionsItem "CAN_MANAGE_PERMISSIONS"

-- | Reply to reviews.
pattern Grant_AppLevelPermissionsItem_CANREPLYTOREVIEWS :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANREPLYTOREVIEWS = Grant_AppLevelPermissionsItem "CAN_REPLY_TO_REVIEWS"

-- | Release to production, exclude devices, and use app signing by Google Play.
pattern Grant_AppLevelPermissionsItem_CANMANAGEPUBLICAPKS :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANMANAGEPUBLICAPKS = Grant_AppLevelPermissionsItem "CAN_MANAGE_PUBLIC_APKS"

-- | Release to testing tracks.
pattern Grant_AppLevelPermissionsItem_CANMANAGETRACKAPKS :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANMANAGETRACKAPKS = Grant_AppLevelPermissionsItem "CAN_MANAGE_TRACK_APKS"

-- | Manage testing tracks and edit tester lists.
pattern Grant_AppLevelPermissionsItem_CANMANAGETRACKUSERS :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANMANAGETRACKUSERS = Grant_AppLevelPermissionsItem "CAN_MANAGE_TRACK_USERS"

-- | Manage store presence.
pattern Grant_AppLevelPermissionsItem_CANMANAGEPUBLICLISTING :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANMANAGEPUBLICLISTING = Grant_AppLevelPermissionsItem "CAN_MANAGE_PUBLIC_LISTING"

-- | Edit and delete draft apps.
pattern Grant_AppLevelPermissionsItem_CANMANAGEDRAFTAPPS :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANMANAGEDRAFTAPPS = Grant_AppLevelPermissionsItem "CAN_MANAGE_DRAFT_APPS"

-- | Manage orders and subscriptions.
pattern Grant_AppLevelPermissionsItem_CANMANAGEORDERS :: Grant_AppLevelPermissionsItem
pattern Grant_AppLevelPermissionsItem_CANMANAGEORDERS = Grant_AppLevelPermissionsItem "CAN_MANAGE_ORDERS"

{-# COMPLETE
  Grant_AppLevelPermissionsItem_APPLEVELPERMISSIONUNSPECIFIED,
  Grant_AppLevelPermissionsItem_CANACCESSAPP,
  Grant_AppLevelPermissionsItem_CANVIEWFINANCIALDATA,
  Grant_AppLevelPermissionsItem_CANMANAGEPERMISSIONS,
  Grant_AppLevelPermissionsItem_CANREPLYTOREVIEWS,
  Grant_AppLevelPermissionsItem_CANMANAGEPUBLICAPKS,
  Grant_AppLevelPermissionsItem_CANMANAGETRACKAPKS,
  Grant_AppLevelPermissionsItem_CANMANAGETRACKUSERS,
  Grant_AppLevelPermissionsItem_CANMANAGEPUBLICLISTING,
  Grant_AppLevelPermissionsItem_CANMANAGEDRAFTAPPS,
  Grant_AppLevelPermissionsItem_CANMANAGEORDERS,
  Grant_AppLevelPermissionsItem
  #-}

-- | The type of the product, e.g. a recurring subscription.
newtype InAppProduct_PurchaseType = InAppProduct_PurchaseType {fromInAppProduct_PurchaseType :: Core.Text}
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

-- | Unspecified purchase type.
pattern InAppProduct_PurchaseType_PurchaseTypeUnspecified :: InAppProduct_PurchaseType
pattern InAppProduct_PurchaseType_PurchaseTypeUnspecified = InAppProduct_PurchaseType "purchaseTypeUnspecified"

-- | The default product type - one time purchase.
pattern InAppProduct_PurchaseType_ManagedUser :: InAppProduct_PurchaseType
pattern InAppProduct_PurchaseType_ManagedUser = InAppProduct_PurchaseType "managedUser"

-- | In-app product with a recurring period.
pattern InAppProduct_PurchaseType_Subscription :: InAppProduct_PurchaseType
pattern InAppProduct_PurchaseType_Subscription = InAppProduct_PurchaseType "subscription"

{-# COMPLETE
  InAppProduct_PurchaseType_PurchaseTypeUnspecified,
  InAppProduct_PurchaseType_ManagedUser,
  InAppProduct_PurchaseType_Subscription,
  InAppProduct_PurchaseType
  #-}

-- | The status of the product, e.g. whether it\'s active.
newtype InAppProduct_Status = InAppProduct_Status {fromInAppProduct_Status :: Core.Text}
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

-- | Unspecified status.
pattern InAppProduct_Status_StatusUnspecified :: InAppProduct_Status
pattern InAppProduct_Status_StatusUnspecified = InAppProduct_Status "statusUnspecified"

-- | The product is published and active in the store.
pattern InAppProduct_Status_Active :: InAppProduct_Status
pattern InAppProduct_Status_Active = InAppProduct_Status "active"

-- | The product is not published and therefore inactive in the store.
pattern InAppProduct_Status_Inactive :: InAppProduct_Status
pattern InAppProduct_Status_Inactive = InAppProduct_Status "inactive"

{-# COMPLETE
  InAppProduct_Status_StatusUnspecified,
  InAppProduct_Status_Active,
  InAppProduct_Status_Inactive,
  InAppProduct_Status
  #-}

-- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
newtype ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType = ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType {fromManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType :: Core.Text}
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
pattern ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED :: ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
pattern ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED = ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType "WITHDRAWAL_RIGHT_TYPE_UNSPECIFIED"

-- |
pattern ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT :: ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
pattern ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT = ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType "WITHDRAWAL_RIGHT_DIGITAL_CONTENT"

-- |
pattern ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE :: ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
pattern ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE = ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType "WITHDRAWAL_RIGHT_SERVICE"

{-# COMPLETE
  ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED,
  ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT,
  ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE,
  ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
  #-}

-- | Whether users should be able to extend this prepaid base plan in Google Play surfaces. Defaults to TIME/EXTENSION/ACTIVE if not specified.
newtype PrepaidBasePlanType_TimeExtension = PrepaidBasePlanType_TimeExtension {fromPrepaidBasePlanType_TimeExtension :: Core.Text}
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

-- | Unspecified state.
pattern PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONUNSPECIFIED :: PrepaidBasePlanType_TimeExtension
pattern PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONUNSPECIFIED = PrepaidBasePlanType_TimeExtension "TIME_EXTENSION_UNSPECIFIED"

-- | Time extension is active. Users are allowed to top-up or extend their prepaid plan.
pattern PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONACTIVE :: PrepaidBasePlanType_TimeExtension
pattern PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONACTIVE = PrepaidBasePlanType_TimeExtension "TIME_EXTENSION_ACTIVE"

-- | Time extension is inactive. Users cannot top-up or extend their prepaid plan.
pattern PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONINACTIVE :: PrepaidBasePlanType_TimeExtension
pattern PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONINACTIVE = PrepaidBasePlanType_TimeExtension "TIME_EXTENSION_INACTIVE"

{-# COMPLETE
  PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONUNSPECIFIED,
  PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONACTIVE,
  PrepaidBasePlanType_TimeExtension_TIMEEXTENSIONINACTIVE,
  PrepaidBasePlanType_TimeExtension
  #-}

-- | To collect communications or amusement taxes in the United States, choose the appropriate tax category. <https://support.google.com/googleplay/android-developer/answer/10463498#streaming_tax Learn more>.
newtype RegionalTaxRateInfo_StreamingTaxType = RegionalTaxRateInfo_StreamingTaxType {fromRegionalTaxRateInfo_StreamingTaxType :: Core.Text}
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

-- | No telecommunications tax collected.
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPEUNSPECIFIED :: RegionalTaxRateInfo_StreamingTaxType
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPEUNSPECIFIED = RegionalTaxRateInfo_StreamingTaxType "STREAMING_TAX_TYPE_UNSPECIFIED"

-- | US-specific telecommunications tax tier for video streaming, on demand, rentals \/ subscriptions \/ pay-per-view.
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEORENTAL :: RegionalTaxRateInfo_StreamingTaxType
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEORENTAL = RegionalTaxRateInfo_StreamingTaxType "STREAMING_TAX_TYPE_TELCO_VIDEO_RENTAL"

-- | US-specific telecommunications tax tier for video streaming of pre-recorded content like movies, tv shows.
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEOSALES :: RegionalTaxRateInfo_StreamingTaxType
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEOSALES = RegionalTaxRateInfo_StreamingTaxType "STREAMING_TAX_TYPE_TELCO_VIDEO_SALES"

-- | US-specific telecommunications tax tier for video streaming of multi-channel programming.
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEOMULTICHANNEL :: RegionalTaxRateInfo_StreamingTaxType
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEOMULTICHANNEL = RegionalTaxRateInfo_StreamingTaxType "STREAMING_TAX_TYPE_TELCO_VIDEO_MULTI_CHANNEL"

-- | US-specific telecommunications tax tier for audio streaming, rental \/ subscription.
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIORENTAL :: RegionalTaxRateInfo_StreamingTaxType
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIORENTAL = RegionalTaxRateInfo_StreamingTaxType "STREAMING_TAX_TYPE_TELCO_AUDIO_RENTAL"

-- | US-specific telecommunications tax tier for audio streaming, sale \/ permanent download.
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIOSALES :: RegionalTaxRateInfo_StreamingTaxType
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIOSALES = RegionalTaxRateInfo_StreamingTaxType "STREAMING_TAX_TYPE_TELCO_AUDIO_SALES"

-- | US-specific telecommunications tax tier for multi channel audio streaming like radio.
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIOMULTICHANNEL :: RegionalTaxRateInfo_StreamingTaxType
pattern RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIOMULTICHANNEL = RegionalTaxRateInfo_StreamingTaxType "STREAMING_TAX_TYPE_TELCO_AUDIO_MULTI_CHANNEL"

{-# COMPLETE
  RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPEUNSPECIFIED,
  RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEORENTAL,
  RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEOSALES,
  RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOVIDEOMULTICHANNEL,
  RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIORENTAL,
  RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIOSALES,
  RegionalTaxRateInfo_StreamingTaxType_STREAMINGTAXTYPETELCOAUDIOMULTICHANNEL,
  RegionalTaxRateInfo_StreamingTaxType
  #-}

-- | Tax tier to specify reduced tax rate. Developers who sell digital news, magazines, newspapers, books, or audiobooks in various regions may be eligible for reduced tax rates. <https://support.google.com/googleplay/android-developer/answer/10463498 Learn more>.
newtype RegionalTaxRateInfo_TaxTier = RegionalTaxRateInfo_TaxTier {fromRegionalTaxRateInfo_TaxTier :: Core.Text}
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
pattern RegionalTaxRateInfo_TaxTier_TAXTIERUNSPECIFIED :: RegionalTaxRateInfo_TaxTier
pattern RegionalTaxRateInfo_TaxTier_TAXTIERUNSPECIFIED = RegionalTaxRateInfo_TaxTier "TAX_TIER_UNSPECIFIED"

-- |
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_BOOKS_1 :: RegionalTaxRateInfo_TaxTier
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_BOOKS_1 = RegionalTaxRateInfo_TaxTier "TAX_TIER_BOOKS_1"

-- |
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_NEWS_1 :: RegionalTaxRateInfo_TaxTier
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_NEWS_1 = RegionalTaxRateInfo_TaxTier "TAX_TIER_NEWS_1"

-- |
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_NEWS_2 :: RegionalTaxRateInfo_TaxTier
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_NEWS_2 = RegionalTaxRateInfo_TaxTier "TAX_TIER_NEWS_2"

-- |
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_MUSIC_OR_AUDIO_1 :: RegionalTaxRateInfo_TaxTier
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_MUSIC_OR_AUDIO_1 = RegionalTaxRateInfo_TaxTier "TAX_TIER_MUSIC_OR_AUDIO_1"

-- |
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_LIVE_OR_BROADCAST_1 :: RegionalTaxRateInfo_TaxTier
pattern RegionalTaxRateInfo_TaxTier_TAX_TIER_LIVE_OR_BROADCAST_1 = RegionalTaxRateInfo_TaxTier "TAX_TIER_LIVE_OR_BROADCAST_1"

{-# COMPLETE
  RegionalTaxRateInfo_TaxTier_TAXTIERUNSPECIFIED,
  RegionalTaxRateInfo_TaxTier_TAX_TIER_BOOKS_1,
  RegionalTaxRateInfo_TaxTier_TAX_TIER_NEWS_1,
  RegionalTaxRateInfo_TaxTier_TAX_TIER_NEWS_2,
  RegionalTaxRateInfo_TaxTier_TAX_TIER_MUSIC_OR_AUDIO_1,
  RegionalTaxRateInfo_TaxTier_TAX_TIER_LIVE_OR_BROADCAST_1,
  RegionalTaxRateInfo_TaxTier
  #-}

-- | Price change mode specifies how the subscription item price is changing.
newtype SubscriptionItemPriceChangeDetails_PriceChangeMode = SubscriptionItemPriceChangeDetails_PriceChangeMode {fromSubscriptionItemPriceChangeDetails_PriceChangeMode :: Core.Text}
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

-- | Price change mode unspecified. This value should never be set.
pattern SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICECHANGEMODEUNSPECIFIED :: SubscriptionItemPriceChangeDetails_PriceChangeMode
pattern SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICECHANGEMODEUNSPECIFIED = SubscriptionItemPriceChangeDetails_PriceChangeMode "PRICE_CHANGE_MODE_UNSPECIFIED"

-- | If the subscription price is decreasing.
pattern SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICEDECREASE :: SubscriptionItemPriceChangeDetails_PriceChangeMode
pattern SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICEDECREASE = SubscriptionItemPriceChangeDetails_PriceChangeMode "PRICE_DECREASE"

-- | If the subscription price is increasing and the user needs to accept it.
pattern SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICEINCREASE :: SubscriptionItemPriceChangeDetails_PriceChangeMode
pattern SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICEINCREASE = SubscriptionItemPriceChangeDetails_PriceChangeMode "PRICE_INCREASE"

{-# COMPLETE
  SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICECHANGEMODEUNSPECIFIED,
  SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICEDECREASE,
  SubscriptionItemPriceChangeDetails_PriceChangeMode_PRICEINCREASE,
  SubscriptionItemPriceChangeDetails_PriceChangeMode
  #-}

-- | State the price change is currently in.
newtype SubscriptionItemPriceChangeDetails_PriceChangeState = SubscriptionItemPriceChangeDetails_PriceChangeState {fromSubscriptionItemPriceChangeDetails_PriceChangeState :: Core.Text}
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

-- | Price change state unspecified. This value should not be used.
pattern SubscriptionItemPriceChangeDetails_PriceChangeState_PRICECHANGESTATEUNSPECIFIED :: SubscriptionItemPriceChangeDetails_PriceChangeState
pattern SubscriptionItemPriceChangeDetails_PriceChangeState_PRICECHANGESTATEUNSPECIFIED = SubscriptionItemPriceChangeDetails_PriceChangeState "PRICE_CHANGE_STATE_UNSPECIFIED"

-- | Waiting for the user to agree for the price change.
pattern SubscriptionItemPriceChangeDetails_PriceChangeState_Outstanding :: SubscriptionItemPriceChangeDetails_PriceChangeState
pattern SubscriptionItemPriceChangeDetails_PriceChangeState_Outstanding = SubscriptionItemPriceChangeDetails_PriceChangeState "OUTSTANDING"

-- | The price change is confirmed to happen for the user.
pattern SubscriptionItemPriceChangeDetails_PriceChangeState_Confirmed :: SubscriptionItemPriceChangeDetails_PriceChangeState
pattern SubscriptionItemPriceChangeDetails_PriceChangeState_Confirmed = SubscriptionItemPriceChangeDetails_PriceChangeState "CONFIRMED"

-- | The price change is applied, i.e. the user has started being charged the new price.
pattern SubscriptionItemPriceChangeDetails_PriceChangeState_Applied :: SubscriptionItemPriceChangeDetails_PriceChangeState
pattern SubscriptionItemPriceChangeDetails_PriceChangeState_Applied = SubscriptionItemPriceChangeDetails_PriceChangeState "APPLIED"

{-# COMPLETE
  SubscriptionItemPriceChangeDetails_PriceChangeState_PRICECHANGESTATEUNSPECIFIED,
  SubscriptionItemPriceChangeDetails_PriceChangeState_Outstanding,
  SubscriptionItemPriceChangeDetails_PriceChangeState_Confirmed,
  SubscriptionItemPriceChangeDetails_PriceChangeState_Applied,
  SubscriptionItemPriceChangeDetails_PriceChangeState
  #-}

-- | Output only. The current state of this offer. Can be changed using Activate and Deactivate actions. NB: the base plan state supersedes this state, so an active offer may not be available if the base plan is not active.
newtype SubscriptionOffer_State = SubscriptionOffer_State {fromSubscriptionOffer_State :: Core.Text}
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

-- | Default value, should never be used.
pattern SubscriptionOffer_State_STATEUNSPECIFIED :: SubscriptionOffer_State
pattern SubscriptionOffer_State_STATEUNSPECIFIED = SubscriptionOffer_State "STATE_UNSPECIFIED"

-- | The subscription offer is not and has never been available to users.
pattern SubscriptionOffer_State_Draft :: SubscriptionOffer_State
pattern SubscriptionOffer_State_Draft = SubscriptionOffer_State "DRAFT"

-- | The subscription offer is available to new and existing users.
pattern SubscriptionOffer_State_Active :: SubscriptionOffer_State
pattern SubscriptionOffer_State_Active = SubscriptionOffer_State "ACTIVE"

-- | The subscription offer is not available to new users. Existing users retain access.
pattern SubscriptionOffer_State_Inactive :: SubscriptionOffer_State
pattern SubscriptionOffer_State_Inactive = SubscriptionOffer_State "INACTIVE"

{-# COMPLETE
  SubscriptionOffer_State_STATEUNSPECIFIED,
  SubscriptionOffer_State_Draft,
  SubscriptionOffer_State_Active,
  SubscriptionOffer_State_Inactive,
  SubscriptionOffer_State
  #-}

-- | The acknowledgement state of the subscription.
newtype SubscriptionPurchaseV2_AcknowledgementState = SubscriptionPurchaseV2_AcknowledgementState {fromSubscriptionPurchaseV2_AcknowledgementState :: Core.Text}
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

-- | Unspecified acknowledgement state.
pattern SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEUNSPECIFIED :: SubscriptionPurchaseV2_AcknowledgementState
pattern SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEUNSPECIFIED = SubscriptionPurchaseV2_AcknowledgementState "ACKNOWLEDGEMENT_STATE_UNSPECIFIED"

-- | The subscription is not acknowledged yet.
pattern SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEPENDING :: SubscriptionPurchaseV2_AcknowledgementState
pattern SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEPENDING = SubscriptionPurchaseV2_AcknowledgementState "ACKNOWLEDGEMENT_STATE_PENDING"

-- | The subscription is acknowledged.
pattern SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEACKNOWLEDGED :: SubscriptionPurchaseV2_AcknowledgementState
pattern SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEACKNOWLEDGED = SubscriptionPurchaseV2_AcknowledgementState "ACKNOWLEDGEMENT_STATE_ACKNOWLEDGED"

{-# COMPLETE
  SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEUNSPECIFIED,
  SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEPENDING,
  SubscriptionPurchaseV2_AcknowledgementState_ACKNOWLEDGEMENTSTATEACKNOWLEDGED,
  SubscriptionPurchaseV2_AcknowledgementState
  #-}

-- | The current state of the subscription.
newtype SubscriptionPurchaseV2_SubscriptionState = SubscriptionPurchaseV2_SubscriptionState {fromSubscriptionPurchaseV2_SubscriptionState :: Core.Text}
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

-- | Unspecified subscription state.
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEUNSPECIFIED :: SubscriptionPurchaseV2_SubscriptionState
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEUNSPECIFIED = SubscriptionPurchaseV2_SubscriptionState "SUBSCRIPTION_STATE_UNSPECIFIED"

-- | Subscription was created but awaiting payment during signup. In this state, all items are awaiting payment.
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEPENDING :: SubscriptionPurchaseV2_SubscriptionState
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEPENDING = SubscriptionPurchaseV2_SubscriptionState "SUBSCRIPTION_STATE_PENDING"

-- | Subscription is active. - (1) If the subscription is an auto renewing plan, at least one item is auto/renew/enabled and not expired. - (2) If the subscription is a prepaid plan, at least one item is not expired.
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEACTIVE :: SubscriptionPurchaseV2_SubscriptionState
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEACTIVE = SubscriptionPurchaseV2_SubscriptionState "SUBSCRIPTION_STATE_ACTIVE"

-- | Subscription is paused. The state is only available when the subscription is an auto renewing plan. In this state, all items are in paused state.
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEPAUSED :: SubscriptionPurchaseV2_SubscriptionState
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEPAUSED = SubscriptionPurchaseV2_SubscriptionState "SUBSCRIPTION_STATE_PAUSED"

-- | Subscription is in grace period. The state is only available when the subscription is an auto renewing plan. In this state, all items are in grace period.
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEINGRACEPERIOD :: SubscriptionPurchaseV2_SubscriptionState
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEINGRACEPERIOD = SubscriptionPurchaseV2_SubscriptionState "SUBSCRIPTION_STATE_IN_GRACE_PERIOD"

-- | Subscription is on hold (suspended). The state is only available when the subscription is an auto renewing plan. In this state, all items are on hold.
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEONHOLD :: SubscriptionPurchaseV2_SubscriptionState
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEONHOLD = SubscriptionPurchaseV2_SubscriptionState "SUBSCRIPTION_STATE_ON_HOLD"

-- | Subscription is canceled but not expired yet. The state is only available when the subscription is an auto renewing plan. All items have auto/renew/enabled set to false.
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATECANCELED :: SubscriptionPurchaseV2_SubscriptionState
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATECANCELED = SubscriptionPurchaseV2_SubscriptionState "SUBSCRIPTION_STATE_CANCELED"

-- | Subscription is expired. All items have expiry_time in the past.
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEEXPIRED :: SubscriptionPurchaseV2_SubscriptionState
pattern SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEEXPIRED = SubscriptionPurchaseV2_SubscriptionState "SUBSCRIPTION_STATE_EXPIRED"

{-# COMPLETE
  SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEUNSPECIFIED,
  SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEPENDING,
  SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEACTIVE,
  SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEPAUSED,
  SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEINGRACEPERIOD,
  SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEONHOLD,
  SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATECANCELED,
  SubscriptionPurchaseV2_SubscriptionState_SUBSCRIPTIONSTATEEXPIRED,
  SubscriptionPurchaseV2_SubscriptionState
  #-}

-- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
newtype SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType = SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType {fromSubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType :: Core.Text}
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
pattern SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED :: SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
pattern SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED = SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType "WITHDRAWAL_RIGHT_TYPE_UNSPECIFIED"

-- |
pattern SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT :: SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
pattern SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT = SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType "WITHDRAWAL_RIGHT_DIGITAL_CONTENT"

-- |
pattern SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE :: SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
pattern SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE = SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType "WITHDRAWAL_RIGHT_SERVICE"

{-# COMPLETE
  SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED,
  SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT,
  SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE,
  SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
  #-}

-- | The status of the release.
newtype TrackRelease_Status = TrackRelease_Status {fromTrackRelease_Status :: Core.Text}
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

-- | Unspecified status.
pattern TrackRelease_Status_StatusUnspecified :: TrackRelease_Status
pattern TrackRelease_Status_StatusUnspecified = TrackRelease_Status "statusUnspecified"

-- | The release\'s APKs are not being served to users.
pattern TrackRelease_Status_Draft :: TrackRelease_Status
pattern TrackRelease_Status_Draft = TrackRelease_Status "draft"

-- | The release\'s APKs are being served to a fraction of users, determined by \'user_fraction\'.
pattern TrackRelease_Status_InProgress :: TrackRelease_Status
pattern TrackRelease_Status_InProgress = TrackRelease_Status "inProgress"

-- | The release\'s APKs will no longer be served to users. Users who already have these APKs are unaffected.
pattern TrackRelease_Status_Halted :: TrackRelease_Status
pattern TrackRelease_Status_Halted = TrackRelease_Status "halted"

-- | The release will have no further changes. Its APKs are being served to all users, unless they are eligible to APKs of a more recent release.
pattern TrackRelease_Status_Completed :: TrackRelease_Status
pattern TrackRelease_Status_Completed = TrackRelease_Status "completed"

{-# COMPLETE
  TrackRelease_Status_StatusUnspecified,
  TrackRelease_Status_Draft,
  TrackRelease_Status_InProgress,
  TrackRelease_Status_Halted,
  TrackRelease_Status_Completed,
  TrackRelease_Status
  #-}

-- | Output only. The state of the user\'s access to the Play Console.
newtype User_AccessState = User_AccessState {fromUser_AccessState :: Core.Text}
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

-- | Unknown or unspecified access state.
pattern User_AccessState_ACCESSSTATEUNSPECIFIED :: User_AccessState
pattern User_AccessState_ACCESSSTATEUNSPECIFIED = User_AccessState "ACCESS_STATE_UNSPECIFIED"

-- | User is invited but has not yet accepted the invitation.
pattern User_AccessState_Invited :: User_AccessState
pattern User_AccessState_Invited = User_AccessState "INVITED"

-- | Invitation has expired.
pattern User_AccessState_INVITATIONEXPIRED :: User_AccessState
pattern User_AccessState_INVITATIONEXPIRED = User_AccessState "INVITATION_EXPIRED"

-- | User has accepted an invitation and has access to the Play Console.
pattern User_AccessState_ACCESSGRANTED :: User_AccessState
pattern User_AccessState_ACCESSGRANTED = User_AccessState "ACCESS_GRANTED"

-- | Account access has expired.
pattern User_AccessState_ACCESSEXPIRED :: User_AccessState
pattern User_AccessState_ACCESSEXPIRED = User_AccessState "ACCESS_EXPIRED"

{-# COMPLETE
  User_AccessState_ACCESSSTATEUNSPECIFIED,
  User_AccessState_Invited,
  User_AccessState_INVITATIONEXPIRED,
  User_AccessState_ACCESSGRANTED,
  User_AccessState_ACCESSEXPIRED,
  User_AccessState
  #-}

newtype User_DeveloperAccountPermissionsItem = User_DeveloperAccountPermissionsItem {fromUser_DeveloperAccountPermissionsItem :: Core.Text}
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

-- | Unknown or unspecified permission.
pattern User_DeveloperAccountPermissionsItem_DEVELOPERLEVELPERMISSIONUNSPECIFIED :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_DEVELOPERLEVELPERMISSIONUNSPECIFIED = User_DeveloperAccountPermissionsItem "DEVELOPER_LEVEL_PERMISSION_UNSPECIFIED"

-- | View app information and download bulk reports (read-only).
pattern User_DeveloperAccountPermissionsItem_CANSEEALLAPPS :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANSEEALLAPPS = User_DeveloperAccountPermissionsItem "CAN_SEE_ALL_APPS"

-- | View financial data, orders, and cancellation survey responses.
pattern User_DeveloperAccountPermissionsItem_CANVIEWFINANCIALDATAGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANVIEWFINANCIALDATAGLOBAL = User_DeveloperAccountPermissionsItem "CAN_VIEW_FINANCIAL_DATA_GLOBAL"

-- | Admin (all permissions).
pattern User_DeveloperAccountPermissionsItem_CANMANAGEPERMISSIONSGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANMANAGEPERMISSIONSGLOBAL = User_DeveloperAccountPermissionsItem "CAN_MANAGE_PERMISSIONS_GLOBAL"

-- | Edit Play Games Services projects.
pattern User_DeveloperAccountPermissionsItem_CANEDITGAMESGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANEDITGAMESGLOBAL = User_DeveloperAccountPermissionsItem "CAN_EDIT_GAMES_GLOBAL"

-- | Publish Play Games Services projects.
pattern User_DeveloperAccountPermissionsItem_CANPUBLISHGAMESGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANPUBLISHGAMESGLOBAL = User_DeveloperAccountPermissionsItem "CAN_PUBLISH_GAMES_GLOBAL"

-- | Reply to reviews.
pattern User_DeveloperAccountPermissionsItem_CANREPLYTOREVIEWSGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANREPLYTOREVIEWSGLOBAL = User_DeveloperAccountPermissionsItem "CAN_REPLY_TO_REVIEWS_GLOBAL"

-- | Release to production, exclude devices, and use app signing by Google Play.
pattern User_DeveloperAccountPermissionsItem_CANMANAGEPUBLICAPKSGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANMANAGEPUBLICAPKSGLOBAL = User_DeveloperAccountPermissionsItem "CAN_MANAGE_PUBLIC_APKS_GLOBAL"

-- | Release to testing tracks.
pattern User_DeveloperAccountPermissionsItem_CANMANAGETRACKAPKSGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANMANAGETRACKAPKSGLOBAL = User_DeveloperAccountPermissionsItem "CAN_MANAGE_TRACK_APKS_GLOBAL"

-- | Manage testing tracks and edit tester lists.
pattern User_DeveloperAccountPermissionsItem_CANMANAGETRACKUSERSGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANMANAGETRACKUSERSGLOBAL = User_DeveloperAccountPermissionsItem "CAN_MANAGE_TRACK_USERS_GLOBAL"

-- | Manage store presence.
pattern User_DeveloperAccountPermissionsItem_CANMANAGEPUBLICLISTINGGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANMANAGEPUBLICLISTINGGLOBAL = User_DeveloperAccountPermissionsItem "CAN_MANAGE_PUBLIC_LISTING_GLOBAL"

-- | Create, edit, and delete draft apps.
pattern User_DeveloperAccountPermissionsItem_CANMANAGEDRAFTAPPSGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANMANAGEDRAFTAPPSGLOBAL = User_DeveloperAccountPermissionsItem "CAN_MANAGE_DRAFT_APPS_GLOBAL"

-- | Create and publish private apps to your organization.
pattern User_DeveloperAccountPermissionsItem_CANCREATEMANAGEDPLAYAPPSGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANCREATEMANAGEDPLAYAPPSGLOBAL = User_DeveloperAccountPermissionsItem "CAN_CREATE_MANAGED_PLAY_APPS_GLOBAL"

-- | Choose whether apps are public, or only available to your organization.
pattern User_DeveloperAccountPermissionsItem_CANCHANGEMANAGEDPLAYSETTINGGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANCHANGEMANAGEDPLAYSETTINGGLOBAL = User_DeveloperAccountPermissionsItem "CAN_CHANGE_MANAGED_PLAY_SETTING_GLOBAL"

-- | Manage orders and subscriptions.
pattern User_DeveloperAccountPermissionsItem_CANMANAGEORDERSGLOBAL :: User_DeveloperAccountPermissionsItem
pattern User_DeveloperAccountPermissionsItem_CANMANAGEORDERSGLOBAL = User_DeveloperAccountPermissionsItem "CAN_MANAGE_ORDERS_GLOBAL"

{-# COMPLETE
  User_DeveloperAccountPermissionsItem_DEVELOPERLEVELPERMISSIONUNSPECIFIED,
  User_DeveloperAccountPermissionsItem_CANSEEALLAPPS,
  User_DeveloperAccountPermissionsItem_CANVIEWFINANCIALDATAGLOBAL,
  User_DeveloperAccountPermissionsItem_CANMANAGEPERMISSIONSGLOBAL,
  User_DeveloperAccountPermissionsItem_CANEDITGAMESGLOBAL,
  User_DeveloperAccountPermissionsItem_CANPUBLISHGAMESGLOBAL,
  User_DeveloperAccountPermissionsItem_CANREPLYTOREVIEWSGLOBAL,
  User_DeveloperAccountPermissionsItem_CANMANAGEPUBLICAPKSGLOBAL,
  User_DeveloperAccountPermissionsItem_CANMANAGETRACKAPKSGLOBAL,
  User_DeveloperAccountPermissionsItem_CANMANAGETRACKUSERSGLOBAL,
  User_DeveloperAccountPermissionsItem_CANMANAGEPUBLICLISTINGGLOBAL,
  User_DeveloperAccountPermissionsItem_CANMANAGEDRAFTAPPSGLOBAL,
  User_DeveloperAccountPermissionsItem_CANCREATEMANAGEDPLAYAPPSGLOBAL,
  User_DeveloperAccountPermissionsItem_CANCHANGEMANAGEDPLAYSETTINGGLOBAL,
  User_DeveloperAccountPermissionsItem_CANMANAGEORDERSGLOBAL,
  User_DeveloperAccountPermissionsItem
  #-}

-- | The type of the deobfuscation file.
newtype EditsDeobfuscationfilesUploadDeobfuscationFileType = EditsDeobfuscationfilesUploadDeobfuscationFileType {fromEditsDeobfuscationfilesUploadDeobfuscationFileType :: Core.Text}
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

-- | Unspecified deobfuscation file type.
pattern EditsDeobfuscationfilesUploadDeobfuscationFileType_DeobfuscationFileTypeUnspecified :: EditsDeobfuscationfilesUploadDeobfuscationFileType
pattern EditsDeobfuscationfilesUploadDeobfuscationFileType_DeobfuscationFileTypeUnspecified = EditsDeobfuscationfilesUploadDeobfuscationFileType "deobfuscationFileTypeUnspecified"

-- | Proguard deobfuscation file type.
pattern EditsDeobfuscationfilesUploadDeobfuscationFileType_Proguard :: EditsDeobfuscationfilesUploadDeobfuscationFileType
pattern EditsDeobfuscationfilesUploadDeobfuscationFileType_Proguard = EditsDeobfuscationfilesUploadDeobfuscationFileType "proguard"

-- | Native debugging symbols file type.
pattern EditsDeobfuscationfilesUploadDeobfuscationFileType_NativeCode :: EditsDeobfuscationfilesUploadDeobfuscationFileType
pattern EditsDeobfuscationfilesUploadDeobfuscationFileType_NativeCode = EditsDeobfuscationfilesUploadDeobfuscationFileType "nativeCode"

{-# COMPLETE
  EditsDeobfuscationfilesUploadDeobfuscationFileType_DeobfuscationFileTypeUnspecified,
  EditsDeobfuscationfilesUploadDeobfuscationFileType_Proguard,
  EditsDeobfuscationfilesUploadDeobfuscationFileType_NativeCode,
  EditsDeobfuscationfilesUploadDeobfuscationFileType
  #-}

-- | The file type of the file configuration which is being read or modified.
newtype EditsExpansionfilesGetExpansionFileType = EditsExpansionfilesGetExpansionFileType {fromEditsExpansionfilesGetExpansionFileType :: Core.Text}
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

-- | Unspecified expansion file type.
pattern EditsExpansionfilesGetExpansionFileType_ExpansionFileTypeUnspecified :: EditsExpansionfilesGetExpansionFileType
pattern EditsExpansionfilesGetExpansionFileType_ExpansionFileTypeUnspecified = EditsExpansionfilesGetExpansionFileType "expansionFileTypeUnspecified"

-- | Main expansion file.
pattern EditsExpansionfilesGetExpansionFileType_Main :: EditsExpansionfilesGetExpansionFileType
pattern EditsExpansionfilesGetExpansionFileType_Main = EditsExpansionfilesGetExpansionFileType "main"

-- | Patch expansion file.
pattern EditsExpansionfilesGetExpansionFileType_Patch' :: EditsExpansionfilesGetExpansionFileType
pattern EditsExpansionfilesGetExpansionFileType_Patch' = EditsExpansionfilesGetExpansionFileType "patch"

{-# COMPLETE
  EditsExpansionfilesGetExpansionFileType_ExpansionFileTypeUnspecified,
  EditsExpansionfilesGetExpansionFileType_Main,
  EditsExpansionfilesGetExpansionFileType_Patch',
  EditsExpansionfilesGetExpansionFileType
  #-}

-- | The file type of the expansion file configuration which is being updated.
newtype EditsExpansionfilesPatchExpansionFileType = EditsExpansionfilesPatchExpansionFileType {fromEditsExpansionfilesPatchExpansionFileType :: Core.Text}
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

-- | Unspecified expansion file type.
pattern EditsExpansionfilesPatchExpansionFileType_ExpansionFileTypeUnspecified :: EditsExpansionfilesPatchExpansionFileType
pattern EditsExpansionfilesPatchExpansionFileType_ExpansionFileTypeUnspecified = EditsExpansionfilesPatchExpansionFileType "expansionFileTypeUnspecified"

-- | Main expansion file.
pattern EditsExpansionfilesPatchExpansionFileType_Main :: EditsExpansionfilesPatchExpansionFileType
pattern EditsExpansionfilesPatchExpansionFileType_Main = EditsExpansionfilesPatchExpansionFileType "main"

-- | Patch expansion file.
pattern EditsExpansionfilesPatchExpansionFileType_Patch' :: EditsExpansionfilesPatchExpansionFileType
pattern EditsExpansionfilesPatchExpansionFileType_Patch' = EditsExpansionfilesPatchExpansionFileType "patch"

{-# COMPLETE
  EditsExpansionfilesPatchExpansionFileType_ExpansionFileTypeUnspecified,
  EditsExpansionfilesPatchExpansionFileType_Main,
  EditsExpansionfilesPatchExpansionFileType_Patch',
  EditsExpansionfilesPatchExpansionFileType
  #-}

-- | The file type of the file configuration which is being read or modified.
newtype EditsExpansionfilesUpdateExpansionFileType = EditsExpansionfilesUpdateExpansionFileType {fromEditsExpansionfilesUpdateExpansionFileType :: Core.Text}
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

-- | Unspecified expansion file type.
pattern EditsExpansionfilesUpdateExpansionFileType_ExpansionFileTypeUnspecified :: EditsExpansionfilesUpdateExpansionFileType
pattern EditsExpansionfilesUpdateExpansionFileType_ExpansionFileTypeUnspecified = EditsExpansionfilesUpdateExpansionFileType "expansionFileTypeUnspecified"

-- | Main expansion file.
pattern EditsExpansionfilesUpdateExpansionFileType_Main :: EditsExpansionfilesUpdateExpansionFileType
pattern EditsExpansionfilesUpdateExpansionFileType_Main = EditsExpansionfilesUpdateExpansionFileType "main"

-- | Patch expansion file.
pattern EditsExpansionfilesUpdateExpansionFileType_Patch' :: EditsExpansionfilesUpdateExpansionFileType
pattern EditsExpansionfilesUpdateExpansionFileType_Patch' = EditsExpansionfilesUpdateExpansionFileType "patch"

{-# COMPLETE
  EditsExpansionfilesUpdateExpansionFileType_ExpansionFileTypeUnspecified,
  EditsExpansionfilesUpdateExpansionFileType_Main,
  EditsExpansionfilesUpdateExpansionFileType_Patch',
  EditsExpansionfilesUpdateExpansionFileType
  #-}

-- | The file type of the expansion file configuration which is being updated.
newtype EditsExpansionfilesUploadExpansionFileType = EditsExpansionfilesUploadExpansionFileType {fromEditsExpansionfilesUploadExpansionFileType :: Core.Text}
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

-- | Unspecified expansion file type.
pattern EditsExpansionfilesUploadExpansionFileType_ExpansionFileTypeUnspecified :: EditsExpansionfilesUploadExpansionFileType
pattern EditsExpansionfilesUploadExpansionFileType_ExpansionFileTypeUnspecified = EditsExpansionfilesUploadExpansionFileType "expansionFileTypeUnspecified"

-- | Main expansion file.
pattern EditsExpansionfilesUploadExpansionFileType_Main :: EditsExpansionfilesUploadExpansionFileType
pattern EditsExpansionfilesUploadExpansionFileType_Main = EditsExpansionfilesUploadExpansionFileType "main"

-- | Patch expansion file.
pattern EditsExpansionfilesUploadExpansionFileType_Patch' :: EditsExpansionfilesUploadExpansionFileType
pattern EditsExpansionfilesUploadExpansionFileType_Patch' = EditsExpansionfilesUploadExpansionFileType "patch"

{-# COMPLETE
  EditsExpansionfilesUploadExpansionFileType_ExpansionFileTypeUnspecified,
  EditsExpansionfilesUploadExpansionFileType_Main,
  EditsExpansionfilesUploadExpansionFileType_Patch',
  EditsExpansionfilesUploadExpansionFileType
  #-}

-- | Type of the Image.
newtype EditsImagesDeleteImageType = EditsImagesDeleteImageType {fromEditsImagesDeleteImageType :: Core.Text}
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

-- | Unspecified type. Do not use.
pattern EditsImagesDeleteImageType_AppImageTypeUnspecified :: EditsImagesDeleteImageType
pattern EditsImagesDeleteImageType_AppImageTypeUnspecified = EditsImagesDeleteImageType "appImageTypeUnspecified"

-- | Phone screenshot.
pattern EditsImagesDeleteImageType_PhoneScreenshots :: EditsImagesDeleteImageType
pattern EditsImagesDeleteImageType_PhoneScreenshots = EditsImagesDeleteImageType "phoneScreenshots"

-- | Seven inch screenshot.
pattern EditsImagesDeleteImageType_SevenInchScreenshots :: EditsImagesDeleteImageType
pattern EditsImagesDeleteImageType_SevenInchScreenshots = EditsImagesDeleteImageType "sevenInchScreenshots"

-- | Ten inch screenshot.
pattern EditsImagesDeleteImageType_TenInchScreenshots :: EditsImagesDeleteImageType
pattern EditsImagesDeleteImageType_TenInchScreenshots = EditsImagesDeleteImageType "tenInchScreenshots"

-- | TV screenshot.
pattern EditsImagesDeleteImageType_TvScreenshots :: EditsImagesDeleteImageType
pattern EditsImagesDeleteImageType_TvScreenshots = EditsImagesDeleteImageType "tvScreenshots"

-- | Wear screenshot.
pattern EditsImagesDeleteImageType_WearScreenshots :: EditsImagesDeleteImageType
pattern EditsImagesDeleteImageType_WearScreenshots = EditsImagesDeleteImageType "wearScreenshots"

-- | Icon.
pattern EditsImagesDeleteImageType_Icon :: EditsImagesDeleteImageType
pattern EditsImagesDeleteImageType_Icon = EditsImagesDeleteImageType "icon"

-- | Feature graphic.
pattern EditsImagesDeleteImageType_FeatureGraphic :: EditsImagesDeleteImageType
pattern EditsImagesDeleteImageType_FeatureGraphic = EditsImagesDeleteImageType "featureGraphic"

-- | TV banner.
pattern EditsImagesDeleteImageType_TvBanner :: EditsImagesDeleteImageType
pattern EditsImagesDeleteImageType_TvBanner = EditsImagesDeleteImageType "tvBanner"

{-# COMPLETE
  EditsImagesDeleteImageType_AppImageTypeUnspecified,
  EditsImagesDeleteImageType_PhoneScreenshots,
  EditsImagesDeleteImageType_SevenInchScreenshots,
  EditsImagesDeleteImageType_TenInchScreenshots,
  EditsImagesDeleteImageType_TvScreenshots,
  EditsImagesDeleteImageType_WearScreenshots,
  EditsImagesDeleteImageType_Icon,
  EditsImagesDeleteImageType_FeatureGraphic,
  EditsImagesDeleteImageType_TvBanner,
  EditsImagesDeleteImageType
  #-}

-- | Type of the Image. Providing an image type that refers to no images is a no-op.
newtype EditsImagesDeleteallImageType = EditsImagesDeleteallImageType {fromEditsImagesDeleteallImageType :: Core.Text}
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

-- | Unspecified type. Do not use.
pattern EditsImagesDeleteallImageType_AppImageTypeUnspecified :: EditsImagesDeleteallImageType
pattern EditsImagesDeleteallImageType_AppImageTypeUnspecified = EditsImagesDeleteallImageType "appImageTypeUnspecified"

-- | Phone screenshot.
pattern EditsImagesDeleteallImageType_PhoneScreenshots :: EditsImagesDeleteallImageType
pattern EditsImagesDeleteallImageType_PhoneScreenshots = EditsImagesDeleteallImageType "phoneScreenshots"

-- | Seven inch screenshot.
pattern EditsImagesDeleteallImageType_SevenInchScreenshots :: EditsImagesDeleteallImageType
pattern EditsImagesDeleteallImageType_SevenInchScreenshots = EditsImagesDeleteallImageType "sevenInchScreenshots"

-- | Ten inch screenshot.
pattern EditsImagesDeleteallImageType_TenInchScreenshots :: EditsImagesDeleteallImageType
pattern EditsImagesDeleteallImageType_TenInchScreenshots = EditsImagesDeleteallImageType "tenInchScreenshots"

-- | TV screenshot.
pattern EditsImagesDeleteallImageType_TvScreenshots :: EditsImagesDeleteallImageType
pattern EditsImagesDeleteallImageType_TvScreenshots = EditsImagesDeleteallImageType "tvScreenshots"

-- | Wear screenshot.
pattern EditsImagesDeleteallImageType_WearScreenshots :: EditsImagesDeleteallImageType
pattern EditsImagesDeleteallImageType_WearScreenshots = EditsImagesDeleteallImageType "wearScreenshots"

-- | Icon.
pattern EditsImagesDeleteallImageType_Icon :: EditsImagesDeleteallImageType
pattern EditsImagesDeleteallImageType_Icon = EditsImagesDeleteallImageType "icon"

-- | Feature graphic.
pattern EditsImagesDeleteallImageType_FeatureGraphic :: EditsImagesDeleteallImageType
pattern EditsImagesDeleteallImageType_FeatureGraphic = EditsImagesDeleteallImageType "featureGraphic"

-- | TV banner.
pattern EditsImagesDeleteallImageType_TvBanner :: EditsImagesDeleteallImageType
pattern EditsImagesDeleteallImageType_TvBanner = EditsImagesDeleteallImageType "tvBanner"

{-# COMPLETE
  EditsImagesDeleteallImageType_AppImageTypeUnspecified,
  EditsImagesDeleteallImageType_PhoneScreenshots,
  EditsImagesDeleteallImageType_SevenInchScreenshots,
  EditsImagesDeleteallImageType_TenInchScreenshots,
  EditsImagesDeleteallImageType_TvScreenshots,
  EditsImagesDeleteallImageType_WearScreenshots,
  EditsImagesDeleteallImageType_Icon,
  EditsImagesDeleteallImageType_FeatureGraphic,
  EditsImagesDeleteallImageType_TvBanner,
  EditsImagesDeleteallImageType
  #-}

-- | Type of the Image. Providing an image type that refers to no images will return an empty response.
newtype EditsImagesListImageType = EditsImagesListImageType {fromEditsImagesListImageType :: Core.Text}
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

-- | Unspecified type. Do not use.
pattern EditsImagesListImageType_AppImageTypeUnspecified :: EditsImagesListImageType
pattern EditsImagesListImageType_AppImageTypeUnspecified = EditsImagesListImageType "appImageTypeUnspecified"

-- | Phone screenshot.
pattern EditsImagesListImageType_PhoneScreenshots :: EditsImagesListImageType
pattern EditsImagesListImageType_PhoneScreenshots = EditsImagesListImageType "phoneScreenshots"

-- | Seven inch screenshot.
pattern EditsImagesListImageType_SevenInchScreenshots :: EditsImagesListImageType
pattern EditsImagesListImageType_SevenInchScreenshots = EditsImagesListImageType "sevenInchScreenshots"

-- | Ten inch screenshot.
pattern EditsImagesListImageType_TenInchScreenshots :: EditsImagesListImageType
pattern EditsImagesListImageType_TenInchScreenshots = EditsImagesListImageType "tenInchScreenshots"

-- | TV screenshot.
pattern EditsImagesListImageType_TvScreenshots :: EditsImagesListImageType
pattern EditsImagesListImageType_TvScreenshots = EditsImagesListImageType "tvScreenshots"

-- | Wear screenshot.
pattern EditsImagesListImageType_WearScreenshots :: EditsImagesListImageType
pattern EditsImagesListImageType_WearScreenshots = EditsImagesListImageType "wearScreenshots"

-- | Icon.
pattern EditsImagesListImageType_Icon :: EditsImagesListImageType
pattern EditsImagesListImageType_Icon = EditsImagesListImageType "icon"

-- | Feature graphic.
pattern EditsImagesListImageType_FeatureGraphic :: EditsImagesListImageType
pattern EditsImagesListImageType_FeatureGraphic = EditsImagesListImageType "featureGraphic"

-- | TV banner.
pattern EditsImagesListImageType_TvBanner :: EditsImagesListImageType
pattern EditsImagesListImageType_TvBanner = EditsImagesListImageType "tvBanner"

{-# COMPLETE
  EditsImagesListImageType_AppImageTypeUnspecified,
  EditsImagesListImageType_PhoneScreenshots,
  EditsImagesListImageType_SevenInchScreenshots,
  EditsImagesListImageType_TenInchScreenshots,
  EditsImagesListImageType_TvScreenshots,
  EditsImagesListImageType_WearScreenshots,
  EditsImagesListImageType_Icon,
  EditsImagesListImageType_FeatureGraphic,
  EditsImagesListImageType_TvBanner,
  EditsImagesListImageType
  #-}

-- | Type of the Image.
newtype EditsImagesUploadImageType = EditsImagesUploadImageType {fromEditsImagesUploadImageType :: Core.Text}
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

-- | Unspecified type. Do not use.
pattern EditsImagesUploadImageType_AppImageTypeUnspecified :: EditsImagesUploadImageType
pattern EditsImagesUploadImageType_AppImageTypeUnspecified = EditsImagesUploadImageType "appImageTypeUnspecified"

-- | Phone screenshot.
pattern EditsImagesUploadImageType_PhoneScreenshots :: EditsImagesUploadImageType
pattern EditsImagesUploadImageType_PhoneScreenshots = EditsImagesUploadImageType "phoneScreenshots"

-- | Seven inch screenshot.
pattern EditsImagesUploadImageType_SevenInchScreenshots :: EditsImagesUploadImageType
pattern EditsImagesUploadImageType_SevenInchScreenshots = EditsImagesUploadImageType "sevenInchScreenshots"

-- | Ten inch screenshot.
pattern EditsImagesUploadImageType_TenInchScreenshots :: EditsImagesUploadImageType
pattern EditsImagesUploadImageType_TenInchScreenshots = EditsImagesUploadImageType "tenInchScreenshots"

-- | TV screenshot.
pattern EditsImagesUploadImageType_TvScreenshots :: EditsImagesUploadImageType
pattern EditsImagesUploadImageType_TvScreenshots = EditsImagesUploadImageType "tvScreenshots"

-- | Wear screenshot.
pattern EditsImagesUploadImageType_WearScreenshots :: EditsImagesUploadImageType
pattern EditsImagesUploadImageType_WearScreenshots = EditsImagesUploadImageType "wearScreenshots"

-- | Icon.
pattern EditsImagesUploadImageType_Icon :: EditsImagesUploadImageType
pattern EditsImagesUploadImageType_Icon = EditsImagesUploadImageType "icon"

-- | Feature graphic.
pattern EditsImagesUploadImageType_FeatureGraphic :: EditsImagesUploadImageType
pattern EditsImagesUploadImageType_FeatureGraphic = EditsImagesUploadImageType "featureGraphic"

-- | TV banner.
pattern EditsImagesUploadImageType_TvBanner :: EditsImagesUploadImageType
pattern EditsImagesUploadImageType_TvBanner = EditsImagesUploadImageType "tvBanner"

{-# COMPLETE
  EditsImagesUploadImageType_AppImageTypeUnspecified,
  EditsImagesUploadImageType_PhoneScreenshots,
  EditsImagesUploadImageType_SevenInchScreenshots,
  EditsImagesUploadImageType_TenInchScreenshots,
  EditsImagesUploadImageType_TvScreenshots,
  EditsImagesUploadImageType_WearScreenshots,
  EditsImagesUploadImageType_Icon,
  EditsImagesUploadImageType_FeatureGraphic,
  EditsImagesUploadImageType_TvBanner,
  EditsImagesUploadImageType
  #-}
