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
