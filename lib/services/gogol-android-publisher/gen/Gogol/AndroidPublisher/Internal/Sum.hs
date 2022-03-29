-- |
-- Module      : Gogol.AndroidPublisher.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AndroidPublisher.Internal.Sum
  (

    -- * DeobfuscationFile'SymbolType
    DeobfuscationFile'SymbolType
      (
        DeobfuscationFile'SymbolType_DeobfuscationFileTypeUnspecified,
        DeobfuscationFile'SymbolType_Proguard,
        DeobfuscationFile'SymbolType_NativeCode,
        ..
      ),

    -- * EditsDeobfuscationfilesUploadDeobfuscationFileType
    EditsDeobfuscationfilesUploadDeobfuscationFileType
      (
        EditsDeobfuscationfilesUploadDeobfuscationFileType_DeobfuscationFileTypeUnspecified,
        EditsDeobfuscationfilesUploadDeobfuscationFileType_Proguard,
        EditsDeobfuscationfilesUploadDeobfuscationFileType_NativeCode,
        ..
      ),

    -- * EditsExpansionfilesGetExpansionFileType
    EditsExpansionfilesGetExpansionFileType
      (
        EditsExpansionfilesGetExpansionFileType_ExpansionFileTypeUnspecified,
        EditsExpansionfilesGetExpansionFileType_Main,
        EditsExpansionfilesGetExpansionFileType_Patch',
        ..
      ),

    -- * EditsExpansionfilesPatchExpansionFileType
    EditsExpansionfilesPatchExpansionFileType
      (
        EditsExpansionfilesPatchExpansionFileType_ExpansionFileTypeUnspecified,
        EditsExpansionfilesPatchExpansionFileType_Main,
        EditsExpansionfilesPatchExpansionFileType_Patch',
        ..
      ),

    -- * EditsExpansionfilesUpdateExpansionFileType
    EditsExpansionfilesUpdateExpansionFileType
      (
        EditsExpansionfilesUpdateExpansionFileType_ExpansionFileTypeUnspecified,
        EditsExpansionfilesUpdateExpansionFileType_Main,
        EditsExpansionfilesUpdateExpansionFileType_Patch',
        ..
      ),

    -- * EditsExpansionfilesUploadExpansionFileType
    EditsExpansionfilesUploadExpansionFileType
      (
        EditsExpansionfilesUploadExpansionFileType_ExpansionFileTypeUnspecified,
        EditsExpansionfilesUploadExpansionFileType_Main,
        EditsExpansionfilesUploadExpansionFileType_Patch',
        ..
      ),

    -- * EditsImagesDeleteImageType
    EditsImagesDeleteImageType
      (
        EditsImagesDeleteImageType_AppImageTypeUnspecified,
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
      (
        EditsImagesDeleteallImageType_AppImageTypeUnspecified,
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
      (
        EditsImagesListImageType_AppImageTypeUnspecified,
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
      (
        EditsImagesUploadImageType_AppImageTypeUnspecified,
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

    -- * Grant'AppLevelPermissionsItem
    Grant'AppLevelPermissionsItem
      (
        Grant'AppLevelPermissionsItem_APPLEVELPERMISSIONUNSPECIFIED,
        Grant'AppLevelPermissionsItem_CANACCESSAPP,
        Grant'AppLevelPermissionsItem_CANVIEWFINANCIALDATA,
        Grant'AppLevelPermissionsItem_CANMANAGEPERMISSIONS,
        Grant'AppLevelPermissionsItem_CANREPLYTOREVIEWS,
        Grant'AppLevelPermissionsItem_CANMANAGEPUBLICAPKS,
        Grant'AppLevelPermissionsItem_CANMANAGETRACKAPKS,
        Grant'AppLevelPermissionsItem_CANMANAGETRACKUSERS,
        Grant'AppLevelPermissionsItem_CANMANAGEPUBLICLISTING,
        Grant'AppLevelPermissionsItem_CANMANAGEDRAFTAPPS,
        Grant'AppLevelPermissionsItem_CANMANAGEORDERS,
        ..
      ),

    -- * InAppProduct'PurchaseType
    InAppProduct'PurchaseType
      (
        InAppProduct'PurchaseType_PurchaseTypeUnspecified,
        InAppProduct'PurchaseType_ManagedUser,
        InAppProduct'PurchaseType_Subscription,
        ..
      ),

    -- * InAppProduct'Status
    InAppProduct'Status
      (
        InAppProduct'Status_StatusUnspecified,
        InAppProduct'Status_Active,
        InAppProduct'Status_Inactive,
        ..
      ),

    -- * ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType
    ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType
      (
        ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED,
        ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT,
        ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE,
        ..
      ),

    -- * RegionalTaxRateInfo'TaxTier
    RegionalTaxRateInfo'TaxTier
      (
        RegionalTaxRateInfo'TaxTier_TAXTIERUNSPECIFIED,
        RegionalTaxRateInfo'TaxTier_TAX_TIER_BOOKS_1,
        RegionalTaxRateInfo'TaxTier_TAX_TIER_NEWS_1,
        RegionalTaxRateInfo'TaxTier_TAX_TIER_NEWS_2,
        RegionalTaxRateInfo'TaxTier_TAX_TIER_MUSIC_OR_AUDIO_1,
        RegionalTaxRateInfo'TaxTier_TAX_TIER_LIVE_OR_BROADCAST_1,
        ..
      ),

    -- * SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType
    SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType
      (
        SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED,
        SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT,
        SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE,
        ..
      ),

    -- * TrackRelease'Status
    TrackRelease'Status
      (
        TrackRelease'Status_StatusUnspecified,
        TrackRelease'Status_Draft,
        TrackRelease'Status_InProgress,
        TrackRelease'Status_Halted,
        TrackRelease'Status_Completed,
        ..
      ),

    -- * User'AccessState
    User'AccessState
      (
        User'AccessState_ACCESSSTATEUNSPECIFIED,
        User'AccessState_Invited,
        User'AccessState_INVITATIONEXPIRED,
        User'AccessState_ACCESSGRANTED,
        User'AccessState_ACCESSEXPIRED,
        ..
      ),

    -- * User'DeveloperAccountPermissionsItem
    User'DeveloperAccountPermissionsItem
      (
        User'DeveloperAccountPermissionsItem_DEVELOPERLEVELPERMISSIONUNSPECIFIED,
        User'DeveloperAccountPermissionsItem_CANSEEALLAPPS,
        User'DeveloperAccountPermissionsItem_CANVIEWFINANCIALDATAGLOBAL,
        User'DeveloperAccountPermissionsItem_CANMANAGEPERMISSIONSGLOBAL,
        User'DeveloperAccountPermissionsItem_CANEDITGAMESGLOBAL,
        User'DeveloperAccountPermissionsItem_CANPUBLISHGAMESGLOBAL,
        User'DeveloperAccountPermissionsItem_CANREPLYTOREVIEWSGLOBAL,
        User'DeveloperAccountPermissionsItem_CANMANAGEPUBLICAPKSGLOBAL,
        User'DeveloperAccountPermissionsItem_CANMANAGETRACKAPKSGLOBAL,
        User'DeveloperAccountPermissionsItem_CANMANAGETRACKUSERSGLOBAL,
        User'DeveloperAccountPermissionsItem_CANMANAGEPUBLICLISTINGGLOBAL,
        User'DeveloperAccountPermissionsItem_CANMANAGEDRAFTAPPSGLOBAL,
        User'DeveloperAccountPermissionsItem_CANCREATEMANAGEDPLAYAPPSGLOBAL,
        User'DeveloperAccountPermissionsItem_CANCHANGEMANAGEDPLAYSETTINGGLOBAL,
        User'DeveloperAccountPermissionsItem_CANMANAGEORDERSGLOBAL,
        ..
      ),

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | The type of the deobfuscation file.
newtype DeobfuscationFile'SymbolType = DeobfuscationFile'SymbolType { fromDeobfuscationFile'SymbolType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified deobfuscation file type.
pattern DeobfuscationFile'SymbolType_DeobfuscationFileTypeUnspecified :: DeobfuscationFile'SymbolType
pattern DeobfuscationFile'SymbolType_DeobfuscationFileTypeUnspecified = DeobfuscationFile'SymbolType "deobfuscationFileTypeUnspecified"

-- | Proguard deobfuscation file type.
pattern DeobfuscationFile'SymbolType_Proguard :: DeobfuscationFile'SymbolType
pattern DeobfuscationFile'SymbolType_Proguard = DeobfuscationFile'SymbolType "proguard"

-- | Native debugging symbols file type.
pattern DeobfuscationFile'SymbolType_NativeCode :: DeobfuscationFile'SymbolType
pattern DeobfuscationFile'SymbolType_NativeCode = DeobfuscationFile'SymbolType "nativeCode"

{-# COMPLETE
  DeobfuscationFile'SymbolType_DeobfuscationFileTypeUnspecified,
  DeobfuscationFile'SymbolType_Proguard,
  DeobfuscationFile'SymbolType_NativeCode,
  DeobfuscationFile'SymbolType #-}

-- | The type of the deobfuscation file.
newtype EditsDeobfuscationfilesUploadDeobfuscationFileType = EditsDeobfuscationfilesUploadDeobfuscationFileType { fromEditsDeobfuscationfilesUploadDeobfuscationFileType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EditsDeobfuscationfilesUploadDeobfuscationFileType #-}

-- | The file type of the file configuration which is being read or modified.
newtype EditsExpansionfilesGetExpansionFileType = EditsExpansionfilesGetExpansionFileType { fromEditsExpansionfilesGetExpansionFileType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EditsExpansionfilesGetExpansionFileType #-}

-- | The file type of the expansion file configuration which is being updated.
newtype EditsExpansionfilesPatchExpansionFileType = EditsExpansionfilesPatchExpansionFileType { fromEditsExpansionfilesPatchExpansionFileType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EditsExpansionfilesPatchExpansionFileType #-}

-- | The file type of the file configuration which is being read or modified.
newtype EditsExpansionfilesUpdateExpansionFileType = EditsExpansionfilesUpdateExpansionFileType { fromEditsExpansionfilesUpdateExpansionFileType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EditsExpansionfilesUpdateExpansionFileType #-}

-- | The file type of the expansion file configuration which is being updated.
newtype EditsExpansionfilesUploadExpansionFileType = EditsExpansionfilesUploadExpansionFileType { fromEditsExpansionfilesUploadExpansionFileType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EditsExpansionfilesUploadExpansionFileType #-}

-- | Type of the Image.
newtype EditsImagesDeleteImageType = EditsImagesDeleteImageType { fromEditsImagesDeleteImageType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EditsImagesDeleteImageType #-}

-- | Type of the Image. Providing an image type that refers to no images is a no-op.
newtype EditsImagesDeleteallImageType = EditsImagesDeleteallImageType { fromEditsImagesDeleteallImageType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EditsImagesDeleteallImageType #-}

-- | Type of the Image. Providing an image type that refers to no images will return an empty response.
newtype EditsImagesListImageType = EditsImagesListImageType { fromEditsImagesListImageType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EditsImagesListImageType #-}

-- | Type of the Image.
newtype EditsImagesUploadImageType = EditsImagesUploadImageType { fromEditsImagesUploadImageType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  EditsImagesUploadImageType #-}

newtype Grant'AppLevelPermissionsItem = Grant'AppLevelPermissionsItem { fromGrant'AppLevelPermissionsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown or unspecified permission.
pattern Grant'AppLevelPermissionsItem_APPLEVELPERMISSIONUNSPECIFIED :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_APPLEVELPERMISSIONUNSPECIFIED = Grant'AppLevelPermissionsItem "APP_LEVEL_PERMISSION_UNSPECIFIED"

-- | View app information (read-only).
pattern Grant'AppLevelPermissionsItem_CANACCESSAPP :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANACCESSAPP = Grant'AppLevelPermissionsItem "CAN_ACCESS_APP"

-- | View financial data.
pattern Grant'AppLevelPermissionsItem_CANVIEWFINANCIALDATA :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANVIEWFINANCIALDATA = Grant'AppLevelPermissionsItem "CAN_VIEW_FINANCIAL_DATA"

-- | Admin (all permissions).
pattern Grant'AppLevelPermissionsItem_CANMANAGEPERMISSIONS :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANMANAGEPERMISSIONS = Grant'AppLevelPermissionsItem "CAN_MANAGE_PERMISSIONS"

-- | Reply to reviews.
pattern Grant'AppLevelPermissionsItem_CANREPLYTOREVIEWS :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANREPLYTOREVIEWS = Grant'AppLevelPermissionsItem "CAN_REPLY_TO_REVIEWS"

-- | Release to production, exclude devices, and use app signing by Google Play.
pattern Grant'AppLevelPermissionsItem_CANMANAGEPUBLICAPKS :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANMANAGEPUBLICAPKS = Grant'AppLevelPermissionsItem "CAN_MANAGE_PUBLIC_APKS"

-- | Release to testing tracks.
pattern Grant'AppLevelPermissionsItem_CANMANAGETRACKAPKS :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANMANAGETRACKAPKS = Grant'AppLevelPermissionsItem "CAN_MANAGE_TRACK_APKS"

-- | Manage testing tracks and edit tester lists.
pattern Grant'AppLevelPermissionsItem_CANMANAGETRACKUSERS :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANMANAGETRACKUSERS = Grant'AppLevelPermissionsItem "CAN_MANAGE_TRACK_USERS"

-- | Manage store presence.
pattern Grant'AppLevelPermissionsItem_CANMANAGEPUBLICLISTING :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANMANAGEPUBLICLISTING = Grant'AppLevelPermissionsItem "CAN_MANAGE_PUBLIC_LISTING"

-- | Edit and delete draft apps.
pattern Grant'AppLevelPermissionsItem_CANMANAGEDRAFTAPPS :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANMANAGEDRAFTAPPS = Grant'AppLevelPermissionsItem "CAN_MANAGE_DRAFT_APPS"

-- | Manage orders and subscriptions.
pattern Grant'AppLevelPermissionsItem_CANMANAGEORDERS :: Grant'AppLevelPermissionsItem
pattern Grant'AppLevelPermissionsItem_CANMANAGEORDERS = Grant'AppLevelPermissionsItem "CAN_MANAGE_ORDERS"

{-# COMPLETE
  Grant'AppLevelPermissionsItem_APPLEVELPERMISSIONUNSPECIFIED,
  Grant'AppLevelPermissionsItem_CANACCESSAPP,
  Grant'AppLevelPermissionsItem_CANVIEWFINANCIALDATA,
  Grant'AppLevelPermissionsItem_CANMANAGEPERMISSIONS,
  Grant'AppLevelPermissionsItem_CANREPLYTOREVIEWS,
  Grant'AppLevelPermissionsItem_CANMANAGEPUBLICAPKS,
  Grant'AppLevelPermissionsItem_CANMANAGETRACKAPKS,
  Grant'AppLevelPermissionsItem_CANMANAGETRACKUSERS,
  Grant'AppLevelPermissionsItem_CANMANAGEPUBLICLISTING,
  Grant'AppLevelPermissionsItem_CANMANAGEDRAFTAPPS,
  Grant'AppLevelPermissionsItem_CANMANAGEORDERS,
  Grant'AppLevelPermissionsItem #-}

-- | The type of the product, e.g. a recurring subscription.
newtype InAppProduct'PurchaseType = InAppProduct'PurchaseType { fromInAppProduct'PurchaseType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified purchase type.
pattern InAppProduct'PurchaseType_PurchaseTypeUnspecified :: InAppProduct'PurchaseType
pattern InAppProduct'PurchaseType_PurchaseTypeUnspecified = InAppProduct'PurchaseType "purchaseTypeUnspecified"

-- | The default product type - one time purchase.
pattern InAppProduct'PurchaseType_ManagedUser :: InAppProduct'PurchaseType
pattern InAppProduct'PurchaseType_ManagedUser = InAppProduct'PurchaseType "managedUser"

-- | In-app product with a recurring period.
pattern InAppProduct'PurchaseType_Subscription :: InAppProduct'PurchaseType
pattern InAppProduct'PurchaseType_Subscription = InAppProduct'PurchaseType "subscription"

{-# COMPLETE
  InAppProduct'PurchaseType_PurchaseTypeUnspecified,
  InAppProduct'PurchaseType_ManagedUser,
  InAppProduct'PurchaseType_Subscription,
  InAppProduct'PurchaseType #-}

-- | The status of the product, e.g. whether it\'s active.
newtype InAppProduct'Status = InAppProduct'Status { fromInAppProduct'Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified status.
pattern InAppProduct'Status_StatusUnspecified :: InAppProduct'Status
pattern InAppProduct'Status_StatusUnspecified = InAppProduct'Status "statusUnspecified"

-- | The product is published and active in the store.
pattern InAppProduct'Status_Active :: InAppProduct'Status
pattern InAppProduct'Status_Active = InAppProduct'Status "active"

-- | The product is not published and therefore inactive in the store.
pattern InAppProduct'Status_Inactive :: InAppProduct'Status
pattern InAppProduct'Status_Inactive = InAppProduct'Status "inactive"

{-# COMPLETE
  InAppProduct'Status_StatusUnspecified,
  InAppProduct'Status_Active,
  InAppProduct'Status_Inactive,
  InAppProduct'Status #-}

-- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
newtype ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType = ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType { fromManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED :: ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType
pattern ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED = ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType "WITHDRAWAL_RIGHT_TYPE_UNSPECIFIED"

-- | 
pattern ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT :: ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType
pattern ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT = ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType "WITHDRAWAL_RIGHT_DIGITAL_CONTENT"

-- | 
pattern ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE :: ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType
pattern ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE = ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType "WITHDRAWAL_RIGHT_SERVICE"

{-# COMPLETE
  ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED,
  ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT,
  ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE,
  ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType #-}

-- | Tax tier to specify reduced tax rate. Developers who sell digital news, magazines, newspapers, books, or audiobooks in various regions may be eligible for reduced tax rates. <https://support.google.com/googleplay/android-developer/answer/10463498 Learn more>.
newtype RegionalTaxRateInfo'TaxTier = RegionalTaxRateInfo'TaxTier { fromRegionalTaxRateInfo'TaxTier :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern RegionalTaxRateInfo'TaxTier_TAXTIERUNSPECIFIED :: RegionalTaxRateInfo'TaxTier
pattern RegionalTaxRateInfo'TaxTier_TAXTIERUNSPECIFIED = RegionalTaxRateInfo'TaxTier "TAX_TIER_UNSPECIFIED"

-- | 
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_BOOKS_1 :: RegionalTaxRateInfo'TaxTier
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_BOOKS_1 = RegionalTaxRateInfo'TaxTier "TAX_TIER_BOOKS_1"

-- | 
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_NEWS_1 :: RegionalTaxRateInfo'TaxTier
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_NEWS_1 = RegionalTaxRateInfo'TaxTier "TAX_TIER_NEWS_1"

-- | 
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_NEWS_2 :: RegionalTaxRateInfo'TaxTier
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_NEWS_2 = RegionalTaxRateInfo'TaxTier "TAX_TIER_NEWS_2"

-- | 
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_MUSIC_OR_AUDIO_1 :: RegionalTaxRateInfo'TaxTier
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_MUSIC_OR_AUDIO_1 = RegionalTaxRateInfo'TaxTier "TAX_TIER_MUSIC_OR_AUDIO_1"

-- | 
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_LIVE_OR_BROADCAST_1 :: RegionalTaxRateInfo'TaxTier
pattern RegionalTaxRateInfo'TaxTier_TAX_TIER_LIVE_OR_BROADCAST_1 = RegionalTaxRateInfo'TaxTier "TAX_TIER_LIVE_OR_BROADCAST_1"

{-# COMPLETE
  RegionalTaxRateInfo'TaxTier_TAXTIERUNSPECIFIED,
  RegionalTaxRateInfo'TaxTier_TAX_TIER_BOOKS_1,
  RegionalTaxRateInfo'TaxTier_TAX_TIER_NEWS_1,
  RegionalTaxRateInfo'TaxTier_TAX_TIER_NEWS_2,
  RegionalTaxRateInfo'TaxTier_TAX_TIER_MUSIC_OR_AUDIO_1,
  RegionalTaxRateInfo'TaxTier_TAX_TIER_LIVE_OR_BROADCAST_1,
  RegionalTaxRateInfo'TaxTier #-}

-- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
newtype SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType = SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType { fromSubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED :: SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType
pattern SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED = SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType "WITHDRAWAL_RIGHT_TYPE_UNSPECIFIED"

-- | 
pattern SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT :: SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType
pattern SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT = SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType "WITHDRAWAL_RIGHT_DIGITAL_CONTENT"

-- | 
pattern SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE :: SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType
pattern SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE = SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType "WITHDRAWAL_RIGHT_SERVICE"

{-# COMPLETE
  SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTTYPEUNSPECIFIED,
  SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTDIGITALCONTENT,
  SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType_WITHDRAWALRIGHTSERVICE,
  SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType #-}

-- | The status of the release.
newtype TrackRelease'Status = TrackRelease'Status { fromTrackRelease'Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified status.
pattern TrackRelease'Status_StatusUnspecified :: TrackRelease'Status
pattern TrackRelease'Status_StatusUnspecified = TrackRelease'Status "statusUnspecified"

-- | The release\'s APKs are not being served to users.
pattern TrackRelease'Status_Draft :: TrackRelease'Status
pattern TrackRelease'Status_Draft = TrackRelease'Status "draft"

-- | The release\'s APKs are being served to a fraction of users, determined by \'user_fraction\'.
pattern TrackRelease'Status_InProgress :: TrackRelease'Status
pattern TrackRelease'Status_InProgress = TrackRelease'Status "inProgress"

-- | The release\'s APKs will no longer be served to users. Users who already have these APKs are unaffected.
pattern TrackRelease'Status_Halted :: TrackRelease'Status
pattern TrackRelease'Status_Halted = TrackRelease'Status "halted"

-- | The release will have no further changes. Its APKs are being served to all users, unless they are eligible to APKs of a more recent release.
pattern TrackRelease'Status_Completed :: TrackRelease'Status
pattern TrackRelease'Status_Completed = TrackRelease'Status "completed"

{-# COMPLETE
  TrackRelease'Status_StatusUnspecified,
  TrackRelease'Status_Draft,
  TrackRelease'Status_InProgress,
  TrackRelease'Status_Halted,
  TrackRelease'Status_Completed,
  TrackRelease'Status #-}

-- | Output only. The state of the user\'s access to the Play Console.
newtype User'AccessState = User'AccessState { fromUser'AccessState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown or unspecified access state.
pattern User'AccessState_ACCESSSTATEUNSPECIFIED :: User'AccessState
pattern User'AccessState_ACCESSSTATEUNSPECIFIED = User'AccessState "ACCESS_STATE_UNSPECIFIED"

-- | User is invited but has not yet accepted the invitation.
pattern User'AccessState_Invited :: User'AccessState
pattern User'AccessState_Invited = User'AccessState "INVITED"

-- | Invitation has expired.
pattern User'AccessState_INVITATIONEXPIRED :: User'AccessState
pattern User'AccessState_INVITATIONEXPIRED = User'AccessState "INVITATION_EXPIRED"

-- | User has accepted an invitation and has access to the Play Console.
pattern User'AccessState_ACCESSGRANTED :: User'AccessState
pattern User'AccessState_ACCESSGRANTED = User'AccessState "ACCESS_GRANTED"

-- | Account access has expired.
pattern User'AccessState_ACCESSEXPIRED :: User'AccessState
pattern User'AccessState_ACCESSEXPIRED = User'AccessState "ACCESS_EXPIRED"

{-# COMPLETE
  User'AccessState_ACCESSSTATEUNSPECIFIED,
  User'AccessState_Invited,
  User'AccessState_INVITATIONEXPIRED,
  User'AccessState_ACCESSGRANTED,
  User'AccessState_ACCESSEXPIRED,
  User'AccessState #-}

newtype User'DeveloperAccountPermissionsItem = User'DeveloperAccountPermissionsItem { fromUser'DeveloperAccountPermissionsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unknown or unspecified permission.
pattern User'DeveloperAccountPermissionsItem_DEVELOPERLEVELPERMISSIONUNSPECIFIED :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_DEVELOPERLEVELPERMISSIONUNSPECIFIED = User'DeveloperAccountPermissionsItem "DEVELOPER_LEVEL_PERMISSION_UNSPECIFIED"

-- | View app information and download bulk reports (read-only).
pattern User'DeveloperAccountPermissionsItem_CANSEEALLAPPS :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANSEEALLAPPS = User'DeveloperAccountPermissionsItem "CAN_SEE_ALL_APPS"

-- | View financial data, orders, and cancellation survey responses.
pattern User'DeveloperAccountPermissionsItem_CANVIEWFINANCIALDATAGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANVIEWFINANCIALDATAGLOBAL = User'DeveloperAccountPermissionsItem "CAN_VIEW_FINANCIAL_DATA_GLOBAL"

-- | Admin (all permissions).
pattern User'DeveloperAccountPermissionsItem_CANMANAGEPERMISSIONSGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANMANAGEPERMISSIONSGLOBAL = User'DeveloperAccountPermissionsItem "CAN_MANAGE_PERMISSIONS_GLOBAL"

-- | Edit Play Games Services projects.
pattern User'DeveloperAccountPermissionsItem_CANEDITGAMESGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANEDITGAMESGLOBAL = User'DeveloperAccountPermissionsItem "CAN_EDIT_GAMES_GLOBAL"

-- | Publish Play Games Services projects.
pattern User'DeveloperAccountPermissionsItem_CANPUBLISHGAMESGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANPUBLISHGAMESGLOBAL = User'DeveloperAccountPermissionsItem "CAN_PUBLISH_GAMES_GLOBAL"

-- | Reply to reviews.
pattern User'DeveloperAccountPermissionsItem_CANREPLYTOREVIEWSGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANREPLYTOREVIEWSGLOBAL = User'DeveloperAccountPermissionsItem "CAN_REPLY_TO_REVIEWS_GLOBAL"

-- | Release to production, exclude devices, and use app signing by Google Play.
pattern User'DeveloperAccountPermissionsItem_CANMANAGEPUBLICAPKSGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANMANAGEPUBLICAPKSGLOBAL = User'DeveloperAccountPermissionsItem "CAN_MANAGE_PUBLIC_APKS_GLOBAL"

-- | Release to testing tracks.
pattern User'DeveloperAccountPermissionsItem_CANMANAGETRACKAPKSGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANMANAGETRACKAPKSGLOBAL = User'DeveloperAccountPermissionsItem "CAN_MANAGE_TRACK_APKS_GLOBAL"

-- | Manage testing tracks and edit tester lists.
pattern User'DeveloperAccountPermissionsItem_CANMANAGETRACKUSERSGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANMANAGETRACKUSERSGLOBAL = User'DeveloperAccountPermissionsItem "CAN_MANAGE_TRACK_USERS_GLOBAL"

-- | Manage store presence.
pattern User'DeveloperAccountPermissionsItem_CANMANAGEPUBLICLISTINGGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANMANAGEPUBLICLISTINGGLOBAL = User'DeveloperAccountPermissionsItem "CAN_MANAGE_PUBLIC_LISTING_GLOBAL"

-- | Create, edit, and delete draft apps.
pattern User'DeveloperAccountPermissionsItem_CANMANAGEDRAFTAPPSGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANMANAGEDRAFTAPPSGLOBAL = User'DeveloperAccountPermissionsItem "CAN_MANAGE_DRAFT_APPS_GLOBAL"

-- | Create and publish private apps to your organization.
pattern User'DeveloperAccountPermissionsItem_CANCREATEMANAGEDPLAYAPPSGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANCREATEMANAGEDPLAYAPPSGLOBAL = User'DeveloperAccountPermissionsItem "CAN_CREATE_MANAGED_PLAY_APPS_GLOBAL"

-- | Choose whether apps are public, or only available to your organization.
pattern User'DeveloperAccountPermissionsItem_CANCHANGEMANAGEDPLAYSETTINGGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANCHANGEMANAGEDPLAYSETTINGGLOBAL = User'DeveloperAccountPermissionsItem "CAN_CHANGE_MANAGED_PLAY_SETTING_GLOBAL"

-- | Manage orders and subscriptions.
pattern User'DeveloperAccountPermissionsItem_CANMANAGEORDERSGLOBAL :: User'DeveloperAccountPermissionsItem
pattern User'DeveloperAccountPermissionsItem_CANMANAGEORDERSGLOBAL = User'DeveloperAccountPermissionsItem "CAN_MANAGE_ORDERS_GLOBAL"

{-# COMPLETE
  User'DeveloperAccountPermissionsItem_DEVELOPERLEVELPERMISSIONUNSPECIFIED,
  User'DeveloperAccountPermissionsItem_CANSEEALLAPPS,
  User'DeveloperAccountPermissionsItem_CANVIEWFINANCIALDATAGLOBAL,
  User'DeveloperAccountPermissionsItem_CANMANAGEPERMISSIONSGLOBAL,
  User'DeveloperAccountPermissionsItem_CANEDITGAMESGLOBAL,
  User'DeveloperAccountPermissionsItem_CANPUBLISHGAMESGLOBAL,
  User'DeveloperAccountPermissionsItem_CANREPLYTOREVIEWSGLOBAL,
  User'DeveloperAccountPermissionsItem_CANMANAGEPUBLICAPKSGLOBAL,
  User'DeveloperAccountPermissionsItem_CANMANAGETRACKAPKSGLOBAL,
  User'DeveloperAccountPermissionsItem_CANMANAGETRACKUSERSGLOBAL,
  User'DeveloperAccountPermissionsItem_CANMANAGEPUBLICLISTINGGLOBAL,
  User'DeveloperAccountPermissionsItem_CANMANAGEDRAFTAPPSGLOBAL,
  User'DeveloperAccountPermissionsItem_CANCREATEMANAGEDPLAYAPPSGLOBAL,
  User'DeveloperAccountPermissionsItem_CANCHANGEMANAGEDPLAYSETTINGGLOBAL,
  User'DeveloperAccountPermissionsItem_CANMANAGEORDERSGLOBAL,
  User'DeveloperAccountPermissionsItem #-}

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format.
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format.
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}
