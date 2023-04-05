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
-- Module      : Gogol.AndroidPublisher.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AndroidPublisher.Internal.Product
  ( -- * AcquisitionTargetingRule
    AcquisitionTargetingRule (..),
    newAcquisitionTargetingRule,

    -- * ActivateBasePlanRequest
    ActivateBasePlanRequest (..),
    newActivateBasePlanRequest,

    -- * ActivateSubscriptionOfferRequest
    ActivateSubscriptionOfferRequest (..),
    newActivateSubscriptionOfferRequest,

    -- * Apk
    Apk (..),
    newApk,

    -- * ApkBinary
    ApkBinary (..),
    newApkBinary,

    -- * ApksAddExternallyHostedRequest
    ApksAddExternallyHostedRequest (..),
    newApksAddExternallyHostedRequest,

    -- * ApksAddExternallyHostedResponse
    ApksAddExternallyHostedResponse (..),
    newApksAddExternallyHostedResponse,

    -- * ApksListResponse
    ApksListResponse (..),
    newApksListResponse,

    -- * AppDetails
    AppDetails (..),
    newAppDetails,

    -- * AppEdit
    AppEdit (..),
    newAppEdit,

    -- * ArchiveSubscriptionRequest
    ArchiveSubscriptionRequest (..),
    newArchiveSubscriptionRequest,

    -- * AutoRenewingBasePlanType
    AutoRenewingBasePlanType (..),
    newAutoRenewingBasePlanType,

    -- * AutoRenewingPlan
    AutoRenewingPlan (..),
    newAutoRenewingPlan,

    -- * BasePlan
    BasePlan (..),
    newBasePlan,

    -- * Bundle
    Bundle (..),
    newBundle,

    -- * BundlesListResponse
    BundlesListResponse (..),
    newBundlesListResponse,

    -- * CancelSurveyResult
    CancelSurveyResult (..),
    newCancelSurveyResult,

    -- * CanceledStateContext
    CanceledStateContext (..),
    newCanceledStateContext,

    -- * Comment
    Comment (..),
    newComment,

    -- * ConvertRegionPricesRequest
    ConvertRegionPricesRequest (..),
    newConvertRegionPricesRequest,

    -- * ConvertRegionPricesResponse
    ConvertRegionPricesResponse (..),
    newConvertRegionPricesResponse,

    -- * ConvertRegionPricesResponse_ConvertedRegionPrices
    ConvertRegionPricesResponse_ConvertedRegionPrices (..),
    newConvertRegionPricesResponse_ConvertedRegionPrices,

    -- * ConvertedOtherRegionsPrice
    ConvertedOtherRegionsPrice (..),
    newConvertedOtherRegionsPrice,

    -- * ConvertedRegionPrice
    ConvertedRegionPrice (..),
    newConvertedRegionPrice,

    -- * CountryTargeting
    CountryTargeting (..),
    newCountryTargeting,

    -- * DeactivateBasePlanRequest
    DeactivateBasePlanRequest (..),
    newDeactivateBasePlanRequest,

    -- * DeactivateSubscriptionOfferRequest
    DeactivateSubscriptionOfferRequest (..),
    newDeactivateSubscriptionOfferRequest,

    -- * DeobfuscationFile
    DeobfuscationFile (..),
    newDeobfuscationFile,

    -- * DeobfuscationFilesUploadResponse
    DeobfuscationFilesUploadResponse (..),
    newDeobfuscationFilesUploadResponse,

    -- * DeveloperComment
    DeveloperComment (..),
    newDeveloperComment,

    -- * DeveloperInitiatedCancellation
    DeveloperInitiatedCancellation (..),
    newDeveloperInitiatedCancellation,

    -- * DeviceGroup
    DeviceGroup (..),
    newDeviceGroup,

    -- * DeviceId
    DeviceId (..),
    newDeviceId,

    -- * DeviceMetadata
    DeviceMetadata (..),
    newDeviceMetadata,

    -- * DeviceRam
    DeviceRam (..),
    newDeviceRam,

    -- * DeviceSelector
    DeviceSelector (..),
    newDeviceSelector,

    -- * DeviceSpec
    DeviceSpec (..),
    newDeviceSpec,

    -- * DeviceTier
    DeviceTier (..),
    newDeviceTier,

    -- * DeviceTierConfig
    DeviceTierConfig (..),
    newDeviceTierConfig,

    -- * DeviceTierSet
    DeviceTierSet (..),
    newDeviceTierSet,

    -- * ExpansionFile
    ExpansionFile (..),
    newExpansionFile,

    -- * ExpansionFilesUploadResponse
    ExpansionFilesUploadResponse (..),
    newExpansionFilesUploadResponse,

    -- * ExternalAccountIdentifiers
    ExternalAccountIdentifiers (..),
    newExternalAccountIdentifiers,

    -- * ExternallyHostedApk
    ExternallyHostedApk (..),
    newExternallyHostedApk,

    -- * GeneratedApksListResponse
    GeneratedApksListResponse (..),
    newGeneratedApksListResponse,

    -- * GeneratedApksPerSigningKey
    GeneratedApksPerSigningKey (..),
    newGeneratedApksPerSigningKey,

    -- * GeneratedAssetPackSlice
    GeneratedAssetPackSlice (..),
    newGeneratedAssetPackSlice,

    -- * GeneratedSplitApk
    GeneratedSplitApk (..),
    newGeneratedSplitApk,

    -- * GeneratedStandaloneApk
    GeneratedStandaloneApk (..),
    newGeneratedStandaloneApk,

    -- * GeneratedUniversalApk
    GeneratedUniversalApk (..),
    newGeneratedUniversalApk,

    -- * Grant
    Grant (..),
    newGrant,

    -- * Image
    Image (..),
    newImage,

    -- * ImagesDeleteAllResponse
    ImagesDeleteAllResponse (..),
    newImagesDeleteAllResponse,

    -- * ImagesListResponse
    ImagesListResponse (..),
    newImagesListResponse,

    -- * ImagesUploadResponse
    ImagesUploadResponse (..),
    newImagesUploadResponse,

    -- * InAppProduct
    InAppProduct (..),
    newInAppProduct,

    -- * InAppProduct_Listings
    InAppProduct_Listings (..),
    newInAppProduct_Listings,

    -- * InAppProduct_Prices
    InAppProduct_Prices (..),
    newInAppProduct_Prices,

    -- * InAppProductListing
    InAppProductListing (..),
    newInAppProductListing,

    -- * InappproductsListResponse
    InappproductsListResponse (..),
    newInappproductsListResponse,

    -- * InternalAppSharingArtifact
    InternalAppSharingArtifact (..),
    newInternalAppSharingArtifact,

    -- * IntroductoryPriceInfo
    IntroductoryPriceInfo (..),
    newIntroductoryPriceInfo,

    -- * ListDeviceTierConfigsResponse
    ListDeviceTierConfigsResponse (..),
    newListDeviceTierConfigsResponse,

    -- * ListSubscriptionOffersResponse
    ListSubscriptionOffersResponse (..),
    newListSubscriptionOffersResponse,

    -- * ListSubscriptionsResponse
    ListSubscriptionsResponse (..),
    newListSubscriptionsResponse,

    -- * ListUsersResponse
    ListUsersResponse (..),
    newListUsersResponse,

    -- * Listing
    Listing (..),
    newListing,

    -- * ListingsListResponse
    ListingsListResponse (..),
    newListingsListResponse,

    -- * LocalizedText
    LocalizedText (..),
    newLocalizedText,

    -- * ManagedProductTaxAndComplianceSettings
    ManagedProductTaxAndComplianceSettings (..),
    newManagedProductTaxAndComplianceSettings,

    -- * ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
    ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode (..),
    newManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode,

    -- * MigrateBasePlanPricesRequest
    MigrateBasePlanPricesRequest (..),
    newMigrateBasePlanPricesRequest,

    -- * MigrateBasePlanPricesResponse
    MigrateBasePlanPricesResponse (..),
    newMigrateBasePlanPricesResponse,

    -- * Money
    Money (..),
    newMoney,

    -- * OfferDetails
    OfferDetails (..),
    newOfferDetails,

    -- * OfferTag
    OfferTag (..),
    newOfferTag,

    -- * OtherRegionsBasePlanConfig
    OtherRegionsBasePlanConfig (..),
    newOtherRegionsBasePlanConfig,

    -- * OtherRegionsSubscriptionOfferConfig
    OtherRegionsSubscriptionOfferConfig (..),
    newOtherRegionsSubscriptionOfferConfig,

    -- * OtherRegionsSubscriptionOfferPhaseConfig
    OtherRegionsSubscriptionOfferPhaseConfig (..),
    newOtherRegionsSubscriptionOfferPhaseConfig,

    -- * OtherRegionsSubscriptionOfferPhasePrices
    OtherRegionsSubscriptionOfferPhasePrices (..),
    newOtherRegionsSubscriptionOfferPhasePrices,

    -- * PageInfo
    PageInfo (..),
    newPageInfo,

    -- * PausedStateContext
    PausedStateContext (..),
    newPausedStateContext,

    -- * PrepaidBasePlanType
    PrepaidBasePlanType (..),
    newPrepaidBasePlanType,

    -- * PrepaidPlan
    PrepaidPlan (..),
    newPrepaidPlan,

    -- * Price
    Price (..),
    newPrice,

    -- * ProductPurchase
    ProductPurchase (..),
    newProductPurchase,

    -- * ProductPurchasesAcknowledgeRequest
    ProductPurchasesAcknowledgeRequest (..),
    newProductPurchasesAcknowledgeRequest,

    -- * RegionalBasePlanConfig
    RegionalBasePlanConfig (..),
    newRegionalBasePlanConfig,

    -- * RegionalPriceMigrationConfig
    RegionalPriceMigrationConfig (..),
    newRegionalPriceMigrationConfig,

    -- * RegionalSubscriptionOfferConfig
    RegionalSubscriptionOfferConfig (..),
    newRegionalSubscriptionOfferConfig,

    -- * RegionalSubscriptionOfferPhaseConfig
    RegionalSubscriptionOfferPhaseConfig (..),
    newRegionalSubscriptionOfferPhaseConfig,

    -- * RegionalTaxRateInfo
    RegionalTaxRateInfo (..),
    newRegionalTaxRateInfo,

    -- * RegionsVersion
    RegionsVersion (..),
    newRegionsVersion,

    -- * ReplacementCancellation
    ReplacementCancellation (..),
    newReplacementCancellation,

    -- * Review
    Review (..),
    newReview,

    -- * ReviewReplyResult
    ReviewReplyResult (..),
    newReviewReplyResult,

    -- * ReviewsListResponse
    ReviewsListResponse (..),
    newReviewsListResponse,

    -- * ReviewsReplyRequest
    ReviewsReplyRequest (..),
    newReviewsReplyRequest,

    -- * ReviewsReplyResponse
    ReviewsReplyResponse (..),
    newReviewsReplyResponse,

    -- * SubscribeWithGoogleInfo
    SubscribeWithGoogleInfo (..),
    newSubscribeWithGoogleInfo,

    -- * Subscription
    Subscription (..),
    newSubscription,

    -- * SubscriptionCancelSurveyResult
    SubscriptionCancelSurveyResult (..),
    newSubscriptionCancelSurveyResult,

    -- * SubscriptionDeferralInfo
    SubscriptionDeferralInfo (..),
    newSubscriptionDeferralInfo,

    -- * SubscriptionItemPriceChangeDetails
    SubscriptionItemPriceChangeDetails (..),
    newSubscriptionItemPriceChangeDetails,

    -- * SubscriptionListing
    SubscriptionListing (..),
    newSubscriptionListing,

    -- * SubscriptionOffer
    SubscriptionOffer (..),
    newSubscriptionOffer,

    -- * SubscriptionOfferPhase
    SubscriptionOfferPhase (..),
    newSubscriptionOfferPhase,

    -- * SubscriptionOfferTargeting
    SubscriptionOfferTargeting (..),
    newSubscriptionOfferTargeting,

    -- * SubscriptionPriceChange
    SubscriptionPriceChange (..),
    newSubscriptionPriceChange,

    -- * SubscriptionPurchase
    SubscriptionPurchase (..),
    newSubscriptionPurchase,

    -- * SubscriptionPurchaseLineItem
    SubscriptionPurchaseLineItem (..),
    newSubscriptionPurchaseLineItem,

    -- * SubscriptionPurchaseV2
    SubscriptionPurchaseV2 (..),
    newSubscriptionPurchaseV2,

    -- * SubscriptionPurchasesAcknowledgeRequest
    SubscriptionPurchasesAcknowledgeRequest (..),
    newSubscriptionPurchasesAcknowledgeRequest,

    -- * SubscriptionPurchasesDeferRequest
    SubscriptionPurchasesDeferRequest (..),
    newSubscriptionPurchasesDeferRequest,

    -- * SubscriptionPurchasesDeferResponse
    SubscriptionPurchasesDeferResponse (..),
    newSubscriptionPurchasesDeferResponse,

    -- * SubscriptionTaxAndComplianceSettings
    SubscriptionTaxAndComplianceSettings (..),
    newSubscriptionTaxAndComplianceSettings,

    -- * SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
    SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode (..),
    newSubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode,

    -- * SystemApksListResponse
    SystemApksListResponse (..),
    newSystemApksListResponse,

    -- * SystemFeature
    SystemFeature (..),
    newSystemFeature,

    -- * SystemInitiatedCancellation
    SystemInitiatedCancellation (..),
    newSystemInitiatedCancellation,

    -- * TargetingRuleScope
    TargetingRuleScope (..),
    newTargetingRuleScope,

    -- * TestPurchase
    TestPurchase (..),
    newTestPurchase,

    -- * Testers
    Testers (..),
    newTesters,

    -- * Timestamp
    Timestamp (..),
    newTimestamp,

    -- * TokenPagination
    TokenPagination (..),
    newTokenPagination,

    -- * Track
    Track (..),
    newTrack,

    -- * TrackCountryAvailability
    TrackCountryAvailability (..),
    newTrackCountryAvailability,

    -- * TrackRelease
    TrackRelease (..),
    newTrackRelease,

    -- * TrackTargetedCountry
    TrackTargetedCountry (..),
    newTrackTargetedCountry,

    -- * TracksListResponse
    TracksListResponse (..),
    newTracksListResponse,

    -- * UpgradeTargetingRule
    UpgradeTargetingRule (..),
    newUpgradeTargetingRule,

    -- * User
    User (..),
    newUser,

    -- * UserComment
    UserComment (..),
    newUserComment,

    -- * UserCountrySet
    UserCountrySet (..),
    newUserCountrySet,

    -- * UserInitiatedCancellation
    UserInitiatedCancellation (..),
    newUserInitiatedCancellation,

    -- * UsesPermission
    UsesPermission (..),
    newUsesPermission,

    -- * Variant
    Variant (..),
    newVariant,

    -- * VoidedPurchase
    VoidedPurchase (..),
    newVoidedPurchase,

    -- * VoidedPurchasesListResponse
    VoidedPurchasesListResponse (..),
    newVoidedPurchasesListResponse,
  )
where

import Gogol.AndroidPublisher.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Represents a targeting rule of the form: User never had {scope} before.
--
-- /See:/ 'newAcquisitionTargetingRule' smart constructor.
newtype AcquisitionTargetingRule = AcquisitionTargetingRule
  { -- | Required. The scope of subscriptions this rule considers. Only allows \"this subscription\" and \"any subscription in app\".
    scope :: (Core.Maybe TargetingRuleScope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcquisitionTargetingRule' with the minimum fields required to make a request.
newAcquisitionTargetingRule ::
  AcquisitionTargetingRule
newAcquisitionTargetingRule = AcquisitionTargetingRule {scope = Core.Nothing}

instance Core.FromJSON AcquisitionTargetingRule where
  parseJSON =
    Core.withObject
      "AcquisitionTargetingRule"
      ( \o ->
          AcquisitionTargetingRule
            Core.<$> (o Core..:? "scope")
      )

instance Core.ToJSON AcquisitionTargetingRule where
  toJSON AcquisitionTargetingRule {..} =
    Core.object
      (Core.catMaybes [("scope" Core..=) Core.<$> scope])

-- | Request message for ActivateBasePlan.
--
-- /See:/ 'newActivateBasePlanRequest' smart constructor.
data ActivateBasePlanRequest = ActivateBasePlanRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivateBasePlanRequest' with the minimum fields required to make a request.
newActivateBasePlanRequest ::
  ActivateBasePlanRequest
newActivateBasePlanRequest = ActivateBasePlanRequest

instance Core.FromJSON ActivateBasePlanRequest where
  parseJSON =
    Core.withObject
      "ActivateBasePlanRequest"
      (\o -> Core.pure ActivateBasePlanRequest)

instance Core.ToJSON ActivateBasePlanRequest where
  toJSON = Core.const Core.emptyObject

-- | Request message for ActivateSubscriptionOffer.
--
-- /See:/ 'newActivateSubscriptionOfferRequest' smart constructor.
data ActivateSubscriptionOfferRequest = ActivateSubscriptionOfferRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivateSubscriptionOfferRequest' with the minimum fields required to make a request.
newActivateSubscriptionOfferRequest ::
  ActivateSubscriptionOfferRequest
newActivateSubscriptionOfferRequest = ActivateSubscriptionOfferRequest

instance
  Core.FromJSON
    ActivateSubscriptionOfferRequest
  where
  parseJSON =
    Core.withObject
      "ActivateSubscriptionOfferRequest"
      (\o -> Core.pure ActivateSubscriptionOfferRequest)

instance Core.ToJSON ActivateSubscriptionOfferRequest where
  toJSON = Core.const Core.emptyObject

-- | Information about an APK. The resource for ApksService.
--
-- /See:/ 'newApk' smart constructor.
data Apk = Apk
  { -- | Information about the binary payload of this APK.
    binary :: (Core.Maybe ApkBinary),
    -- | The version code of the APK, as specified in the manifest file.
    versionCode :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Apk' with the minimum fields required to make a request.
newApk ::
  Apk
newApk = Apk {binary = Core.Nothing, versionCode = Core.Nothing}

instance Core.FromJSON Apk where
  parseJSON =
    Core.withObject
      "Apk"
      ( \o ->
          Apk
            Core.<$> (o Core..:? "binary")
            Core.<*> (o Core..:? "versionCode")
      )

instance Core.ToJSON Apk where
  toJSON Apk {..} =
    Core.object
      ( Core.catMaybes
          [ ("binary" Core..=) Core.<$> binary,
            ("versionCode" Core..=) Core.<$> versionCode
          ]
      )

-- | Represents the binary payload of an APK.
--
-- /See:/ 'newApkBinary' smart constructor.
data ApkBinary = ApkBinary
  { -- | A sha1 hash of the APK payload, encoded as a hex string and matching the output of the sha1sum command.
    sha1 :: (Core.Maybe Core.Text),
    -- | A sha256 hash of the APK payload, encoded as a hex string and matching the output of the sha256sum command.
    sha256 :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApkBinary' with the minimum fields required to make a request.
newApkBinary ::
  ApkBinary
newApkBinary = ApkBinary {sha1 = Core.Nothing, sha256 = Core.Nothing}

instance Core.FromJSON ApkBinary where
  parseJSON =
    Core.withObject
      "ApkBinary"
      ( \o ->
          ApkBinary
            Core.<$> (o Core..:? "sha1") Core.<*> (o Core..:? "sha256")
      )

instance Core.ToJSON ApkBinary where
  toJSON ApkBinary {..} =
    Core.object
      ( Core.catMaybes
          [ ("sha1" Core..=) Core.<$> sha1,
            ("sha256" Core..=) Core.<$> sha256
          ]
      )

-- | Request to create a new externally hosted APK.
--
-- /See:/ 'newApksAddExternallyHostedRequest' smart constructor.
newtype ApksAddExternallyHostedRequest = ApksAddExternallyHostedRequest
  { -- | The definition of the externally-hosted APK and where it is located.
    externallyHostedApk :: (Core.Maybe ExternallyHostedApk)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApksAddExternallyHostedRequest' with the minimum fields required to make a request.
newApksAddExternallyHostedRequest ::
  ApksAddExternallyHostedRequest
newApksAddExternallyHostedRequest =
  ApksAddExternallyHostedRequest {externallyHostedApk = Core.Nothing}

instance Core.FromJSON ApksAddExternallyHostedRequest where
  parseJSON =
    Core.withObject
      "ApksAddExternallyHostedRequest"
      ( \o ->
          ApksAddExternallyHostedRequest
            Core.<$> (o Core..:? "externallyHostedApk")
      )

instance Core.ToJSON ApksAddExternallyHostedRequest where
  toJSON ApksAddExternallyHostedRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("externallyHostedApk" Core..=)
              Core.<$> externallyHostedApk
          ]
      )

-- | Response for creating a new externally hosted APK.
--
-- /See:/ 'newApksAddExternallyHostedResponse' smart constructor.
newtype ApksAddExternallyHostedResponse = ApksAddExternallyHostedResponse
  { -- | The definition of the externally-hosted APK and where it is located.
    externallyHostedApk :: (Core.Maybe ExternallyHostedApk)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApksAddExternallyHostedResponse' with the minimum fields required to make a request.
newApksAddExternallyHostedResponse ::
  ApksAddExternallyHostedResponse
newApksAddExternallyHostedResponse =
  ApksAddExternallyHostedResponse {externallyHostedApk = Core.Nothing}

instance
  Core.FromJSON
    ApksAddExternallyHostedResponse
  where
  parseJSON =
    Core.withObject
      "ApksAddExternallyHostedResponse"
      ( \o ->
          ApksAddExternallyHostedResponse
            Core.<$> (o Core..:? "externallyHostedApk")
      )

instance Core.ToJSON ApksAddExternallyHostedResponse where
  toJSON ApksAddExternallyHostedResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("externallyHostedApk" Core..=)
              Core.<$> externallyHostedApk
          ]
      )

-- | Response listing all APKs.
--
-- /See:/ 'newApksListResponse' smart constructor.
data ApksListResponse = ApksListResponse
  { -- | All APKs.
    apks :: (Core.Maybe [Apk]),
    -- | The kind of this response (\"androidpublisher#apksListResponse\").
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApksListResponse' with the minimum fields required to make a request.
newApksListResponse ::
  ApksListResponse
newApksListResponse =
  ApksListResponse {apks = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON ApksListResponse where
  parseJSON =
    Core.withObject
      "ApksListResponse"
      ( \o ->
          ApksListResponse
            Core.<$> (o Core..:? "apks") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON ApksListResponse where
  toJSON ApksListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("apks" Core..=) Core.<$> apks,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | The app details. The resource for DetailsService.
--
-- /See:/ 'newAppDetails' smart constructor.
data AppDetails = AppDetails
  { -- | The user-visible support email for this app.
    contactEmail :: (Core.Maybe Core.Text),
    -- | The user-visible support telephone number for this app.
    contactPhone :: (Core.Maybe Core.Text),
    -- | The user-visible website for this app.
    contactWebsite :: (Core.Maybe Core.Text),
    -- | Default language code, in BCP 47 format (eg \"en-US\").
    defaultLanguage :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppDetails' with the minimum fields required to make a request.
newAppDetails ::
  AppDetails
newAppDetails =
  AppDetails
    { contactEmail = Core.Nothing,
      contactPhone = Core.Nothing,
      contactWebsite = Core.Nothing,
      defaultLanguage = Core.Nothing
    }

instance Core.FromJSON AppDetails where
  parseJSON =
    Core.withObject
      "AppDetails"
      ( \o ->
          AppDetails
            Core.<$> (o Core..:? "contactEmail")
            Core.<*> (o Core..:? "contactPhone")
            Core.<*> (o Core..:? "contactWebsite")
            Core.<*> (o Core..:? "defaultLanguage")
      )

instance Core.ToJSON AppDetails where
  toJSON AppDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("contactEmail" Core..=) Core.<$> contactEmail,
            ("contactPhone" Core..=) Core.<$> contactPhone,
            ("contactWebsite" Core..=) Core.<$> contactWebsite,
            ("defaultLanguage" Core..=)
              Core.<$> defaultLanguage
          ]
      )

-- | An app edit. The resource for EditsService.
--
-- /See:/ 'newAppEdit' smart constructor.
data AppEdit = AppEdit
  { -- | Output only. The time (as seconds since Epoch) at which the edit will expire and will be no longer valid for use.
    expiryTimeSeconds :: (Core.Maybe Core.Text),
    -- | Output only. Identifier of the edit. Can be used in subsequent API calls.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppEdit' with the minimum fields required to make a request.
newAppEdit ::
  AppEdit
newAppEdit = AppEdit {expiryTimeSeconds = Core.Nothing, id = Core.Nothing}

instance Core.FromJSON AppEdit where
  parseJSON =
    Core.withObject
      "AppEdit"
      ( \o ->
          AppEdit
            Core.<$> (o Core..:? "expiryTimeSeconds")
            Core.<*> (o Core..:? "id")
      )

instance Core.ToJSON AppEdit where
  toJSON AppEdit {..} =
    Core.object
      ( Core.catMaybes
          [ ("expiryTimeSeconds" Core..=)
              Core.<$> expiryTimeSeconds,
            ("id" Core..=) Core.<$> id
          ]
      )

-- | Request message for ArchiveSubscription.
--
-- /See:/ 'newArchiveSubscriptionRequest' smart constructor.
data ArchiveSubscriptionRequest = ArchiveSubscriptionRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArchiveSubscriptionRequest' with the minimum fields required to make a request.
newArchiveSubscriptionRequest ::
  ArchiveSubscriptionRequest
newArchiveSubscriptionRequest = ArchiveSubscriptionRequest

instance Core.FromJSON ArchiveSubscriptionRequest where
  parseJSON =
    Core.withObject
      "ArchiveSubscriptionRequest"
      (\o -> Core.pure ArchiveSubscriptionRequest)

instance Core.ToJSON ArchiveSubscriptionRequest where
  toJSON = Core.const Core.emptyObject

-- | Represents a base plan that automatically renews at the end of its subscription period.
--
-- /See:/ 'newAutoRenewingBasePlanType' smart constructor.
data AutoRenewingBasePlanType = AutoRenewingBasePlanType
  { -- | Required. Subscription period, specified in ISO 8601 format. For a list of acceptable billing periods, refer to the help center.
    billingPeriodDuration :: (Core.Maybe Core.Text),
    -- | Grace period of the subscription, specified in ISO 8601 format. Acceptable values are P0D (zero days), P3D (3 days), P7D (7 days), P14D (14 days), and P30D (30 days). If not specified, a default value will be used based on the recurring period duration.
    gracePeriodDuration :: (Core.Maybe Core.Text),
    -- | Whether the renewing base plan is backward compatible. The backward compatible base plan is returned by the Google Play Billing Library deprecated method querySkuDetailsAsync(). Only one renewing base plan can be marked as legacy compatible for a given subscription.
    legacyCompatible :: (Core.Maybe Core.Bool),
    -- | Subscription offer id which is legacy compatible. The backward compatible subscription offer is returned by the Google Play Billing Library deprecated method querySkuDetailsAsync(). Only one subscription offer can be marked as legacy compatible for a given renewing base plan. To have no Subscription offer as legacy compatible set this field as empty string.
    legacyCompatibleSubscriptionOfferId :: (Core.Maybe Core.Text),
    -- | The proration mode for the base plan determines what happens when a user switches to this plan from another base plan. If unspecified, defaults to CHARGE/ON/NEXT/BILLING/DATE.
    prorationMode :: (Core.Maybe AutoRenewingBasePlanType_ProrationMode),
    -- | Whether users should be able to resubscribe to this base plan in Google Play surfaces. Defaults to RESUBSCRIBE/STATE/ACTIVE if not specified.
    resubscribeState :: (Core.Maybe AutoRenewingBasePlanType_ResubscribeState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoRenewingBasePlanType' with the minimum fields required to make a request.
newAutoRenewingBasePlanType ::
  AutoRenewingBasePlanType
newAutoRenewingBasePlanType =
  AutoRenewingBasePlanType
    { billingPeriodDuration = Core.Nothing,
      gracePeriodDuration = Core.Nothing,
      legacyCompatible = Core.Nothing,
      legacyCompatibleSubscriptionOfferId = Core.Nothing,
      prorationMode = Core.Nothing,
      resubscribeState = Core.Nothing
    }

instance Core.FromJSON AutoRenewingBasePlanType where
  parseJSON =
    Core.withObject
      "AutoRenewingBasePlanType"
      ( \o ->
          AutoRenewingBasePlanType
            Core.<$> (o Core..:? "billingPeriodDuration")
            Core.<*> (o Core..:? "gracePeriodDuration")
            Core.<*> (o Core..:? "legacyCompatible")
            Core.<*> (o Core..:? "legacyCompatibleSubscriptionOfferId")
            Core.<*> (o Core..:? "prorationMode")
            Core.<*> (o Core..:? "resubscribeState")
      )

instance Core.ToJSON AutoRenewingBasePlanType where
  toJSON AutoRenewingBasePlanType {..} =
    Core.object
      ( Core.catMaybes
          [ ("billingPeriodDuration" Core..=)
              Core.<$> billingPeriodDuration,
            ("gracePeriodDuration" Core..=)
              Core.<$> gracePeriodDuration,
            ("legacyCompatible" Core..=)
              Core.<$> legacyCompatible,
            ("legacyCompatibleSubscriptionOfferId" Core..=)
              Core.<$> legacyCompatibleSubscriptionOfferId,
            ("prorationMode" Core..=) Core.<$> prorationMode,
            ("resubscribeState" Core..=)
              Core.<$> resubscribeState
          ]
      )

-- | Information related to an auto renewing plan.
--
-- /See:/ 'newAutoRenewingPlan' smart constructor.
data AutoRenewingPlan = AutoRenewingPlan
  { -- | If the subscription is currently set to auto-renew, e.g. the user has not canceled the subscription
    autoRenewEnabled :: (Core.Maybe Core.Bool),
    -- | The information of the last price change for the item since subscription signup.
    priceChangeDetails :: (Core.Maybe SubscriptionItemPriceChangeDetails)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoRenewingPlan' with the minimum fields required to make a request.
newAutoRenewingPlan ::
  AutoRenewingPlan
newAutoRenewingPlan =
  AutoRenewingPlan
    { autoRenewEnabled = Core.Nothing,
      priceChangeDetails = Core.Nothing
    }

instance Core.FromJSON AutoRenewingPlan where
  parseJSON =
    Core.withObject
      "AutoRenewingPlan"
      ( \o ->
          AutoRenewingPlan
            Core.<$> (o Core..:? "autoRenewEnabled")
            Core.<*> (o Core..:? "priceChangeDetails")
      )

instance Core.ToJSON AutoRenewingPlan where
  toJSON AutoRenewingPlan {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoRenewEnabled" Core..=)
              Core.<$> autoRenewEnabled,
            ("priceChangeDetails" Core..=)
              Core.<$> priceChangeDetails
          ]
      )

-- | A single base plan for a subscription.
--
-- /See:/ 'newBasePlan' smart constructor.
data BasePlan = BasePlan
  { -- | Set when the base plan automatically renews at a regular interval.
    autoRenewingBasePlanType :: (Core.Maybe AutoRenewingBasePlanType),
    -- | Required. Immutable. The unique identifier of this base plan. Must be unique within the subscription, and conform with RFC-1034. That is, this ID can only contain lower-case letters (a-z), numbers (0-9), and hyphens (-), and be at most 63 characters.
    basePlanId :: (Core.Maybe Core.Text),
    -- | List of up to 20 custom tags specified for this base plan, and returned to the app through the billing library. Subscription offers for this base plan will also receive these offer tags in the billing library.
    offerTags :: (Core.Maybe [OfferTag]),
    -- | Pricing information for any new locations Play may launch in the future. If omitted, the BasePlan will not be automatically available any new locations Play may launch in the future.
    otherRegionsConfig :: (Core.Maybe OtherRegionsBasePlanConfig),
    -- | Set when the base plan does not automatically renew at the end of the billing period.
    prepaidBasePlanType :: (Core.Maybe PrepaidBasePlanType),
    -- | Region-specific information for this base plan.
    regionalConfigs :: (Core.Maybe [RegionalBasePlanConfig]),
    -- | Output only. The state of the base plan, i.e. whether it\'s active. Draft and inactive base plans can be activated or deleted. Active base plans can be made inactive. Inactive base plans can be canceled. This field cannot be changed by updating the resource. Use the dedicated endpoints instead.
    state :: (Core.Maybe BasePlan_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BasePlan' with the minimum fields required to make a request.
newBasePlan ::
  BasePlan
newBasePlan =
  BasePlan
    { autoRenewingBasePlanType = Core.Nothing,
      basePlanId = Core.Nothing,
      offerTags = Core.Nothing,
      otherRegionsConfig = Core.Nothing,
      prepaidBasePlanType = Core.Nothing,
      regionalConfigs = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON BasePlan where
  parseJSON =
    Core.withObject
      "BasePlan"
      ( \o ->
          BasePlan
            Core.<$> (o Core..:? "autoRenewingBasePlanType")
            Core.<*> (o Core..:? "basePlanId")
            Core.<*> (o Core..:? "offerTags")
            Core.<*> (o Core..:? "otherRegionsConfig")
            Core.<*> (o Core..:? "prepaidBasePlanType")
            Core.<*> (o Core..:? "regionalConfigs")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON BasePlan where
  toJSON BasePlan {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoRenewingBasePlanType" Core..=)
              Core.<$> autoRenewingBasePlanType,
            ("basePlanId" Core..=) Core.<$> basePlanId,
            ("offerTags" Core..=) Core.<$> offerTags,
            ("otherRegionsConfig" Core..=)
              Core.<$> otherRegionsConfig,
            ("prepaidBasePlanType" Core..=)
              Core.<$> prepaidBasePlanType,
            ("regionalConfigs" Core..=) Core.<$> regionalConfigs,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Information about an app bundle. The resource for BundlesService.
--
-- /See:/ 'newBundle' smart constructor.
data Bundle = Bundle
  { -- | A sha1 hash of the upload payload, encoded as a hex string and matching the output of the sha1sum command.
    sha1 :: (Core.Maybe Core.Text),
    -- | A sha256 hash of the upload payload, encoded as a hex string and matching the output of the sha256sum command.
    sha256 :: (Core.Maybe Core.Text),
    -- | The version code of the Android App Bundle, as specified in the Android App Bundle\'s base module APK manifest file.
    versionCode :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bundle' with the minimum fields required to make a request.
newBundle ::
  Bundle
newBundle =
  Bundle
    { sha1 = Core.Nothing,
      sha256 = Core.Nothing,
      versionCode = Core.Nothing
    }

instance Core.FromJSON Bundle where
  parseJSON =
    Core.withObject
      "Bundle"
      ( \o ->
          Bundle
            Core.<$> (o Core..:? "sha1")
            Core.<*> (o Core..:? "sha256")
            Core.<*> (o Core..:? "versionCode")
      )

instance Core.ToJSON Bundle where
  toJSON Bundle {..} =
    Core.object
      ( Core.catMaybes
          [ ("sha1" Core..=) Core.<$> sha1,
            ("sha256" Core..=) Core.<$> sha256,
            ("versionCode" Core..=) Core.<$> versionCode
          ]
      )

-- | Response listing all app bundles.
--
-- /See:/ 'newBundlesListResponse' smart constructor.
data BundlesListResponse = BundlesListResponse
  { -- | All app bundles.
    bundles :: (Core.Maybe [Bundle]),
    -- | The kind of this response (\"androidpublisher#bundlesListResponse\").
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BundlesListResponse' with the minimum fields required to make a request.
newBundlesListResponse ::
  BundlesListResponse
newBundlesListResponse =
  BundlesListResponse {bundles = Core.Nothing, kind = Core.Nothing}

instance Core.FromJSON BundlesListResponse where
  parseJSON =
    Core.withObject
      "BundlesListResponse"
      ( \o ->
          BundlesListResponse
            Core.<$> (o Core..:? "bundles") Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON BundlesListResponse where
  toJSON BundlesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("bundles" Core..=) Core.<$> bundles,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Result of the cancel survey when the subscription was canceled by the user.
--
-- /See:/ 'newCancelSurveyResult' smart constructor.
data CancelSurveyResult = CancelSurveyResult
  { -- | The reason the user selected in the cancel survey.
    reason :: (Core.Maybe CancelSurveyResult_Reason),
    -- | Only set for CANCEL/SURVEY/REASON_OTHERS. This is the user\'s freeform response to the survey.
    reasonUserInput :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelSurveyResult' with the minimum fields required to make a request.
newCancelSurveyResult ::
  CancelSurveyResult
newCancelSurveyResult =
  CancelSurveyResult {reason = Core.Nothing, reasonUserInput = Core.Nothing}

instance Core.FromJSON CancelSurveyResult where
  parseJSON =
    Core.withObject
      "CancelSurveyResult"
      ( \o ->
          CancelSurveyResult
            Core.<$> (o Core..:? "reason")
            Core.<*> (o Core..:? "reasonUserInput")
      )

instance Core.ToJSON CancelSurveyResult where
  toJSON CancelSurveyResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("reason" Core..=) Core.<$> reason,
            ("reasonUserInput" Core..=)
              Core.<$> reasonUserInput
          ]
      )

-- | Information specific to a subscription in canceled state.
--
-- /See:/ 'newCanceledStateContext' smart constructor.
data CanceledStateContext = CanceledStateContext
  { -- | Subscription was canceled by the developer.
    developerInitiatedCancellation :: (Core.Maybe DeveloperInitiatedCancellation),
    -- | Subscription was replaced by a new subscription.
    replacementCancellation :: (Core.Maybe ReplacementCancellation),
    -- | Subscription was canceled by the system, for example because of a billing problem.
    systemInitiatedCancellation :: (Core.Maybe SystemInitiatedCancellation),
    -- | Subscription was canceled by user.
    userInitiatedCancellation :: (Core.Maybe UserInitiatedCancellation)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CanceledStateContext' with the minimum fields required to make a request.
newCanceledStateContext ::
  CanceledStateContext
newCanceledStateContext =
  CanceledStateContext
    { developerInitiatedCancellation = Core.Nothing,
      replacementCancellation = Core.Nothing,
      systemInitiatedCancellation = Core.Nothing,
      userInitiatedCancellation = Core.Nothing
    }

instance Core.FromJSON CanceledStateContext where
  parseJSON =
    Core.withObject
      "CanceledStateContext"
      ( \o ->
          CanceledStateContext
            Core.<$> (o Core..:? "developerInitiatedCancellation")
            Core.<*> (o Core..:? "replacementCancellation")
            Core.<*> (o Core..:? "systemInitiatedCancellation")
            Core.<*> (o Core..:? "userInitiatedCancellation")
      )

instance Core.ToJSON CanceledStateContext where
  toJSON CanceledStateContext {..} =
    Core.object
      ( Core.catMaybes
          [ ("developerInitiatedCancellation" Core..=)
              Core.<$> developerInitiatedCancellation,
            ("replacementCancellation" Core..=)
              Core.<$> replacementCancellation,
            ("systemInitiatedCancellation" Core..=)
              Core.<$> systemInitiatedCancellation,
            ("userInitiatedCancellation" Core..=)
              Core.<$> userInitiatedCancellation
          ]
      )

-- | An entry of conversation between user and developer.
--
-- /See:/ 'newComment' smart constructor.
data Comment = Comment
  { -- | A comment from a developer.
    developerComment :: (Core.Maybe DeveloperComment),
    -- | A comment from a user.
    userComment :: (Core.Maybe UserComment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
newComment ::
  Comment
newComment =
  Comment {developerComment = Core.Nothing, userComment = Core.Nothing}

instance Core.FromJSON Comment where
  parseJSON =
    Core.withObject
      "Comment"
      ( \o ->
          Comment
            Core.<$> (o Core..:? "developerComment")
            Core.<*> (o Core..:? "userComment")
      )

instance Core.ToJSON Comment where
  toJSON Comment {..} =
    Core.object
      ( Core.catMaybes
          [ ("developerComment" Core..=)
              Core.<$> developerComment,
            ("userComment" Core..=) Core.<$> userComment
          ]
      )

-- | Request message for ConvertRegionPrices.
--
-- /See:/ 'newConvertRegionPricesRequest' smart constructor.
newtype ConvertRegionPricesRequest = ConvertRegionPricesRequest
  { -- | The intital price to convert other regions from. Tax exclusive.
    price :: (Core.Maybe Money)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConvertRegionPricesRequest' with the minimum fields required to make a request.
newConvertRegionPricesRequest ::
  ConvertRegionPricesRequest
newConvertRegionPricesRequest =
  ConvertRegionPricesRequest {price = Core.Nothing}

instance Core.FromJSON ConvertRegionPricesRequest where
  parseJSON =
    Core.withObject
      "ConvertRegionPricesRequest"
      ( \o ->
          ConvertRegionPricesRequest
            Core.<$> (o Core..:? "price")
      )

instance Core.ToJSON ConvertRegionPricesRequest where
  toJSON ConvertRegionPricesRequest {..} =
    Core.object
      (Core.catMaybes [("price" Core..=) Core.<$> price])

-- | Response message for ConvertRegionPrices.
--
-- /See:/ 'newConvertRegionPricesResponse' smart constructor.
data ConvertRegionPricesResponse = ConvertRegionPricesResponse
  { -- | Converted other regions prices in USD and EUR, to use for countries where Play doesn\'t support a country\'s local currency.
    convertedOtherRegionsPrice :: (Core.Maybe ConvertedOtherRegionsPrice),
    -- | Map from region code to converted region price.
    convertedRegionPrices :: (Core.Maybe ConvertRegionPricesResponse_ConvertedRegionPrices)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConvertRegionPricesResponse' with the minimum fields required to make a request.
newConvertRegionPricesResponse ::
  ConvertRegionPricesResponse
newConvertRegionPricesResponse =
  ConvertRegionPricesResponse
    { convertedOtherRegionsPrice = Core.Nothing,
      convertedRegionPrices = Core.Nothing
    }

instance Core.FromJSON ConvertRegionPricesResponse where
  parseJSON =
    Core.withObject
      "ConvertRegionPricesResponse"
      ( \o ->
          ConvertRegionPricesResponse
            Core.<$> (o Core..:? "convertedOtherRegionsPrice")
            Core.<*> (o Core..:? "convertedRegionPrices")
      )

instance Core.ToJSON ConvertRegionPricesResponse where
  toJSON ConvertRegionPricesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("convertedOtherRegionsPrice" Core..=)
              Core.<$> convertedOtherRegionsPrice,
            ("convertedRegionPrices" Core..=)
              Core.<$> convertedRegionPrices
          ]
      )

-- | Map from region code to converted region price.
--
-- /See:/ 'newConvertRegionPricesResponse_ConvertedRegionPrices' smart constructor.
newtype ConvertRegionPricesResponse_ConvertedRegionPrices = ConvertRegionPricesResponse_ConvertedRegionPrices
  { -- |
    additional :: (Core.HashMap Core.Text ConvertedRegionPrice)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConvertRegionPricesResponse_ConvertedRegionPrices' with the minimum fields required to make a request.
newConvertRegionPricesResponse_ConvertedRegionPrices ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ConvertedRegionPrice ->
  ConvertRegionPricesResponse_ConvertedRegionPrices
newConvertRegionPricesResponse_ConvertedRegionPrices additional =
  ConvertRegionPricesResponse_ConvertedRegionPrices {additional = additional}

instance
  Core.FromJSON
    ConvertRegionPricesResponse_ConvertedRegionPrices
  where
  parseJSON =
    Core.withObject
      "ConvertRegionPricesResponse_ConvertedRegionPrices"
      ( \o ->
          ConvertRegionPricesResponse_ConvertedRegionPrices
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    ConvertRegionPricesResponse_ConvertedRegionPrices
  where
  toJSON
    ConvertRegionPricesResponse_ConvertedRegionPrices {..} =
      Core.toJSON additional

-- | Converted other regions prices.
--
-- /See:/ 'newConvertedOtherRegionsPrice' smart constructor.
data ConvertedOtherRegionsPrice = ConvertedOtherRegionsPrice
  { -- | Price in EUR to use for the \"Other regions\" location exclusive of taxes.
    eurPrice :: (Core.Maybe Money),
    -- | Price in USD to use for the \"Other regions\" location exclusive of taxes.
    usdPrice :: (Core.Maybe Money)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConvertedOtherRegionsPrice' with the minimum fields required to make a request.
newConvertedOtherRegionsPrice ::
  ConvertedOtherRegionsPrice
newConvertedOtherRegionsPrice =
  ConvertedOtherRegionsPrice {eurPrice = Core.Nothing, usdPrice = Core.Nothing}

instance Core.FromJSON ConvertedOtherRegionsPrice where
  parseJSON =
    Core.withObject
      "ConvertedOtherRegionsPrice"
      ( \o ->
          ConvertedOtherRegionsPrice
            Core.<$> (o Core..:? "eurPrice")
            Core.<*> (o Core..:? "usdPrice")
      )

instance Core.ToJSON ConvertedOtherRegionsPrice where
  toJSON ConvertedOtherRegionsPrice {..} =
    Core.object
      ( Core.catMaybes
          [ ("eurPrice" Core..=) Core.<$> eurPrice,
            ("usdPrice" Core..=) Core.<$> usdPrice
          ]
      )

-- | A converted region price.
--
-- /See:/ 'newConvertedRegionPrice' smart constructor.
data ConvertedRegionPrice = ConvertedRegionPrice
  { -- | The converted price tax inclusive.
    price :: (Core.Maybe Money),
    -- | The region code of the region.
    regionCode :: (Core.Maybe Core.Text),
    -- | The tax amount of the converted price.
    taxAmount :: (Core.Maybe Money)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConvertedRegionPrice' with the minimum fields required to make a request.
newConvertedRegionPrice ::
  ConvertedRegionPrice
newConvertedRegionPrice =
  ConvertedRegionPrice
    { price = Core.Nothing,
      regionCode = Core.Nothing,
      taxAmount = Core.Nothing
    }

instance Core.FromJSON ConvertedRegionPrice where
  parseJSON =
    Core.withObject
      "ConvertedRegionPrice"
      ( \o ->
          ConvertedRegionPrice
            Core.<$> (o Core..:? "price")
            Core.<*> (o Core..:? "regionCode")
            Core.<*> (o Core..:? "taxAmount")
      )

instance Core.ToJSON ConvertedRegionPrice where
  toJSON ConvertedRegionPrice {..} =
    Core.object
      ( Core.catMaybes
          [ ("price" Core..=) Core.<$> price,
            ("regionCode" Core..=) Core.<$> regionCode,
            ("taxAmount" Core..=) Core.<$> taxAmount
          ]
      )

-- | Country targeting specification.
--
-- /See:/ 'newCountryTargeting' smart constructor.
data CountryTargeting = CountryTargeting
  { -- | Countries to target, specified as two letter <https://unicode.org/cldr/charts/latest/supplemental/territory_containment_un_m_49.html CLDR codes>.
    countries :: (Core.Maybe [Core.Text]),
    -- | Include \"rest of world\" as well as explicitly targeted countries.
    includeRestOfWorld :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CountryTargeting' with the minimum fields required to make a request.
newCountryTargeting ::
  CountryTargeting
newCountryTargeting =
  CountryTargeting {countries = Core.Nothing, includeRestOfWorld = Core.Nothing}

instance Core.FromJSON CountryTargeting where
  parseJSON =
    Core.withObject
      "CountryTargeting"
      ( \o ->
          CountryTargeting
            Core.<$> (o Core..:? "countries")
            Core.<*> (o Core..:? "includeRestOfWorld")
      )

instance Core.ToJSON CountryTargeting where
  toJSON CountryTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("countries" Core..=) Core.<$> countries,
            ("includeRestOfWorld" Core..=)
              Core.<$> includeRestOfWorld
          ]
      )

-- | Request message for DeactivateBasePlan.
--
-- /See:/ 'newDeactivateBasePlanRequest' smart constructor.
data DeactivateBasePlanRequest = DeactivateBasePlanRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeactivateBasePlanRequest' with the minimum fields required to make a request.
newDeactivateBasePlanRequest ::
  DeactivateBasePlanRequest
newDeactivateBasePlanRequest = DeactivateBasePlanRequest

instance Core.FromJSON DeactivateBasePlanRequest where
  parseJSON =
    Core.withObject
      "DeactivateBasePlanRequest"
      (\o -> Core.pure DeactivateBasePlanRequest)

instance Core.ToJSON DeactivateBasePlanRequest where
  toJSON = Core.const Core.emptyObject

-- | Request message for DeactivateSubscriptionOffer.
--
-- /See:/ 'newDeactivateSubscriptionOfferRequest' smart constructor.
data DeactivateSubscriptionOfferRequest = DeactivateSubscriptionOfferRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeactivateSubscriptionOfferRequest' with the minimum fields required to make a request.
newDeactivateSubscriptionOfferRequest ::
  DeactivateSubscriptionOfferRequest
newDeactivateSubscriptionOfferRequest = DeactivateSubscriptionOfferRequest

instance
  Core.FromJSON
    DeactivateSubscriptionOfferRequest
  where
  parseJSON =
    Core.withObject
      "DeactivateSubscriptionOfferRequest"
      (\o -> Core.pure DeactivateSubscriptionOfferRequest)

instance
  Core.ToJSON
    DeactivateSubscriptionOfferRequest
  where
  toJSON = Core.const Core.emptyObject

-- | Represents a deobfuscation file.
--
-- /See:/ 'newDeobfuscationFile' smart constructor.
newtype DeobfuscationFile = DeobfuscationFile
  { -- | The type of the deobfuscation file.
    symbolType :: (Core.Maybe DeobfuscationFile_SymbolType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeobfuscationFile' with the minimum fields required to make a request.
newDeobfuscationFile ::
  DeobfuscationFile
newDeobfuscationFile = DeobfuscationFile {symbolType = Core.Nothing}

instance Core.FromJSON DeobfuscationFile where
  parseJSON =
    Core.withObject
      "DeobfuscationFile"
      ( \o ->
          DeobfuscationFile Core.<$> (o Core..:? "symbolType")
      )

instance Core.ToJSON DeobfuscationFile where
  toJSON DeobfuscationFile {..} =
    Core.object
      ( Core.catMaybes
          [("symbolType" Core..=) Core.<$> symbolType]
      )

-- | Responses for the upload.
--
-- /See:/ 'newDeobfuscationFilesUploadResponse' smart constructor.
newtype DeobfuscationFilesUploadResponse = DeobfuscationFilesUploadResponse
  { -- | The uploaded Deobfuscation File configuration.
    deobfuscationFile :: (Core.Maybe DeobfuscationFile)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeobfuscationFilesUploadResponse' with the minimum fields required to make a request.
newDeobfuscationFilesUploadResponse ::
  DeobfuscationFilesUploadResponse
newDeobfuscationFilesUploadResponse =
  DeobfuscationFilesUploadResponse {deobfuscationFile = Core.Nothing}

instance
  Core.FromJSON
    DeobfuscationFilesUploadResponse
  where
  parseJSON =
    Core.withObject
      "DeobfuscationFilesUploadResponse"
      ( \o ->
          DeobfuscationFilesUploadResponse
            Core.<$> (o Core..:? "deobfuscationFile")
      )

instance Core.ToJSON DeobfuscationFilesUploadResponse where
  toJSON DeobfuscationFilesUploadResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deobfuscationFile" Core..=)
              Core.<$> deobfuscationFile
          ]
      )

-- | Developer entry from conversation between user and developer.
--
-- /See:/ 'newDeveloperComment' smart constructor.
data DeveloperComment = DeveloperComment
  { -- | The last time at which this comment was updated.
    lastModified :: (Core.Maybe Timestamp),
    -- | The content of the comment, i.e. reply body.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeveloperComment' with the minimum fields required to make a request.
newDeveloperComment ::
  DeveloperComment
newDeveloperComment =
  DeveloperComment {lastModified = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON DeveloperComment where
  parseJSON =
    Core.withObject
      "DeveloperComment"
      ( \o ->
          DeveloperComment
            Core.<$> (o Core..:? "lastModified")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON DeveloperComment where
  toJSON DeveloperComment {..} =
    Core.object
      ( Core.catMaybes
          [ ("lastModified" Core..=) Core.<$> lastModified,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | Information specific to cancellations initiated by developers.
--
-- /See:/ 'newDeveloperInitiatedCancellation' smart constructor.
data DeveloperInitiatedCancellation = DeveloperInitiatedCancellation
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeveloperInitiatedCancellation' with the minimum fields required to make a request.
newDeveloperInitiatedCancellation ::
  DeveloperInitiatedCancellation
newDeveloperInitiatedCancellation = DeveloperInitiatedCancellation

instance Core.FromJSON DeveloperInitiatedCancellation where
  parseJSON =
    Core.withObject
      "DeveloperInitiatedCancellation"
      (\o -> Core.pure DeveloperInitiatedCancellation)

instance Core.ToJSON DeveloperInitiatedCancellation where
  toJSON = Core.const Core.emptyObject

-- | A group of devices. A group is defined by a set of device selectors. A device belongs to the group if it matches any selector (logical OR).
--
-- /See:/ 'newDeviceGroup' smart constructor.
data DeviceGroup = DeviceGroup
  { -- | Device selectors for this group. A device matching any of the selectors is included in this group.
    deviceSelectors :: (Core.Maybe [DeviceSelector]),
    -- | The name of the group.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceGroup' with the minimum fields required to make a request.
newDeviceGroup ::
  DeviceGroup
newDeviceGroup =
  DeviceGroup {deviceSelectors = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON DeviceGroup where
  parseJSON =
    Core.withObject
      "DeviceGroup"
      ( \o ->
          DeviceGroup
            Core.<$> (o Core..:? "deviceSelectors")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON DeviceGroup where
  toJSON DeviceGroup {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceSelectors" Core..=)
              Core.<$> deviceSelectors,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Identifier of a device.
--
-- /See:/ 'newDeviceId' smart constructor.
data DeviceId = DeviceId
  { -- | Value of Build.BRAND.
    buildBrand :: (Core.Maybe Core.Text),
    -- | Value of Build.DEVICE.
    buildDevice :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceId' with the minimum fields required to make a request.
newDeviceId ::
  DeviceId
newDeviceId = DeviceId {buildBrand = Core.Nothing, buildDevice = Core.Nothing}

instance Core.FromJSON DeviceId where
  parseJSON =
    Core.withObject
      "DeviceId"
      ( \o ->
          DeviceId
            Core.<$> (o Core..:? "buildBrand")
            Core.<*> (o Core..:? "buildDevice")
      )

instance Core.ToJSON DeviceId where
  toJSON DeviceId {..} =
    Core.object
      ( Core.catMaybes
          [ ("buildBrand" Core..=) Core.<$> buildBrand,
            ("buildDevice" Core..=) Core.<$> buildDevice
          ]
      )

-- | Characteristics of the user\'s device.
--
-- /See:/ 'newDeviceMetadata' smart constructor.
data DeviceMetadata = DeviceMetadata
  { -- | Device CPU make, e.g. \"Qualcomm\"
    cpuMake :: (Core.Maybe Core.Text),
    -- | Device CPU model, e.g. \"MSM8974\"
    cpuModel :: (Core.Maybe Core.Text),
    -- | Device class (e.g. tablet)
    deviceClass :: (Core.Maybe Core.Text),
    -- | OpenGL version
    glEsVersion :: (Core.Maybe Core.Int32),
    -- | Device manufacturer (e.g. Motorola)
    manufacturer :: (Core.Maybe Core.Text),
    -- | Comma separated list of native platforms (e.g. \"arm\", \"arm7\")
    nativePlatform :: (Core.Maybe Core.Text),
    -- | Device model name (e.g. Droid)
    productName :: (Core.Maybe Core.Text),
    -- | Device RAM in Megabytes, e.g. \"2048\"
    ramMb :: (Core.Maybe Core.Int32),
    -- | Screen density in DPI
    screenDensityDpi :: (Core.Maybe Core.Int32),
    -- | Screen height in pixels
    screenHeightPx :: (Core.Maybe Core.Int32),
    -- | Screen width in pixels
    screenWidthPx :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceMetadata' with the minimum fields required to make a request.
newDeviceMetadata ::
  DeviceMetadata
newDeviceMetadata =
  DeviceMetadata
    { cpuMake = Core.Nothing,
      cpuModel = Core.Nothing,
      deviceClass = Core.Nothing,
      glEsVersion = Core.Nothing,
      manufacturer = Core.Nothing,
      nativePlatform = Core.Nothing,
      productName = Core.Nothing,
      ramMb = Core.Nothing,
      screenDensityDpi = Core.Nothing,
      screenHeightPx = Core.Nothing,
      screenWidthPx = Core.Nothing
    }

instance Core.FromJSON DeviceMetadata where
  parseJSON =
    Core.withObject
      "DeviceMetadata"
      ( \o ->
          DeviceMetadata
            Core.<$> (o Core..:? "cpuMake")
            Core.<*> (o Core..:? "cpuModel")
            Core.<*> (o Core..:? "deviceClass")
            Core.<*> (o Core..:? "glEsVersion")
            Core.<*> (o Core..:? "manufacturer")
            Core.<*> (o Core..:? "nativePlatform")
            Core.<*> (o Core..:? "productName")
            Core.<*> (o Core..:? "ramMb")
            Core.<*> (o Core..:? "screenDensityDpi")
            Core.<*> (o Core..:? "screenHeightPx")
            Core.<*> (o Core..:? "screenWidthPx")
      )

instance Core.ToJSON DeviceMetadata where
  toJSON DeviceMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpuMake" Core..=) Core.<$> cpuMake,
            ("cpuModel" Core..=) Core.<$> cpuModel,
            ("deviceClass" Core..=) Core.<$> deviceClass,
            ("glEsVersion" Core..=) Core.<$> glEsVersion,
            ("manufacturer" Core..=) Core.<$> manufacturer,
            ("nativePlatform" Core..=) Core.<$> nativePlatform,
            ("productName" Core..=) Core.<$> productName,
            ("ramMb" Core..=) Core.<$> ramMb,
            ("screenDensityDpi" Core..=)
              Core.<$> screenDensityDpi,
            ("screenHeightPx" Core..=) Core.<$> screenHeightPx,
            ("screenWidthPx" Core..=) Core.<$> screenWidthPx
          ]
      )

-- | Conditions about a device\'s RAM capabilities.
--
-- /See:/ 'newDeviceRam' smart constructor.
data DeviceRam = DeviceRam
  { -- | Maximum RAM in bytes (bound excluded).
    maxBytes :: (Core.Maybe Core.Int64),
    -- | Minimum RAM in bytes (bound included).
    minBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceRam' with the minimum fields required to make a request.
newDeviceRam ::
  DeviceRam
newDeviceRam = DeviceRam {maxBytes = Core.Nothing, minBytes = Core.Nothing}

instance Core.FromJSON DeviceRam where
  parseJSON =
    Core.withObject
      "DeviceRam"
      ( \o ->
          DeviceRam
            Core.<$> ( o Core..:? "maxBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "minBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON DeviceRam where
  toJSON DeviceRam {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxBytes" Core..=) Core.. Core.AsText
              Core.<$> maxBytes,
            ("minBytes" Core..=) Core.. Core.AsText
              Core.<$> minBytes
          ]
      )

-- | Selector for a device group. A selector consists of a set of conditions on the device that should all match (logical AND) to determine a device group eligibility. For instance, if a selector specifies RAM conditions, device model inclusion and device model exclusion, a device is considered to match if: device matches RAM conditions AND device matches one of the included device models AND device doesn\'t match excluded device models
--
-- /See:/ 'newDeviceSelector' smart constructor.
data DeviceSelector = DeviceSelector
  { -- | Conditions on the device\'s RAM.
    deviceRam :: (Core.Maybe DeviceRam),
    -- | Device models excluded by this selector, even if they match all other conditions.
    excludedDeviceIds :: (Core.Maybe [DeviceId]),
    -- | A device that has any of these system features is excluded by this selector, even if it matches all other conditions.
    forbiddenSystemFeatures :: (Core.Maybe [SystemFeature]),
    -- | Device models included by this selector.
    includedDeviceIds :: (Core.Maybe [DeviceId]),
    -- | A device needs to have all these system features to be included by the selector.
    requiredSystemFeatures :: (Core.Maybe [SystemFeature])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceSelector' with the minimum fields required to make a request.
newDeviceSelector ::
  DeviceSelector
newDeviceSelector =
  DeviceSelector
    { deviceRam = Core.Nothing,
      excludedDeviceIds = Core.Nothing,
      forbiddenSystemFeatures = Core.Nothing,
      includedDeviceIds = Core.Nothing,
      requiredSystemFeatures = Core.Nothing
    }

instance Core.FromJSON DeviceSelector where
  parseJSON =
    Core.withObject
      "DeviceSelector"
      ( \o ->
          DeviceSelector
            Core.<$> (o Core..:? "deviceRam")
            Core.<*> (o Core..:? "excludedDeviceIds")
            Core.<*> (o Core..:? "forbiddenSystemFeatures")
            Core.<*> (o Core..:? "includedDeviceIds")
            Core.<*> (o Core..:? "requiredSystemFeatures")
      )

instance Core.ToJSON DeviceSelector where
  toJSON DeviceSelector {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceRam" Core..=) Core.<$> deviceRam,
            ("excludedDeviceIds" Core..=)
              Core.<$> excludedDeviceIds,
            ("forbiddenSystemFeatures" Core..=)
              Core.<$> forbiddenSystemFeatures,
            ("includedDeviceIds" Core..=)
              Core.<$> includedDeviceIds,
            ("requiredSystemFeatures" Core..=)
              Core.<$> requiredSystemFeatures
          ]
      )

-- | The device spec used to generate a system APK.
--
-- /See:/ 'newDeviceSpec' smart constructor.
data DeviceSpec = DeviceSpec
  { -- | Screen dpi.
    screenDensity :: (Core.Maybe Core.Word32),
    -- | Supported ABI architectures in the order of preference. The values should be the string as reported by the platform, e.g. \"armeabi-v7a\", \"x86_64\".
    supportedAbis :: (Core.Maybe [Core.Text]),
    -- | All installed locales represented as BCP-47 strings, e.g. \"en-US\".
    supportedLocales :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceSpec' with the minimum fields required to make a request.
newDeviceSpec ::
  DeviceSpec
newDeviceSpec =
  DeviceSpec
    { screenDensity = Core.Nothing,
      supportedAbis = Core.Nothing,
      supportedLocales = Core.Nothing
    }

instance Core.FromJSON DeviceSpec where
  parseJSON =
    Core.withObject
      "DeviceSpec"
      ( \o ->
          DeviceSpec
            Core.<$> (o Core..:? "screenDensity")
            Core.<*> (o Core..:? "supportedAbis")
            Core.<*> (o Core..:? "supportedLocales")
      )

instance Core.ToJSON DeviceSpec where
  toJSON DeviceSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("screenDensity" Core..=) Core.<$> screenDensity,
            ("supportedAbis" Core..=) Core.<$> supportedAbis,
            ("supportedLocales" Core..=)
              Core.<$> supportedLocales
          ]
      )

-- | A single device tier. Devices matching any of the device groups in device/group/names are considered to match the tier.
--
-- /See:/ 'newDeviceTier' smart constructor.
data DeviceTier = DeviceTier
  { -- | Groups of devices included in this tier. These groups must be defined explicitly under device_groups in this configuration.
    deviceGroupNames :: (Core.Maybe [Core.Text]),
    -- | The priority level of the tier. Tiers are evaluated in descending order of level: the highest level tier has the highest priority. The highest tier matching a given device is selected for that device. You should use a contiguous range of levels for your tiers in a tier set; tier levels in a tier set must be unique. For instance, if your tier set has 4 tiers (including the global fallback), you should define tiers 1, 2 and 3 in this configuration. Note: tier 0 is implicitly defined as a global fallback and selected for devices that don\'t match any of the tiers explicitly defined here. You mustn\'t define level 0 explicitly in this configuration.
    level :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceTier' with the minimum fields required to make a request.
newDeviceTier ::
  DeviceTier
newDeviceTier =
  DeviceTier {deviceGroupNames = Core.Nothing, level = Core.Nothing}

instance Core.FromJSON DeviceTier where
  parseJSON =
    Core.withObject
      "DeviceTier"
      ( \o ->
          DeviceTier
            Core.<$> (o Core..:? "deviceGroupNames")
            Core.<*> (o Core..:? "level")
      )

instance Core.ToJSON DeviceTier where
  toJSON DeviceTier {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceGroupNames" Core..=)
              Core.<$> deviceGroupNames,
            ("level" Core..=) Core.<$> level
          ]
      )

-- | Configuration describing device targeting criteria for the content of an app.
--
-- /See:/ 'newDeviceTierConfig' smart constructor.
data DeviceTierConfig = DeviceTierConfig
  { -- | Definition of device groups for the app.
    deviceGroups :: (Core.Maybe [DeviceGroup]),
    -- | Output only. The device tier config ID.
    deviceTierConfigId :: (Core.Maybe Core.Int64),
    -- | Definition of the set of device tiers for the app.
    deviceTierSet :: (Core.Maybe DeviceTierSet),
    -- | Definition of user country sets for the app.
    userCountrySets :: (Core.Maybe [UserCountrySet])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceTierConfig' with the minimum fields required to make a request.
newDeviceTierConfig ::
  DeviceTierConfig
newDeviceTierConfig =
  DeviceTierConfig
    { deviceGroups = Core.Nothing,
      deviceTierConfigId = Core.Nothing,
      deviceTierSet = Core.Nothing,
      userCountrySets = Core.Nothing
    }

instance Core.FromJSON DeviceTierConfig where
  parseJSON =
    Core.withObject
      "DeviceTierConfig"
      ( \o ->
          DeviceTierConfig
            Core.<$> (o Core..:? "deviceGroups")
            Core.<*> ( o Core..:? "deviceTierConfigId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "deviceTierSet")
            Core.<*> (o Core..:? "userCountrySets")
      )

instance Core.ToJSON DeviceTierConfig where
  toJSON DeviceTierConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceGroups" Core..=) Core.<$> deviceGroups,
            ("deviceTierConfigId" Core..=) Core.. Core.AsText
              Core.<$> deviceTierConfigId,
            ("deviceTierSet" Core..=) Core.<$> deviceTierSet,
            ("userCountrySets" Core..=)
              Core.<$> userCountrySets
          ]
      )

-- | A set of device tiers. A tier set determines what variation of app content gets served to a specific device, for device-targeted content. You should assign a priority level to each tier, which determines the ordering by which they are evaluated by Play. See the documentation of DeviceTier.level for more details.
--
-- /See:/ 'newDeviceTierSet' smart constructor.
newtype DeviceTierSet = DeviceTierSet
  { -- | Device tiers belonging to the set.
    deviceTiers :: (Core.Maybe [DeviceTier])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceTierSet' with the minimum fields required to make a request.
newDeviceTierSet ::
  DeviceTierSet
newDeviceTierSet = DeviceTierSet {deviceTiers = Core.Nothing}

instance Core.FromJSON DeviceTierSet where
  parseJSON =
    Core.withObject
      "DeviceTierSet"
      ( \o ->
          DeviceTierSet Core.<$> (o Core..:? "deviceTiers")
      )

instance Core.ToJSON DeviceTierSet where
  toJSON DeviceTierSet {..} =
    Core.object
      ( Core.catMaybes
          [("deviceTiers" Core..=) Core.<$> deviceTiers]
      )

-- | An expansion file. The resource for ExpansionFilesService.
--
-- /See:/ 'newExpansionFile' smart constructor.
data ExpansionFile = ExpansionFile
  { -- | If set, this field indicates that this APK has an expansion file uploaded to it: this APK does not reference another APK\'s expansion file. The field\'s value is the size of the uploaded expansion file in bytes.
    fileSize :: (Core.Maybe Core.Int64),
    -- | If set, this APK\'s expansion file references another APK\'s expansion file. The file_size field will not be set.
    referencesVersion :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExpansionFile' with the minimum fields required to make a request.
newExpansionFile ::
  ExpansionFile
newExpansionFile =
  ExpansionFile {fileSize = Core.Nothing, referencesVersion = Core.Nothing}

instance Core.FromJSON ExpansionFile where
  parseJSON =
    Core.withObject
      "ExpansionFile"
      ( \o ->
          ExpansionFile
            Core.<$> ( o Core..:? "fileSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "referencesVersion")
      )

instance Core.ToJSON ExpansionFile where
  toJSON ExpansionFile {..} =
    Core.object
      ( Core.catMaybes
          [ ("fileSize" Core..=) Core.. Core.AsText
              Core.<$> fileSize,
            ("referencesVersion" Core..=)
              Core.<$> referencesVersion
          ]
      )

-- | Response for uploading an expansion file.
--
-- /See:/ 'newExpansionFilesUploadResponse' smart constructor.
newtype ExpansionFilesUploadResponse = ExpansionFilesUploadResponse
  { -- | The uploaded expansion file configuration.
    expansionFile :: (Core.Maybe ExpansionFile)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExpansionFilesUploadResponse' with the minimum fields required to make a request.
newExpansionFilesUploadResponse ::
  ExpansionFilesUploadResponse
newExpansionFilesUploadResponse =
  ExpansionFilesUploadResponse {expansionFile = Core.Nothing}

instance Core.FromJSON ExpansionFilesUploadResponse where
  parseJSON =
    Core.withObject
      "ExpansionFilesUploadResponse"
      ( \o ->
          ExpansionFilesUploadResponse
            Core.<$> (o Core..:? "expansionFile")
      )

instance Core.ToJSON ExpansionFilesUploadResponse where
  toJSON ExpansionFilesUploadResponse {..} =
    Core.object
      ( Core.catMaybes
          [("expansionFile" Core..=) Core.<$> expansionFile]
      )

-- | User account identifier in the third-party service.
--
-- /See:/ 'newExternalAccountIdentifiers' smart constructor.
data ExternalAccountIdentifiers = ExternalAccountIdentifiers
  { -- | User account identifier in the third-party service. Only present if account linking happened as part of the subscription purchase flow.
    externalAccountId :: (Core.Maybe Core.Text),
    -- | An obfuscated version of the id that is uniquely associated with the user\'s account in your app. Present for the following purchases: * If account linking happened as part of the subscription purchase flow. * It was specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.
    obfuscatedExternalAccountId :: (Core.Maybe Core.Text),
    -- | An obfuscated version of the id that is uniquely associated with the user\'s profile in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.
    obfuscatedExternalProfileId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExternalAccountIdentifiers' with the minimum fields required to make a request.
newExternalAccountIdentifiers ::
  ExternalAccountIdentifiers
newExternalAccountIdentifiers =
  ExternalAccountIdentifiers
    { externalAccountId = Core.Nothing,
      obfuscatedExternalAccountId = Core.Nothing,
      obfuscatedExternalProfileId = Core.Nothing
    }

instance Core.FromJSON ExternalAccountIdentifiers where
  parseJSON =
    Core.withObject
      "ExternalAccountIdentifiers"
      ( \o ->
          ExternalAccountIdentifiers
            Core.<$> (o Core..:? "externalAccountId")
            Core.<*> (o Core..:? "obfuscatedExternalAccountId")
            Core.<*> (o Core..:? "obfuscatedExternalProfileId")
      )

instance Core.ToJSON ExternalAccountIdentifiers where
  toJSON ExternalAccountIdentifiers {..} =
    Core.object
      ( Core.catMaybes
          [ ("externalAccountId" Core..=)
              Core.<$> externalAccountId,
            ("obfuscatedExternalAccountId" Core..=)
              Core.<$> obfuscatedExternalAccountId,
            ("obfuscatedExternalProfileId" Core..=)
              Core.<$> obfuscatedExternalProfileId
          ]
      )

-- | Defines an APK available for this application that is hosted externally and not uploaded to Google Play. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.
--
-- /See:/ 'newExternallyHostedApk' smart constructor.
data ExternallyHostedApk = ExternallyHostedApk
  { -- | The application label.
    applicationLabel :: (Core.Maybe Core.Text),
    -- | A certificate (or array of certificates if a certificate-chain is used) used to sign this APK, represented as a base64 encoded byte array.
    certificateBase64s :: (Core.Maybe [Core.Text]),
    -- | The URL at which the APK is hosted. This must be an https URL.
    externallyHostedUrl :: (Core.Maybe Core.Text),
    -- | The sha1 checksum of this APK, represented as a base64 encoded byte array.
    fileSha1Base64 :: (Core.Maybe Core.Text),
    -- | The sha256 checksum of this APK, represented as a base64 encoded byte array.
    fileSha256Base64 :: (Core.Maybe Core.Text),
    -- | The file size in bytes of this APK.
    fileSize :: (Core.Maybe Core.Int64),
    -- | The icon image from the APK, as a base64 encoded byte array.
    iconBase64 :: (Core.Maybe Core.Text),
    -- | The maximum SDK supported by this APK (optional).
    maximumSdk :: (Core.Maybe Core.Int32),
    -- | The minimum SDK targeted by this APK.
    minimumSdk :: (Core.Maybe Core.Int32),
    -- | The native code environments supported by this APK (optional).
    nativeCodes :: (Core.Maybe [Core.Text]),
    -- | The package name.
    packageName :: (Core.Maybe Core.Text),
    -- | The features required by this APK (optional).
    usesFeatures :: (Core.Maybe [Core.Text]),
    -- | The permissions requested by this APK.
    usesPermissions :: (Core.Maybe [UsesPermission]),
    -- | The version code of this APK.
    versionCode :: (Core.Maybe Core.Int32),
    -- | The version name of this APK.
    versionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExternallyHostedApk' with the minimum fields required to make a request.
newExternallyHostedApk ::
  ExternallyHostedApk
newExternallyHostedApk =
  ExternallyHostedApk
    { applicationLabel = Core.Nothing,
      certificateBase64s = Core.Nothing,
      externallyHostedUrl = Core.Nothing,
      fileSha1Base64 = Core.Nothing,
      fileSha256Base64 = Core.Nothing,
      fileSize = Core.Nothing,
      iconBase64 = Core.Nothing,
      maximumSdk = Core.Nothing,
      minimumSdk = Core.Nothing,
      nativeCodes = Core.Nothing,
      packageName = Core.Nothing,
      usesFeatures = Core.Nothing,
      usesPermissions = Core.Nothing,
      versionCode = Core.Nothing,
      versionName = Core.Nothing
    }

instance Core.FromJSON ExternallyHostedApk where
  parseJSON =
    Core.withObject
      "ExternallyHostedApk"
      ( \o ->
          ExternallyHostedApk
            Core.<$> (o Core..:? "applicationLabel")
            Core.<*> (o Core..:? "certificateBase64s")
            Core.<*> (o Core..:? "externallyHostedUrl")
            Core.<*> (o Core..:? "fileSha1Base64")
            Core.<*> (o Core..:? "fileSha256Base64")
            Core.<*> ( o Core..:? "fileSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "iconBase64")
            Core.<*> (o Core..:? "maximumSdk")
            Core.<*> (o Core..:? "minimumSdk")
            Core.<*> (o Core..:? "nativeCodes")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "usesFeatures")
            Core.<*> (o Core..:? "usesPermissions")
            Core.<*> (o Core..:? "versionCode")
            Core.<*> (o Core..:? "versionName")
      )

instance Core.ToJSON ExternallyHostedApk where
  toJSON ExternallyHostedApk {..} =
    Core.object
      ( Core.catMaybes
          [ ("applicationLabel" Core..=)
              Core.<$> applicationLabel,
            ("certificateBase64s" Core..=)
              Core.<$> certificateBase64s,
            ("externallyHostedUrl" Core..=)
              Core.<$> externallyHostedUrl,
            ("fileSha1Base64" Core..=) Core.<$> fileSha1Base64,
            ("fileSha256Base64" Core..=)
              Core.<$> fileSha256Base64,
            ("fileSize" Core..=) Core.. Core.AsText
              Core.<$> fileSize,
            ("iconBase64" Core..=) Core.<$> iconBase64,
            ("maximumSdk" Core..=) Core.<$> maximumSdk,
            ("minimumSdk" Core..=) Core.<$> minimumSdk,
            ("nativeCodes" Core..=) Core.<$> nativeCodes,
            ("packageName" Core..=) Core.<$> packageName,
            ("usesFeatures" Core..=) Core.<$> usesFeatures,
            ("usesPermissions" Core..=) Core.<$> usesPermissions,
            ("versionCode" Core..=) Core.<$> versionCode,
            ("versionName" Core..=) Core.<$> versionName
          ]
      )

-- | Response to list generated APKs.
--
-- /See:/ 'newGeneratedApksListResponse' smart constructor.
newtype GeneratedApksListResponse = GeneratedApksListResponse
  { -- | All generated APKs, grouped by the APK signing key.
    generatedApks :: (Core.Maybe [GeneratedApksPerSigningKey])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeneratedApksListResponse' with the minimum fields required to make a request.
newGeneratedApksListResponse ::
  GeneratedApksListResponse
newGeneratedApksListResponse =
  GeneratedApksListResponse {generatedApks = Core.Nothing}

instance Core.FromJSON GeneratedApksListResponse where
  parseJSON =
    Core.withObject
      "GeneratedApksListResponse"
      ( \o ->
          GeneratedApksListResponse
            Core.<$> (o Core..:? "generatedApks")
      )

instance Core.ToJSON GeneratedApksListResponse where
  toJSON GeneratedApksListResponse {..} =
    Core.object
      ( Core.catMaybes
          [("generatedApks" Core..=) Core.<$> generatedApks]
      )

-- | Download metadata for split, standalone and universal APKs, as well as asset pack slices, signed with a given key.
--
-- /See:/ 'newGeneratedApksPerSigningKey' smart constructor.
data GeneratedApksPerSigningKey = GeneratedApksPerSigningKey
  { -- | SHA256 hash of the APK signing public key certificate.
    certificateSha256Hash :: (Core.Maybe Core.Text),
    -- | List of asset pack slices which will be served for this app bundle, signed with a key corresponding to certificate/sha256/hash.
    generatedAssetPackSlices :: (Core.Maybe [GeneratedAssetPackSlice]),
    -- | List of generated split APKs, signed with a key corresponding to certificate/sha256/hash.
    generatedSplitApks :: (Core.Maybe [GeneratedSplitApk]),
    -- | List of generated standalone APKs, signed with a key corresponding to certificate/sha256/hash.
    generatedStandaloneApks :: (Core.Maybe [GeneratedStandaloneApk]),
    -- | Generated universal APK, signed with a key corresponding to certificate/sha256/hash. This field is not set if no universal APK was generated for this signing key.
    generatedUniversalApk :: (Core.Maybe GeneratedUniversalApk)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeneratedApksPerSigningKey' with the minimum fields required to make a request.
newGeneratedApksPerSigningKey ::
  GeneratedApksPerSigningKey
newGeneratedApksPerSigningKey =
  GeneratedApksPerSigningKey
    { certificateSha256Hash = Core.Nothing,
      generatedAssetPackSlices = Core.Nothing,
      generatedSplitApks = Core.Nothing,
      generatedStandaloneApks = Core.Nothing,
      generatedUniversalApk = Core.Nothing
    }

instance Core.FromJSON GeneratedApksPerSigningKey where
  parseJSON =
    Core.withObject
      "GeneratedApksPerSigningKey"
      ( \o ->
          GeneratedApksPerSigningKey
            Core.<$> (o Core..:? "certificateSha256Hash")
            Core.<*> (o Core..:? "generatedAssetPackSlices")
            Core.<*> (o Core..:? "generatedSplitApks")
            Core.<*> (o Core..:? "generatedStandaloneApks")
            Core.<*> (o Core..:? "generatedUniversalApk")
      )

instance Core.ToJSON GeneratedApksPerSigningKey where
  toJSON GeneratedApksPerSigningKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("certificateSha256Hash" Core..=)
              Core.<$> certificateSha256Hash,
            ("generatedAssetPackSlices" Core..=)
              Core.<$> generatedAssetPackSlices,
            ("generatedSplitApks" Core..=)
              Core.<$> generatedSplitApks,
            ("generatedStandaloneApks" Core..=)
              Core.<$> generatedStandaloneApks,
            ("generatedUniversalApk" Core..=)
              Core.<$> generatedUniversalApk
          ]
      )

-- | Download metadata for an asset pack slice.
--
-- /See:/ 'newGeneratedAssetPackSlice' smart constructor.
data GeneratedAssetPackSlice = GeneratedAssetPackSlice
  { -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
    downloadId :: (Core.Maybe Core.Text),
    -- | Name of the module that this asset slice belongs to.
    moduleName :: (Core.Maybe Core.Text),
    -- | Asset slice ID.
    sliceId :: (Core.Maybe Core.Text),
    -- | Asset module version.
    version :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeneratedAssetPackSlice' with the minimum fields required to make a request.
newGeneratedAssetPackSlice ::
  GeneratedAssetPackSlice
newGeneratedAssetPackSlice =
  GeneratedAssetPackSlice
    { downloadId = Core.Nothing,
      moduleName = Core.Nothing,
      sliceId = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON GeneratedAssetPackSlice where
  parseJSON =
    Core.withObject
      "GeneratedAssetPackSlice"
      ( \o ->
          GeneratedAssetPackSlice
            Core.<$> (o Core..:? "downloadId")
            Core.<*> (o Core..:? "moduleName")
            Core.<*> (o Core..:? "sliceId")
            Core.<*> ( o Core..:? "version"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GeneratedAssetPackSlice where
  toJSON GeneratedAssetPackSlice {..} =
    Core.object
      ( Core.catMaybes
          [ ("downloadId" Core..=) Core.<$> downloadId,
            ("moduleName" Core..=) Core.<$> moduleName,
            ("sliceId" Core..=) Core.<$> sliceId,
            ("version" Core..=) Core.. Core.AsText
              Core.<$> version
          ]
      )

-- | Download metadata for a split APK.
--
-- /See:/ 'newGeneratedSplitApk' smart constructor.
data GeneratedSplitApk = GeneratedSplitApk
  { -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
    downloadId :: (Core.Maybe Core.Text),
    -- | Name of the module that this APK belongs to.
    moduleName :: (Core.Maybe Core.Text),
    -- | Split ID. Empty for the main split of the base module.
    splitId :: (Core.Maybe Core.Text),
    -- | ID of the generated variant.
    variantId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeneratedSplitApk' with the minimum fields required to make a request.
newGeneratedSplitApk ::
  GeneratedSplitApk
newGeneratedSplitApk =
  GeneratedSplitApk
    { downloadId = Core.Nothing,
      moduleName = Core.Nothing,
      splitId = Core.Nothing,
      variantId = Core.Nothing
    }

instance Core.FromJSON GeneratedSplitApk where
  parseJSON =
    Core.withObject
      "GeneratedSplitApk"
      ( \o ->
          GeneratedSplitApk
            Core.<$> (o Core..:? "downloadId")
            Core.<*> (o Core..:? "moduleName")
            Core.<*> (o Core..:? "splitId")
            Core.<*> (o Core..:? "variantId")
      )

instance Core.ToJSON GeneratedSplitApk where
  toJSON GeneratedSplitApk {..} =
    Core.object
      ( Core.catMaybes
          [ ("downloadId" Core..=) Core.<$> downloadId,
            ("moduleName" Core..=) Core.<$> moduleName,
            ("splitId" Core..=) Core.<$> splitId,
            ("variantId" Core..=) Core.<$> variantId
          ]
      )

-- | Download metadata for a standalone APK.
--
-- /See:/ 'newGeneratedStandaloneApk' smart constructor.
data GeneratedStandaloneApk = GeneratedStandaloneApk
  { -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
    downloadId :: (Core.Maybe Core.Text),
    -- | ID of the generated variant.
    variantId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeneratedStandaloneApk' with the minimum fields required to make a request.
newGeneratedStandaloneApk ::
  GeneratedStandaloneApk
newGeneratedStandaloneApk =
  GeneratedStandaloneApk {downloadId = Core.Nothing, variantId = Core.Nothing}

instance Core.FromJSON GeneratedStandaloneApk where
  parseJSON =
    Core.withObject
      "GeneratedStandaloneApk"
      ( \o ->
          GeneratedStandaloneApk
            Core.<$> (o Core..:? "downloadId")
            Core.<*> (o Core..:? "variantId")
      )

instance Core.ToJSON GeneratedStandaloneApk where
  toJSON GeneratedStandaloneApk {..} =
    Core.object
      ( Core.catMaybes
          [ ("downloadId" Core..=) Core.<$> downloadId,
            ("variantId" Core..=) Core.<$> variantId
          ]
      )

-- | Download metadata for a universal APK.
--
-- /See:/ 'newGeneratedUniversalApk' smart constructor.
newtype GeneratedUniversalApk = GeneratedUniversalApk
  { -- | Download ID, which uniquely identifies the APK to download. Should be supplied to @generatedapks.download@ method.
    downloadId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GeneratedUniversalApk' with the minimum fields required to make a request.
newGeneratedUniversalApk ::
  GeneratedUniversalApk
newGeneratedUniversalApk = GeneratedUniversalApk {downloadId = Core.Nothing}

instance Core.FromJSON GeneratedUniversalApk where
  parseJSON =
    Core.withObject
      "GeneratedUniversalApk"
      ( \o ->
          GeneratedUniversalApk
            Core.<$> (o Core..:? "downloadId")
      )

instance Core.ToJSON GeneratedUniversalApk where
  toJSON GeneratedUniversalApk {..} =
    Core.object
      ( Core.catMaybes
          [("downloadId" Core..=) Core.<$> downloadId]
      )

-- | An access grant resource.
--
-- /See:/ 'newGrant' smart constructor.
data Grant = Grant
  { -- | The permissions granted to the user for this app.
    appLevelPermissions :: (Core.Maybe [Grant_AppLevelPermissionsItem]),
    -- | Required. Resource name for this grant, following the pattern \"developers\/{developer}\/users\/{email}\/grants\/{package_name}\". If this grant is for a draft app, the app ID will be used in this resource name instead of the package name.
    name :: (Core.Maybe Core.Text),
    -- | Immutable. The package name of the app. This will be empty for draft apps.
    packageName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Grant' with the minimum fields required to make a request.
newGrant ::
  Grant
newGrant =
  Grant
    { appLevelPermissions = Core.Nothing,
      name = Core.Nothing,
      packageName = Core.Nothing
    }

instance Core.FromJSON Grant where
  parseJSON =
    Core.withObject
      "Grant"
      ( \o ->
          Grant
            Core.<$> (o Core..:? "appLevelPermissions")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "packageName")
      )

instance Core.ToJSON Grant where
  toJSON Grant {..} =
    Core.object
      ( Core.catMaybes
          [ ("appLevelPermissions" Core..=)
              Core.<$> appLevelPermissions,
            ("name" Core..=) Core.<$> name,
            ("packageName" Core..=) Core.<$> packageName
          ]
      )

-- | An uploaded image. The resource for ImagesService.
--
-- /See:/ 'newImage' smart constructor.
data Image = Image
  { -- | A unique id representing this image.
    id :: (Core.Maybe Core.Text),
    -- | A sha1 hash of the image.
    sha1 :: (Core.Maybe Core.Text),
    -- | A sha256 hash of the image.
    sha256 :: (Core.Maybe Core.Text),
    -- | A URL that will serve a preview of the image.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
newImage ::
  Image
newImage =
  Image
    { id = Core.Nothing,
      sha1 = Core.Nothing,
      sha256 = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON Image where
  parseJSON =
    Core.withObject
      "Image"
      ( \o ->
          Image
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "sha1")
            Core.<*> (o Core..:? "sha256")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON Image where
  toJSON Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("sha1" Core..=) Core.<$> sha1,
            ("sha256" Core..=) Core.<$> sha256,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Response for deleting all images.
--
-- /See:/ 'newImagesDeleteAllResponse' smart constructor.
newtype ImagesDeleteAllResponse = ImagesDeleteAllResponse
  { -- | The deleted images.
    deleted :: (Core.Maybe [Image])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImagesDeleteAllResponse' with the minimum fields required to make a request.
newImagesDeleteAllResponse ::
  ImagesDeleteAllResponse
newImagesDeleteAllResponse = ImagesDeleteAllResponse {deleted = Core.Nothing}

instance Core.FromJSON ImagesDeleteAllResponse where
  parseJSON =
    Core.withObject
      "ImagesDeleteAllResponse"
      ( \o ->
          ImagesDeleteAllResponse
            Core.<$> (o Core..:? "deleted")
      )

instance Core.ToJSON ImagesDeleteAllResponse where
  toJSON ImagesDeleteAllResponse {..} =
    Core.object
      ( Core.catMaybes
          [("deleted" Core..=) Core.<$> deleted]
      )

-- | Response listing all images.
--
-- /See:/ 'newImagesListResponse' smart constructor.
newtype ImagesListResponse = ImagesListResponse
  { -- | All listed Images.
    images :: (Core.Maybe [Image])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImagesListResponse' with the minimum fields required to make a request.
newImagesListResponse ::
  ImagesListResponse
newImagesListResponse = ImagesListResponse {images = Core.Nothing}

instance Core.FromJSON ImagesListResponse where
  parseJSON =
    Core.withObject
      "ImagesListResponse"
      ( \o ->
          ImagesListResponse Core.<$> (o Core..:? "images")
      )

instance Core.ToJSON ImagesListResponse where
  toJSON ImagesListResponse {..} =
    Core.object
      (Core.catMaybes [("images" Core..=) Core.<$> images])

-- | Response for uploading an image.
--
-- /See:/ 'newImagesUploadResponse' smart constructor.
newtype ImagesUploadResponse = ImagesUploadResponse
  { -- | The uploaded image.
    image :: (Core.Maybe Image)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImagesUploadResponse' with the minimum fields required to make a request.
newImagesUploadResponse ::
  ImagesUploadResponse
newImagesUploadResponse = ImagesUploadResponse {image = Core.Nothing}

instance Core.FromJSON ImagesUploadResponse where
  parseJSON =
    Core.withObject
      "ImagesUploadResponse"
      ( \o ->
          ImagesUploadResponse Core.<$> (o Core..:? "image")
      )

instance Core.ToJSON ImagesUploadResponse where
  toJSON ImagesUploadResponse {..} =
    Core.object
      (Core.catMaybes [("image" Core..=) Core.<$> image])

-- | An in-app product. The resource for InappproductsService.
--
-- /See:/ 'newInAppProduct' smart constructor.
data InAppProduct = InAppProduct
  { -- | Default language of the localized data, as defined by BCP-47. e.g. \"en-US\".
    defaultLanguage :: (Core.Maybe Core.Text),
    -- | Default price. Cannot be zero, as in-app products are never free. Always in the developer\'s Checkout merchant currency.
    defaultPrice :: (Core.Maybe Price),
    -- | Grace period of the subscription, specified in ISO 8601 format. Allows developers to give their subscribers a grace period when the payment for the new recurrence period is declined. Acceptable values are P0D (zero days), P3D (three days), P7D (seven days), P14D (14 days), and P30D (30 days).
    gracePeriod :: (Core.Maybe Core.Text),
    -- | List of localized title and description data. Map key is the language of the localized data, as defined by BCP-47, e.g. \"en-US\".
    listings :: (Core.Maybe InAppProduct_Listings),
    -- | Details about taxes and legal compliance. Only applicable to managed products.
    managedProductTaxesAndComplianceSettings :: (Core.Maybe ManagedProductTaxAndComplianceSettings),
    -- | Package name of the parent app.
    packageName :: (Core.Maybe Core.Text),
    -- | Prices per buyer region. None of these can be zero, as in-app products are never free. Map key is region code, as defined by ISO 3166-2.
    prices :: (Core.Maybe InAppProduct_Prices),
    -- | The type of the product, e.g. a recurring subscription.
    purchaseType :: (Core.Maybe InAppProduct_PurchaseType),
    -- | Stock-keeping-unit (SKU) of the product, unique within an app.
    sku :: (Core.Maybe Core.Text),
    -- | The status of the product, e.g. whether it\'s active.
    status :: (Core.Maybe InAppProduct_Status),
    -- | Subscription period, specified in ISO 8601 format. Acceptable values are P1W (one week), P1M (one month), P3M (three months), P6M (six months), and P1Y (one year).
    subscriptionPeriod :: (Core.Maybe Core.Text),
    -- | Details about taxes and legal compliance. Only applicable to subscription products.
    subscriptionTaxesAndComplianceSettings :: (Core.Maybe SubscriptionTaxAndComplianceSettings),
    -- | Trial period, specified in ISO 8601 format. Acceptable values are anything between P7D (seven days) and P999D (999 days).
    trialPeriod :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InAppProduct' with the minimum fields required to make a request.
newInAppProduct ::
  InAppProduct
newInAppProduct =
  InAppProduct
    { defaultLanguage = Core.Nothing,
      defaultPrice = Core.Nothing,
      gracePeriod = Core.Nothing,
      listings = Core.Nothing,
      managedProductTaxesAndComplianceSettings = Core.Nothing,
      packageName = Core.Nothing,
      prices = Core.Nothing,
      purchaseType = Core.Nothing,
      sku = Core.Nothing,
      status = Core.Nothing,
      subscriptionPeriod = Core.Nothing,
      subscriptionTaxesAndComplianceSettings = Core.Nothing,
      trialPeriod = Core.Nothing
    }

instance Core.FromJSON InAppProduct where
  parseJSON =
    Core.withObject
      "InAppProduct"
      ( \o ->
          InAppProduct
            Core.<$> (o Core..:? "defaultLanguage")
            Core.<*> (o Core..:? "defaultPrice")
            Core.<*> (o Core..:? "gracePeriod")
            Core.<*> (o Core..:? "listings")
            Core.<*> ( o
                         Core..:? "managedProductTaxesAndComplianceSettings"
                     )
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "prices")
            Core.<*> (o Core..:? "purchaseType")
            Core.<*> (o Core..:? "sku")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "subscriptionPeriod")
            Core.<*> (o Core..:? "subscriptionTaxesAndComplianceSettings")
            Core.<*> (o Core..:? "trialPeriod")
      )

instance Core.ToJSON InAppProduct where
  toJSON InAppProduct {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultLanguage" Core..=)
              Core.<$> defaultLanguage,
            ("defaultPrice" Core..=) Core.<$> defaultPrice,
            ("gracePeriod" Core..=) Core.<$> gracePeriod,
            ("listings" Core..=) Core.<$> listings,
            ("managedProductTaxesAndComplianceSettings" Core..=)
              Core.<$> managedProductTaxesAndComplianceSettings,
            ("packageName" Core..=) Core.<$> packageName,
            ("prices" Core..=) Core.<$> prices,
            ("purchaseType" Core..=) Core.<$> purchaseType,
            ("sku" Core..=) Core.<$> sku,
            ("status" Core..=) Core.<$> status,
            ("subscriptionPeriod" Core..=)
              Core.<$> subscriptionPeriod,
            ("subscriptionTaxesAndComplianceSettings" Core..=)
              Core.<$> subscriptionTaxesAndComplianceSettings,
            ("trialPeriod" Core..=) Core.<$> trialPeriod
          ]
      )

-- | List of localized title and description data. Map key is the language of the localized data, as defined by BCP-47, e.g. \"en-US\".
--
-- /See:/ 'newInAppProduct_Listings' smart constructor.
newtype InAppProduct_Listings = InAppProduct_Listings
  { -- |
    additional :: (Core.HashMap Core.Text InAppProductListing)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InAppProduct_Listings' with the minimum fields required to make a request.
newInAppProduct_Listings ::
  -- |  See 'additional'.
  Core.HashMap Core.Text InAppProductListing ->
  InAppProduct_Listings
newInAppProduct_Listings additional =
  InAppProduct_Listings {additional = additional}

instance Core.FromJSON InAppProduct_Listings where
  parseJSON =
    Core.withObject
      "InAppProduct_Listings"
      ( \o ->
          InAppProduct_Listings
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON InAppProduct_Listings where
  toJSON InAppProduct_Listings {..} =
    Core.toJSON additional

-- | Prices per buyer region. None of these can be zero, as in-app products are never free. Map key is region code, as defined by ISO 3166-2.
--
-- /See:/ 'newInAppProduct_Prices' smart constructor.
newtype InAppProduct_Prices = InAppProduct_Prices
  { -- |
    additional :: (Core.HashMap Core.Text Price)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InAppProduct_Prices' with the minimum fields required to make a request.
newInAppProduct_Prices ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Price ->
  InAppProduct_Prices
newInAppProduct_Prices additional =
  InAppProduct_Prices {additional = additional}

instance Core.FromJSON InAppProduct_Prices where
  parseJSON =
    Core.withObject
      "InAppProduct_Prices"
      ( \o ->
          InAppProduct_Prices
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON InAppProduct_Prices where
  toJSON InAppProduct_Prices {..} =
    Core.toJSON additional

-- | Store listing of a single in-app product.
--
-- /See:/ 'newInAppProductListing' smart constructor.
data InAppProductListing = InAppProductListing
  { -- | Localized entitlement benefits for a subscription.
    benefits :: (Core.Maybe [Core.Text]),
    -- | Description for the store listing.
    description :: (Core.Maybe Core.Text),
    -- | Title for the store listing.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InAppProductListing' with the minimum fields required to make a request.
newInAppProductListing ::
  InAppProductListing
newInAppProductListing =
  InAppProductListing
    { benefits = Core.Nothing,
      description = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON InAppProductListing where
  parseJSON =
    Core.withObject
      "InAppProductListing"
      ( \o ->
          InAppProductListing
            Core.<$> (o Core..:? "benefits")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON InAppProductListing where
  toJSON InAppProductListing {..} =
    Core.object
      ( Core.catMaybes
          [ ("benefits" Core..=) Core.<$> benefits,
            ("description" Core..=) Core.<$> description,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | Response listing all in-app products.
--
-- /See:/ 'newInappproductsListResponse' smart constructor.
data InappproductsListResponse = InappproductsListResponse
  { -- | All in-app products.
    inappproduct :: (Core.Maybe [InAppProduct]),
    -- | The kind of this response (\"androidpublisher#inappproductsListResponse\").
    kind :: (Core.Maybe Core.Text),
    -- | Deprecated and unset.
    pageInfo :: (Core.Maybe PageInfo),
    -- | Pagination token, to handle a number of products that is over one page.
    tokenPagination :: (Core.Maybe TokenPagination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InappproductsListResponse' with the minimum fields required to make a request.
newInappproductsListResponse ::
  InappproductsListResponse
newInappproductsListResponse =
  InappproductsListResponse
    { inappproduct = Core.Nothing,
      kind = Core.Nothing,
      pageInfo = Core.Nothing,
      tokenPagination = Core.Nothing
    }

instance Core.FromJSON InappproductsListResponse where
  parseJSON =
    Core.withObject
      "InappproductsListResponse"
      ( \o ->
          InappproductsListResponse
            Core.<$> (o Core..:? "inappproduct")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "tokenPagination")
      )

instance Core.ToJSON InappproductsListResponse where
  toJSON InappproductsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("inappproduct" Core..=) Core.<$> inappproduct,
            ("kind" Core..=) Core.<$> kind,
            ("pageInfo" Core..=) Core.<$> pageInfo,
            ("tokenPagination" Core..=)
              Core.<$> tokenPagination
          ]
      )

-- | An artifact resource which gets created when uploading an APK or Android App Bundle through internal app sharing.
--
-- /See:/ 'newInternalAppSharingArtifact' smart constructor.
data InternalAppSharingArtifact = InternalAppSharingArtifact
  { -- | The sha256 fingerprint of the certificate used to sign the generated artifact.
    certificateFingerprint :: (Core.Maybe Core.Text),
    -- | The download URL generated for the uploaded artifact. Users that are authorized to download can follow the link to the Play Store app to install it.
    downloadUrl :: (Core.Maybe Core.Text),
    -- | The sha256 hash of the artifact represented as a lowercase hexadecimal number, matching the output of the sha256sum command.
    sha256 :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InternalAppSharingArtifact' with the minimum fields required to make a request.
newInternalAppSharingArtifact ::
  InternalAppSharingArtifact
newInternalAppSharingArtifact =
  InternalAppSharingArtifact
    { certificateFingerprint = Core.Nothing,
      downloadUrl = Core.Nothing,
      sha256 = Core.Nothing
    }

instance Core.FromJSON InternalAppSharingArtifact where
  parseJSON =
    Core.withObject
      "InternalAppSharingArtifact"
      ( \o ->
          InternalAppSharingArtifact
            Core.<$> (o Core..:? "certificateFingerprint")
            Core.<*> (o Core..:? "downloadUrl")
            Core.<*> (o Core..:? "sha256")
      )

instance Core.ToJSON InternalAppSharingArtifact where
  toJSON InternalAppSharingArtifact {..} =
    Core.object
      ( Core.catMaybes
          [ ("certificateFingerprint" Core..=)
              Core.<$> certificateFingerprint,
            ("downloadUrl" Core..=) Core.<$> downloadUrl,
            ("sha256" Core..=) Core.<$> sha256
          ]
      )

-- | Contains the introductory price information for a subscription.
--
-- /See:/ 'newIntroductoryPriceInfo' smart constructor.
data IntroductoryPriceInfo = IntroductoryPriceInfo
  { -- | Introductory price of the subscription, not including tax. The currency is the same as price/currency/code. Price is expressed in micro-units, where 1,000,000 micro-units represents one unit of the currency. For example, if the subscription price is €1.99, price/amount/micros is 1990000.
    introductoryPriceAmountMicros :: (Core.Maybe Core.Int64),
    -- | ISO 4217 currency code for the introductory subscription price. For example, if the price is specified in British pounds sterling, price/currency/code is \"GBP\".
    introductoryPriceCurrencyCode :: (Core.Maybe Core.Text),
    -- | The number of billing period to offer introductory pricing.
    introductoryPriceCycles :: (Core.Maybe Core.Int32),
    -- | Introductory price period, specified in ISO 8601 format. Common values are (but not limited to) \"P1W\" (one week), \"P1M\" (one month), \"P3M\" (three months), \"P6M\" (six months), and \"P1Y\" (one year).
    introductoryPricePeriod :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntroductoryPriceInfo' with the minimum fields required to make a request.
newIntroductoryPriceInfo ::
  IntroductoryPriceInfo
newIntroductoryPriceInfo =
  IntroductoryPriceInfo
    { introductoryPriceAmountMicros = Core.Nothing,
      introductoryPriceCurrencyCode = Core.Nothing,
      introductoryPriceCycles = Core.Nothing,
      introductoryPricePeriod = Core.Nothing
    }

instance Core.FromJSON IntroductoryPriceInfo where
  parseJSON =
    Core.withObject
      "IntroductoryPriceInfo"
      ( \o ->
          IntroductoryPriceInfo
            Core.<$> ( o Core..:? "introductoryPriceAmountMicros"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "introductoryPriceCurrencyCode")
            Core.<*> (o Core..:? "introductoryPriceCycles")
            Core.<*> (o Core..:? "introductoryPricePeriod")
      )

instance Core.ToJSON IntroductoryPriceInfo where
  toJSON IntroductoryPriceInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("introductoryPriceAmountMicros" Core..=)
              Core.. Core.AsText
              Core.<$> introductoryPriceAmountMicros,
            ("introductoryPriceCurrencyCode" Core..=)
              Core.<$> introductoryPriceCurrencyCode,
            ("introductoryPriceCycles" Core..=)
              Core.<$> introductoryPriceCycles,
            ("introductoryPricePeriod" Core..=)
              Core.<$> introductoryPricePeriod
          ]
      )

-- | Response listing existing device tier configs.
--
-- /See:/ 'newListDeviceTierConfigsResponse' smart constructor.
data ListDeviceTierConfigsResponse = ListDeviceTierConfigsResponse
  { -- | Device tier configs created by the developer.
    deviceTierConfigs :: (Core.Maybe [DeviceTierConfig]),
    -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDeviceTierConfigsResponse' with the minimum fields required to make a request.
newListDeviceTierConfigsResponse ::
  ListDeviceTierConfigsResponse
newListDeviceTierConfigsResponse =
  ListDeviceTierConfigsResponse
    { deviceTierConfigs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListDeviceTierConfigsResponse where
  parseJSON =
    Core.withObject
      "ListDeviceTierConfigsResponse"
      ( \o ->
          ListDeviceTierConfigsResponse
            Core.<$> (o Core..:? "deviceTierConfigs")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListDeviceTierConfigsResponse where
  toJSON ListDeviceTierConfigsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceTierConfigs" Core..=)
              Core.<$> deviceTierConfigs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for ListSubscriptionOffers.
--
-- /See:/ 'newListSubscriptionOffersResponse' smart constructor.
data ListSubscriptionOffersResponse = ListSubscriptionOffersResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The subscription offers from the specified subscription.
    subscriptionOffers :: (Core.Maybe [SubscriptionOffer])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSubscriptionOffersResponse' with the minimum fields required to make a request.
newListSubscriptionOffersResponse ::
  ListSubscriptionOffersResponse
newListSubscriptionOffersResponse =
  ListSubscriptionOffersResponse
    { nextPageToken = Core.Nothing,
      subscriptionOffers = Core.Nothing
    }

instance Core.FromJSON ListSubscriptionOffersResponse where
  parseJSON =
    Core.withObject
      "ListSubscriptionOffersResponse"
      ( \o ->
          ListSubscriptionOffersResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "subscriptionOffers")
      )

instance Core.ToJSON ListSubscriptionOffersResponse where
  toJSON ListSubscriptionOffersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("subscriptionOffers" Core..=)
              Core.<$> subscriptionOffers
          ]
      )

-- | Response message for ListSubscriptions.
--
-- /See:/ 'newListSubscriptionsResponse' smart constructor.
data ListSubscriptionsResponse = ListSubscriptionsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The subscriptions from the specified app.
    subscriptions :: (Core.Maybe [Subscription])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSubscriptionsResponse' with the minimum fields required to make a request.
newListSubscriptionsResponse ::
  ListSubscriptionsResponse
newListSubscriptionsResponse =
  ListSubscriptionsResponse
    { nextPageToken = Core.Nothing,
      subscriptions = Core.Nothing
    }

instance Core.FromJSON ListSubscriptionsResponse where
  parseJSON =
    Core.withObject
      "ListSubscriptionsResponse"
      ( \o ->
          ListSubscriptionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "subscriptions")
      )

instance Core.ToJSON ListSubscriptionsResponse where
  toJSON ListSubscriptionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("subscriptions" Core..=) Core.<$> subscriptions
          ]
      )

-- | A response containing one or more users with access to an account.
--
-- /See:/ 'newListUsersResponse' smart constructor.
data ListUsersResponse = ListUsersResponse
  { -- | A token to pass to subsequent calls in order to retrieve subsequent results. This will not be set if there are no more results to return.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The resulting users.
    users :: (Core.Maybe [User])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUsersResponse' with the minimum fields required to make a request.
newListUsersResponse ::
  ListUsersResponse
newListUsersResponse =
  ListUsersResponse {nextPageToken = Core.Nothing, users = Core.Nothing}

instance Core.FromJSON ListUsersResponse where
  parseJSON =
    Core.withObject
      "ListUsersResponse"
      ( \o ->
          ListUsersResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "users")
      )

instance Core.ToJSON ListUsersResponse where
  toJSON ListUsersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("users" Core..=) Core.<$> users
          ]
      )

-- | A localized store listing. The resource for ListingsService.
--
-- /See:/ 'newListing' smart constructor.
data Listing = Listing
  { -- | Full description of the app.
    fullDescription :: (Core.Maybe Core.Text),
    -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
    language :: (Core.Maybe Core.Text),
    -- | Short description of the app.
    shortDescription :: (Core.Maybe Core.Text),
    -- | Localized title of the app.
    title :: (Core.Maybe Core.Text),
    -- | URL of a promotional YouTube video for the app.
    video :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Listing' with the minimum fields required to make a request.
newListing ::
  Listing
newListing =
  Listing
    { fullDescription = Core.Nothing,
      language = Core.Nothing,
      shortDescription = Core.Nothing,
      title = Core.Nothing,
      video = Core.Nothing
    }

instance Core.FromJSON Listing where
  parseJSON =
    Core.withObject
      "Listing"
      ( \o ->
          Listing
            Core.<$> (o Core..:? "fullDescription")
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "shortDescription")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "video")
      )

instance Core.ToJSON Listing where
  toJSON Listing {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullDescription" Core..=)
              Core.<$> fullDescription,
            ("language" Core..=) Core.<$> language,
            ("shortDescription" Core..=)
              Core.<$> shortDescription,
            ("title" Core..=) Core.<$> title,
            ("video" Core..=) Core.<$> video
          ]
      )

-- | Response listing all localized listings.
--
-- /See:/ 'newListingsListResponse' smart constructor.
data ListingsListResponse = ListingsListResponse
  { -- | The kind of this response (\"androidpublisher#listingsListResponse\").
    kind :: (Core.Maybe Core.Text),
    -- | All localized listings.
    listings :: (Core.Maybe [Listing])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListingsListResponse' with the minimum fields required to make a request.
newListingsListResponse ::
  ListingsListResponse
newListingsListResponse =
  ListingsListResponse {kind = Core.Nothing, listings = Core.Nothing}

instance Core.FromJSON ListingsListResponse where
  parseJSON =
    Core.withObject
      "ListingsListResponse"
      ( \o ->
          ListingsListResponse
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "listings")
      )

instance Core.ToJSON ListingsListResponse where
  toJSON ListingsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("listings" Core..=) Core.<$> listings
          ]
      )

-- | Localized text in given language.
--
-- /See:/ 'newLocalizedText' smart constructor.
data LocalizedText = LocalizedText
  { -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
    language :: (Core.Maybe Core.Text),
    -- | The text in the given language.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedText' with the minimum fields required to make a request.
newLocalizedText ::
  LocalizedText
newLocalizedText = LocalizedText {language = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON LocalizedText where
  parseJSON =
    Core.withObject
      "LocalizedText"
      ( \o ->
          LocalizedText
            Core.<$> (o Core..:? "language") Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON LocalizedText where
  toJSON LocalizedText {..} =
    Core.object
      ( Core.catMaybes
          [ ("language" Core..=) Core.<$> language,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | Details about taxation and legal compliance for managed products.
--
-- /See:/ 'newManagedProductTaxAndComplianceSettings' smart constructor.
data ManagedProductTaxAndComplianceSettings = ManagedProductTaxAndComplianceSettings
  { -- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
    eeaWithdrawalRightType ::
      ( Core.Maybe
          ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
      ),
    -- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
    taxRateInfoByRegionCode ::
      ( Core.Maybe
          ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedProductTaxAndComplianceSettings' with the minimum fields required to make a request.
newManagedProductTaxAndComplianceSettings ::
  ManagedProductTaxAndComplianceSettings
newManagedProductTaxAndComplianceSettings =
  ManagedProductTaxAndComplianceSettings
    { eeaWithdrawalRightType = Core.Nothing,
      taxRateInfoByRegionCode = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedProductTaxAndComplianceSettings
  where
  parseJSON =
    Core.withObject
      "ManagedProductTaxAndComplianceSettings"
      ( \o ->
          ManagedProductTaxAndComplianceSettings
            Core.<$> (o Core..:? "eeaWithdrawalRightType")
            Core.<*> (o Core..:? "taxRateInfoByRegionCode")
      )

instance
  Core.ToJSON
    ManagedProductTaxAndComplianceSettings
  where
  toJSON ManagedProductTaxAndComplianceSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("eeaWithdrawalRightType" Core..=)
              Core.<$> eeaWithdrawalRightType,
            ("taxRateInfoByRegionCode" Core..=)
              Core.<$> taxRateInfoByRegionCode
          ]
      )

-- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
--
-- /See:/ 'newManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode' smart constructor.
newtype ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode = ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
  { -- |
    additional :: (Core.HashMap Core.Text RegionalTaxRateInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode' with the minimum fields required to make a request.
newManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode ::
  -- |  See 'additional'.
  Core.HashMap Core.Text RegionalTaxRateInfo ->
  ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
newManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode additional =
  ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
    { additional = additional
    }

instance
  Core.FromJSON
    ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
  where
  parseJSON =
    Core.withObject
      "ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode"
      ( \o ->
          ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
  where
  toJSON
    ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode {..} =
      Core.toJSON additional

-- | Request message for MigrateBasePlanPrices.
--
-- /See:/ 'newMigrateBasePlanPricesRequest' smart constructor.
data MigrateBasePlanPricesRequest = MigrateBasePlanPricesRequest
  { -- | Required. The regional prices to update.
    regionalPriceMigrations :: (Core.Maybe [RegionalPriceMigrationConfig]),
    -- | Required. The version of the available regions being used for the regional/price/migrations.
    regionsVersion :: (Core.Maybe RegionsVersion)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MigrateBasePlanPricesRequest' with the minimum fields required to make a request.
newMigrateBasePlanPricesRequest ::
  MigrateBasePlanPricesRequest
newMigrateBasePlanPricesRequest =
  MigrateBasePlanPricesRequest
    { regionalPriceMigrations = Core.Nothing,
      regionsVersion = Core.Nothing
    }

instance Core.FromJSON MigrateBasePlanPricesRequest where
  parseJSON =
    Core.withObject
      "MigrateBasePlanPricesRequest"
      ( \o ->
          MigrateBasePlanPricesRequest
            Core.<$> (o Core..:? "regionalPriceMigrations")
            Core.<*> (o Core..:? "regionsVersion")
      )

instance Core.ToJSON MigrateBasePlanPricesRequest where
  toJSON MigrateBasePlanPricesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("regionalPriceMigrations" Core..=)
              Core.<$> regionalPriceMigrations,
            ("regionsVersion" Core..=) Core.<$> regionsVersion
          ]
      )

-- | Response message for MigrateBasePlanPrices.
--
-- /See:/ 'newMigrateBasePlanPricesResponse' smart constructor.
data MigrateBasePlanPricesResponse = MigrateBasePlanPricesResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MigrateBasePlanPricesResponse' with the minimum fields required to make a request.
newMigrateBasePlanPricesResponse ::
  MigrateBasePlanPricesResponse
newMigrateBasePlanPricesResponse = MigrateBasePlanPricesResponse

instance Core.FromJSON MigrateBasePlanPricesResponse where
  parseJSON =
    Core.withObject
      "MigrateBasePlanPricesResponse"
      (\o -> Core.pure MigrateBasePlanPricesResponse)

instance Core.ToJSON MigrateBasePlanPricesResponse where
  toJSON = Core.const Core.emptyObject

-- | Represents an amount of money with its currency type.
--
-- /See:/ 'newMoney' smart constructor.
data Money = Money
  { -- | The three-letter currency code defined in ISO 4217.
    currencyCode :: (Core.Maybe Core.Text),
    -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    nanos :: (Core.Maybe Core.Int32),
    -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    units :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Money' with the minimum fields required to make a request.
newMoney ::
  Money
newMoney =
  Money
    { currencyCode = Core.Nothing,
      nanos = Core.Nothing,
      units = Core.Nothing
    }

instance Core.FromJSON Money where
  parseJSON =
    Core.withObject
      "Money"
      ( \o ->
          Money
            Core.<$> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "nanos")
            Core.<*> ( o Core..:? "units"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Money where
  toJSON Money {..} =
    Core.object
      ( Core.catMaybes
          [ ("currencyCode" Core..=) Core.<$> currencyCode,
            ("nanos" Core..=) Core.<$> nanos,
            ("units" Core..=) Core.. Core.AsText Core.<$> units
          ]
      )

-- | Offer details information related to a purchase line item.
--
-- /See:/ 'newOfferDetails' smart constructor.
data OfferDetails = OfferDetails
  { -- | The base plan ID. Present for all base plan and offers.
    basePlanId :: (Core.Maybe Core.Text),
    -- | The offer ID. Only present for discounted offers.
    offerId :: (Core.Maybe Core.Text),
    -- | The latest offer tags associated with the offer. It includes tags inherited from the base plan.
    offerTags :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OfferDetails' with the minimum fields required to make a request.
newOfferDetails ::
  OfferDetails
newOfferDetails =
  OfferDetails
    { basePlanId = Core.Nothing,
      offerId = Core.Nothing,
      offerTags = Core.Nothing
    }

instance Core.FromJSON OfferDetails where
  parseJSON =
    Core.withObject
      "OfferDetails"
      ( \o ->
          OfferDetails
            Core.<$> (o Core..:? "basePlanId")
            Core.<*> (o Core..:? "offerId")
            Core.<*> (o Core..:? "offerTags")
      )

instance Core.ToJSON OfferDetails where
  toJSON OfferDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("basePlanId" Core..=) Core.<$> basePlanId,
            ("offerId" Core..=) Core.<$> offerId,
            ("offerTags" Core..=) Core.<$> offerTags
          ]
      )

-- | Represents a custom tag specified for base plans and subscription offers.
--
-- /See:/ 'newOfferTag' smart constructor.
newtype OfferTag = OfferTag
  { -- | Must conform with RFC-1034. That is, this string can only contain lower-case letters (a-z), numbers (0-9), and hyphens (-), and be at most 20 characters.
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OfferTag' with the minimum fields required to make a request.
newOfferTag ::
  OfferTag
newOfferTag = OfferTag {tag = Core.Nothing}

instance Core.FromJSON OfferTag where
  parseJSON =
    Core.withObject
      "OfferTag"
      (\o -> OfferTag Core.<$> (o Core..:? "tag"))

instance Core.ToJSON OfferTag where
  toJSON OfferTag {..} =
    Core.object
      (Core.catMaybes [("tag" Core..=) Core.<$> tag])

-- | Pricing information for any new locations Play may launch in.
--
-- /See:/ 'newOtherRegionsBasePlanConfig' smart constructor.
data OtherRegionsBasePlanConfig = OtherRegionsBasePlanConfig
  { -- | Required. Price in EUR to use for any new locations Play may launch in.
    eurPrice :: (Core.Maybe Money),
    -- | Whether the base plan is available for new subscribers in any new locations Play may launch in. If not specified, this will default to false.
    newSubscriberAvailability' :: (Core.Maybe Core.Bool),
    -- | Required. Price in USD to use for any new locations Play may launch in.
    usdPrice :: (Core.Maybe Money)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OtherRegionsBasePlanConfig' with the minimum fields required to make a request.
newOtherRegionsBasePlanConfig ::
  OtherRegionsBasePlanConfig
newOtherRegionsBasePlanConfig =
  OtherRegionsBasePlanConfig
    { eurPrice = Core.Nothing,
      newSubscriberAvailability' = Core.Nothing,
      usdPrice = Core.Nothing
    }

instance Core.FromJSON OtherRegionsBasePlanConfig where
  parseJSON =
    Core.withObject
      "OtherRegionsBasePlanConfig"
      ( \o ->
          OtherRegionsBasePlanConfig
            Core.<$> (o Core..:? "eurPrice")
            Core.<*> (o Core..:? "newSubscriberAvailability")
            Core.<*> (o Core..:? "usdPrice")
      )

instance Core.ToJSON OtherRegionsBasePlanConfig where
  toJSON OtherRegionsBasePlanConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("eurPrice" Core..=) Core.<$> eurPrice,
            ("newSubscriberAvailability" Core..=)
              Core.<$> newSubscriberAvailability',
            ("usdPrice" Core..=) Core.<$> usdPrice
          ]
      )

-- | Configuration for any new locations Play may launch in specified on a subscription offer.
--
-- /See:/ 'newOtherRegionsSubscriptionOfferConfig' smart constructor.
newtype OtherRegionsSubscriptionOfferConfig = OtherRegionsSubscriptionOfferConfig
  { -- | Whether the subscription offer in any new locations Play may launch in the future. If not specified, this will default to false.
    otherRegionsNewSubscriberAvailability :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OtherRegionsSubscriptionOfferConfig' with the minimum fields required to make a request.
newOtherRegionsSubscriptionOfferConfig ::
  OtherRegionsSubscriptionOfferConfig
newOtherRegionsSubscriptionOfferConfig =
  OtherRegionsSubscriptionOfferConfig
    { otherRegionsNewSubscriberAvailability = Core.Nothing
    }

instance
  Core.FromJSON
    OtherRegionsSubscriptionOfferConfig
  where
  parseJSON =
    Core.withObject
      "OtherRegionsSubscriptionOfferConfig"
      ( \o ->
          OtherRegionsSubscriptionOfferConfig
            Core.<$> (o Core..:? "otherRegionsNewSubscriberAvailability")
      )

instance
  Core.ToJSON
    OtherRegionsSubscriptionOfferConfig
  where
  toJSON OtherRegionsSubscriptionOfferConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("otherRegionsNewSubscriberAvailability" Core..=)
              Core.<$> otherRegionsNewSubscriberAvailability
          ]
      )

-- | Configuration for any new locations Play may launch in for a single offer phase.
--
-- /See:/ 'newOtherRegionsSubscriptionOfferPhaseConfig' smart constructor.
data OtherRegionsSubscriptionOfferPhaseConfig = OtherRegionsSubscriptionOfferPhaseConfig
  { -- | The absolute amount of money subtracted from the base plan price prorated over the phase duration that the user pays for this offer phase. For example, if the base plan price for this region is $12 for a period of 1 year, then a $1 absolute discount for a phase of a duration of 3 months would correspond to a price of $2. The resulting price may not be smaller than the minimum price allowed for any new locations Play may launch in.
    absoluteDiscounts :: (Core.Maybe OtherRegionsSubscriptionOfferPhasePrices),
    -- | The absolute price the user pays for this offer phase. The price must not be smaller than the minimum price allowed for any new locations Play may launch in.
    otherRegionsPrices :: (Core.Maybe OtherRegionsSubscriptionOfferPhasePrices),
    -- | The fraction of the base plan price prorated over the phase duration that the user pays for this offer phase. For example, if the base plan price for this region is $12 for a period of 1 year, then a 50% discount for a phase of a duration of 3 months would correspond to a price of $1.50. The discount must be specified as a fraction strictly larger than 0 and strictly smaller than 1. The resulting price will be rounded to the nearest billable unit (e.g. cents for USD). The relative discount is considered invalid if the discounted price ends up being smaller than the minimum price allowed in any new locations Play may launch in.
    relativeDiscount :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OtherRegionsSubscriptionOfferPhaseConfig' with the minimum fields required to make a request.
newOtherRegionsSubscriptionOfferPhaseConfig ::
  OtherRegionsSubscriptionOfferPhaseConfig
newOtherRegionsSubscriptionOfferPhaseConfig =
  OtherRegionsSubscriptionOfferPhaseConfig
    { absoluteDiscounts = Core.Nothing,
      otherRegionsPrices = Core.Nothing,
      relativeDiscount = Core.Nothing
    }

instance
  Core.FromJSON
    OtherRegionsSubscriptionOfferPhaseConfig
  where
  parseJSON =
    Core.withObject
      "OtherRegionsSubscriptionOfferPhaseConfig"
      ( \o ->
          OtherRegionsSubscriptionOfferPhaseConfig
            Core.<$> (o Core..:? "absoluteDiscounts")
            Core.<*> (o Core..:? "otherRegionsPrices")
            Core.<*> (o Core..:? "relativeDiscount")
      )

instance
  Core.ToJSON
    OtherRegionsSubscriptionOfferPhaseConfig
  where
  toJSON OtherRegionsSubscriptionOfferPhaseConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("absoluteDiscounts" Core..=)
              Core.<$> absoluteDiscounts,
            ("otherRegionsPrices" Core..=)
              Core.<$> otherRegionsPrices,
            ("relativeDiscount" Core..=)
              Core.<$> relativeDiscount
          ]
      )

-- | Pricing information for any new locations Play may launch in.
--
-- /See:/ 'newOtherRegionsSubscriptionOfferPhasePrices' smart constructor.
data OtherRegionsSubscriptionOfferPhasePrices = OtherRegionsSubscriptionOfferPhasePrices
  { -- | Required. Price in EUR to use for any new locations Play may launch in.
    eurPrice :: (Core.Maybe Money),
    -- | Required. Price in USD to use for any new locations Play may launch in.
    usdPrice :: (Core.Maybe Money)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OtherRegionsSubscriptionOfferPhasePrices' with the minimum fields required to make a request.
newOtherRegionsSubscriptionOfferPhasePrices ::
  OtherRegionsSubscriptionOfferPhasePrices
newOtherRegionsSubscriptionOfferPhasePrices =
  OtherRegionsSubscriptionOfferPhasePrices
    { eurPrice = Core.Nothing,
      usdPrice = Core.Nothing
    }

instance
  Core.FromJSON
    OtherRegionsSubscriptionOfferPhasePrices
  where
  parseJSON =
    Core.withObject
      "OtherRegionsSubscriptionOfferPhasePrices"
      ( \o ->
          OtherRegionsSubscriptionOfferPhasePrices
            Core.<$> (o Core..:? "eurPrice")
            Core.<*> (o Core..:? "usdPrice")
      )

instance
  Core.ToJSON
    OtherRegionsSubscriptionOfferPhasePrices
  where
  toJSON OtherRegionsSubscriptionOfferPhasePrices {..} =
    Core.object
      ( Core.catMaybes
          [ ("eurPrice" Core..=) Core.<$> eurPrice,
            ("usdPrice" Core..=) Core.<$> usdPrice
          ]
      )

-- | Information about the current page. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned.
--
-- /See:/ 'newPageInfo' smart constructor.
data PageInfo = PageInfo
  { -- | Maximum number of results returned in one page. ! The number of results included in the API response.
    resultPerPage :: (Core.Maybe Core.Int32),
    -- | Index of the first result returned in the current page.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Total number of results available on the backend ! The total number of results in the result set.
    totalResults :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageInfo' with the minimum fields required to make a request.
newPageInfo ::
  PageInfo
newPageInfo =
  PageInfo
    { resultPerPage = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON PageInfo where
  parseJSON =
    Core.withObject
      "PageInfo"
      ( \o ->
          PageInfo
            Core.<$> (o Core..:? "resultPerPage")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON PageInfo where
  toJSON PageInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("resultPerPage" Core..=) Core.<$> resultPerPage,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

-- | Information specific to a subscription in paused state.
--
-- /See:/ 'newPausedStateContext' smart constructor.
newtype PausedStateContext = PausedStateContext
  { -- | Time at which the subscription will be automatically resumed.
    autoResumeTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PausedStateContext' with the minimum fields required to make a request.
newPausedStateContext ::
  PausedStateContext
newPausedStateContext = PausedStateContext {autoResumeTime = Core.Nothing}

instance Core.FromJSON PausedStateContext where
  parseJSON =
    Core.withObject
      "PausedStateContext"
      ( \o ->
          PausedStateContext
            Core.<$> (o Core..:? "autoResumeTime")
      )

instance Core.ToJSON PausedStateContext where
  toJSON PausedStateContext {..} =
    Core.object
      ( Core.catMaybes
          [("autoResumeTime" Core..=) Core.<$> autoResumeTime]
      )

-- | Represents a base plan that does not automatically renew at the end of the base plan, and must be manually renewed by the user.
--
-- /See:/ 'newPrepaidBasePlanType' smart constructor.
data PrepaidBasePlanType = PrepaidBasePlanType
  { -- | Required. Subscription period, specified in ISO 8601 format. For a list of acceptable billing periods, refer to the help center.
    billingPeriodDuration :: (Core.Maybe Core.Text),
    -- | Whether users should be able to extend this prepaid base plan in Google Play surfaces. Defaults to TIME/EXTENSION/ACTIVE if not specified.
    timeExtension :: (Core.Maybe PrepaidBasePlanType_TimeExtension)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrepaidBasePlanType' with the minimum fields required to make a request.
newPrepaidBasePlanType ::
  PrepaidBasePlanType
newPrepaidBasePlanType =
  PrepaidBasePlanType
    { billingPeriodDuration = Core.Nothing,
      timeExtension = Core.Nothing
    }

instance Core.FromJSON PrepaidBasePlanType where
  parseJSON =
    Core.withObject
      "PrepaidBasePlanType"
      ( \o ->
          PrepaidBasePlanType
            Core.<$> (o Core..:? "billingPeriodDuration")
            Core.<*> (o Core..:? "timeExtension")
      )

instance Core.ToJSON PrepaidBasePlanType where
  toJSON PrepaidBasePlanType {..} =
    Core.object
      ( Core.catMaybes
          [ ("billingPeriodDuration" Core..=)
              Core.<$> billingPeriodDuration,
            ("timeExtension" Core..=) Core.<$> timeExtension
          ]
      )

-- | Information related to a prepaid plan.
--
-- /See:/ 'newPrepaidPlan' smart constructor.
newtype PrepaidPlan = PrepaidPlan
  { -- | If present, this is the time after which top up purchases are allowed for the prepaid plan. Will not be present for expired prepaid plans.
    allowExtendAfterTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrepaidPlan' with the minimum fields required to make a request.
newPrepaidPlan ::
  PrepaidPlan
newPrepaidPlan = PrepaidPlan {allowExtendAfterTime = Core.Nothing}

instance Core.FromJSON PrepaidPlan where
  parseJSON =
    Core.withObject
      "PrepaidPlan"
      ( \o ->
          PrepaidPlan
            Core.<$> (o Core..:? "allowExtendAfterTime")
      )

instance Core.ToJSON PrepaidPlan where
  toJSON PrepaidPlan {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowExtendAfterTime" Core..=)
              Core.<$> allowExtendAfterTime
          ]
      )

-- | Definition of a price, i.e. currency and units.
--
-- /See:/ 'newPrice' smart constructor.
data Price = Price
  { -- | 3 letter Currency code, as defined by ISO 4217. See java\/com\/google\/common\/money\/CurrencyCode.java
    currency :: (Core.Maybe Core.Text),
    -- | Price in 1\/million of the currency base unit, represented as a string.
    priceMicros :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
newPrice ::
  Price
newPrice = Price {currency = Core.Nothing, priceMicros = Core.Nothing}

instance Core.FromJSON Price where
  parseJSON =
    Core.withObject
      "Price"
      ( \o ->
          Price
            Core.<$> (o Core..:? "currency")
            Core.<*> (o Core..:? "priceMicros")
      )

instance Core.ToJSON Price where
  toJSON Price {..} =
    Core.object
      ( Core.catMaybes
          [ ("currency" Core..=) Core.<$> currency,
            ("priceMicros" Core..=) Core.<$> priceMicros
          ]
      )

-- | A ProductPurchase resource indicates the status of a user\'s inapp product purchase.
--
-- /See:/ 'newProductPurchase' smart constructor.
data ProductPurchase = ProductPurchase
  { -- | The acknowledgement state of the inapp product. Possible values are: 0. Yet to be acknowledged 1. Acknowledged
    acknowledgementState :: (Core.Maybe Core.Int32),
    -- | The consumption state of the inapp product. Possible values are: 0. Yet to be consumed 1. Consumed
    consumptionState :: (Core.Maybe Core.Int32),
    -- | A developer-specified string that contains supplemental information about an order.
    developerPayload :: (Core.Maybe Core.Text),
    -- | This kind represents an inappPurchase object in the androidpublisher service.
    kind :: (Core.Maybe Core.Text),
    -- | An obfuscated version of the id that is uniquely associated with the user\'s account in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.
    obfuscatedExternalAccountId :: (Core.Maybe Core.Text),
    -- | An obfuscated version of the id that is uniquely associated with the user\'s profile in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.
    obfuscatedExternalProfileId :: (Core.Maybe Core.Text),
    -- | The order id associated with the purchase of the inapp product.
    orderId :: (Core.Maybe Core.Text),
    -- | The inapp product SKU. May not be present.
    productId :: (Core.Maybe Core.Text),
    -- | The purchase state of the order. Possible values are: 0. Purchased 1. Canceled 2. Pending
    purchaseState :: (Core.Maybe Core.Int32),
    -- | The time the product was purchased, in milliseconds since the epoch (Jan 1, 1970).
    purchaseTimeMillis :: (Core.Maybe Core.Int64),
    -- | The purchase token generated to identify this purchase. May not be present.
    purchaseToken :: (Core.Maybe Core.Text),
    -- | The type of purchase of the inapp product. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e. purchased using a promo code) 2. Rewarded (i.e. from watching a video ad instead of paying)
    purchaseType :: (Core.Maybe Core.Int32),
    -- | The quantity associated with the purchase of the inapp product. If not present, the quantity is 1.
    quantity :: (Core.Maybe Core.Int32),
    -- | ISO 3166-1 alpha-2 billing region code of the user at the time the product was granted.
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductPurchase' with the minimum fields required to make a request.
newProductPurchase ::
  ProductPurchase
newProductPurchase =
  ProductPurchase
    { acknowledgementState = Core.Nothing,
      consumptionState = Core.Nothing,
      developerPayload = Core.Nothing,
      kind = Core.Nothing,
      obfuscatedExternalAccountId = Core.Nothing,
      obfuscatedExternalProfileId = Core.Nothing,
      orderId = Core.Nothing,
      productId = Core.Nothing,
      purchaseState = Core.Nothing,
      purchaseTimeMillis = Core.Nothing,
      purchaseToken = Core.Nothing,
      purchaseType = Core.Nothing,
      quantity = Core.Nothing,
      regionCode = Core.Nothing
    }

instance Core.FromJSON ProductPurchase where
  parseJSON =
    Core.withObject
      "ProductPurchase"
      ( \o ->
          ProductPurchase
            Core.<$> (o Core..:? "acknowledgementState")
            Core.<*> (o Core..:? "consumptionState")
            Core.<*> (o Core..:? "developerPayload")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "obfuscatedExternalAccountId")
            Core.<*> (o Core..:? "obfuscatedExternalProfileId")
            Core.<*> (o Core..:? "orderId")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "purchaseState")
            Core.<*> ( o Core..:? "purchaseTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "purchaseToken")
            Core.<*> (o Core..:? "purchaseType")
            Core.<*> (o Core..:? "quantity")
            Core.<*> (o Core..:? "regionCode")
      )

instance Core.ToJSON ProductPurchase where
  toJSON ProductPurchase {..} =
    Core.object
      ( Core.catMaybes
          [ ("acknowledgementState" Core..=)
              Core.<$> acknowledgementState,
            ("consumptionState" Core..=)
              Core.<$> consumptionState,
            ("developerPayload" Core..=)
              Core.<$> developerPayload,
            ("kind" Core..=) Core.<$> kind,
            ("obfuscatedExternalAccountId" Core..=)
              Core.<$> obfuscatedExternalAccountId,
            ("obfuscatedExternalProfileId" Core..=)
              Core.<$> obfuscatedExternalProfileId,
            ("orderId" Core..=) Core.<$> orderId,
            ("productId" Core..=) Core.<$> productId,
            ("purchaseState" Core..=) Core.<$> purchaseState,
            ("purchaseTimeMillis" Core..=) Core.. Core.AsText
              Core.<$> purchaseTimeMillis,
            ("purchaseToken" Core..=) Core.<$> purchaseToken,
            ("purchaseType" Core..=) Core.<$> purchaseType,
            ("quantity" Core..=) Core.<$> quantity,
            ("regionCode" Core..=) Core.<$> regionCode
          ]
      )

-- | Request for the product.purchases.acknowledge API.
--
-- /See:/ 'newProductPurchasesAcknowledgeRequest' smart constructor.
newtype ProductPurchasesAcknowledgeRequest = ProductPurchasesAcknowledgeRequest
  { -- | Payload to attach to the purchase.
    developerPayload :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductPurchasesAcknowledgeRequest' with the minimum fields required to make a request.
newProductPurchasesAcknowledgeRequest ::
  ProductPurchasesAcknowledgeRequest
newProductPurchasesAcknowledgeRequest =
  ProductPurchasesAcknowledgeRequest {developerPayload = Core.Nothing}

instance
  Core.FromJSON
    ProductPurchasesAcknowledgeRequest
  where
  parseJSON =
    Core.withObject
      "ProductPurchasesAcknowledgeRequest"
      ( \o ->
          ProductPurchasesAcknowledgeRequest
            Core.<$> (o Core..:? "developerPayload")
      )

instance
  Core.ToJSON
    ProductPurchasesAcknowledgeRequest
  where
  toJSON ProductPurchasesAcknowledgeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("developerPayload" Core..=)
              Core.<$> developerPayload
          ]
      )

-- | Configuration for a base plan specific to a region.
--
-- /See:/ 'newRegionalBasePlanConfig' smart constructor.
data RegionalBasePlanConfig = RegionalBasePlanConfig
  { -- | Whether the base plan in the specified region is available for new subscribers. Existing subscribers will not have their subscription canceled if this value is set to false. If not specified, this will default to false.
    newSubscriberAvailability' :: (Core.Maybe Core.Bool),
    -- | The price of the base plan in the specified region. Must be set if the base plan is available to new subscribers. Must be set in the currency that is linked to the specified region.
    price :: (Core.Maybe Money),
    -- | Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g. \"US\".
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalBasePlanConfig' with the minimum fields required to make a request.
newRegionalBasePlanConfig ::
  RegionalBasePlanConfig
newRegionalBasePlanConfig =
  RegionalBasePlanConfig
    { newSubscriberAvailability' = Core.Nothing,
      price = Core.Nothing,
      regionCode = Core.Nothing
    }

instance Core.FromJSON RegionalBasePlanConfig where
  parseJSON =
    Core.withObject
      "RegionalBasePlanConfig"
      ( \o ->
          RegionalBasePlanConfig
            Core.<$> (o Core..:? "newSubscriberAvailability")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "regionCode")
      )

instance Core.ToJSON RegionalBasePlanConfig where
  toJSON RegionalBasePlanConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("newSubscriberAvailability" Core..=)
              Core.<$> newSubscriberAvailability',
            ("price" Core..=) Core.<$> price,
            ("regionCode" Core..=) Core.<$> regionCode
          ]
      )

-- | Configuration for a price migration.
--
-- /See:/ 'newRegionalPriceMigrationConfig' smart constructor.
data RegionalPriceMigrationConfig = RegionalPriceMigrationConfig
  { -- | Required. The cutoff time for historical prices that subscribers can remain paying. Subscribers who are on a price that was created before this cutoff time will be migrated to the currently-offered price. These subscribers will receive a notification that they will be paying a different price. Subscribers who do not agree to the new price will have their subscription ended at the next renewal.
    oldestAllowedPriceVersionTime :: (Core.Maybe Core.DateTime),
    -- | Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g. \"US\".
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalPriceMigrationConfig' with the minimum fields required to make a request.
newRegionalPriceMigrationConfig ::
  RegionalPriceMigrationConfig
newRegionalPriceMigrationConfig =
  RegionalPriceMigrationConfig
    { oldestAllowedPriceVersionTime = Core.Nothing,
      regionCode = Core.Nothing
    }

instance Core.FromJSON RegionalPriceMigrationConfig where
  parseJSON =
    Core.withObject
      "RegionalPriceMigrationConfig"
      ( \o ->
          RegionalPriceMigrationConfig
            Core.<$> (o Core..:? "oldestAllowedPriceVersionTime")
            Core.<*> (o Core..:? "regionCode")
      )

instance Core.ToJSON RegionalPriceMigrationConfig where
  toJSON RegionalPriceMigrationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("oldestAllowedPriceVersionTime" Core..=)
              Core.<$> oldestAllowedPriceVersionTime,
            ("regionCode" Core..=) Core.<$> regionCode
          ]
      )

-- | Configuration for a subscription offer in a single region.
--
-- /See:/ 'newRegionalSubscriptionOfferConfig' smart constructor.
data RegionalSubscriptionOfferConfig = RegionalSubscriptionOfferConfig
  { -- | Whether the subscription offer in the specified region is available for new subscribers. Existing subscribers will not have their subscription cancelled if this value is set to false. If not specified, this will default to false.
    newSubscriberAvailability' :: (Core.Maybe Core.Bool),
    -- | Required. Immutable. Region code this configuration applies to, as defined by ISO 3166-2, e.g. \"US\".
    regionCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalSubscriptionOfferConfig' with the minimum fields required to make a request.
newRegionalSubscriptionOfferConfig ::
  RegionalSubscriptionOfferConfig
newRegionalSubscriptionOfferConfig =
  RegionalSubscriptionOfferConfig
    { newSubscriberAvailability' = Core.Nothing,
      regionCode = Core.Nothing
    }

instance
  Core.FromJSON
    RegionalSubscriptionOfferConfig
  where
  parseJSON =
    Core.withObject
      "RegionalSubscriptionOfferConfig"
      ( \o ->
          RegionalSubscriptionOfferConfig
            Core.<$> (o Core..:? "newSubscriberAvailability")
            Core.<*> (o Core..:? "regionCode")
      )

instance Core.ToJSON RegionalSubscriptionOfferConfig where
  toJSON RegionalSubscriptionOfferConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("newSubscriberAvailability" Core..=)
              Core.<$> newSubscriberAvailability',
            ("regionCode" Core..=) Core.<$> regionCode
          ]
      )

-- | Configuration for a single phase of a subscription offer in a single region.
--
-- /See:/ 'newRegionalSubscriptionOfferPhaseConfig' smart constructor.
data RegionalSubscriptionOfferPhaseConfig = RegionalSubscriptionOfferPhaseConfig
  { -- | The absolute amount of money subtracted from the base plan price prorated over the phase duration that the user pays for this offer phase. For example, if the base plan price for this region is $12 for a period of 1 year, then a $1 absolute discount for a phase of a duration of 3 months would correspond to a price of $2. The resulting price may not be smaller than the minimum price allowed for this region.
    absoluteDiscount :: (Core.Maybe Money),
    -- | The absolute price the user pays for this offer phase. The price must not be smaller than the minimum price allowed for this region.
    price :: (Core.Maybe Money),
    -- | Required. Immutable. The region to which this config applies.
    regionCode :: (Core.Maybe Core.Text),
    -- | The fraction of the base plan price prorated over the phase duration that the user pays for this offer phase. For example, if the base plan price for this region is $12 for a period of 1 year, then a 50% discount for a phase of a duration of 3 months would correspond to a price of $1.50. The discount must be specified as a fraction strictly larger than 0 and strictly smaller than 1. The resulting price will be rounded to the nearest billable unit (e.g. cents for USD). The relative discount is considered invalid if the discounted price ends up being smaller than the minimum price allowed in this region.
    relativeDiscount :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalSubscriptionOfferPhaseConfig' with the minimum fields required to make a request.
newRegionalSubscriptionOfferPhaseConfig ::
  RegionalSubscriptionOfferPhaseConfig
newRegionalSubscriptionOfferPhaseConfig =
  RegionalSubscriptionOfferPhaseConfig
    { absoluteDiscount = Core.Nothing,
      price = Core.Nothing,
      regionCode = Core.Nothing,
      relativeDiscount = Core.Nothing
    }

instance
  Core.FromJSON
    RegionalSubscriptionOfferPhaseConfig
  where
  parseJSON =
    Core.withObject
      "RegionalSubscriptionOfferPhaseConfig"
      ( \o ->
          RegionalSubscriptionOfferPhaseConfig
            Core.<$> (o Core..:? "absoluteDiscount")
            Core.<*> (o Core..:? "price")
            Core.<*> (o Core..:? "regionCode")
            Core.<*> (o Core..:? "relativeDiscount")
      )

instance
  Core.ToJSON
    RegionalSubscriptionOfferPhaseConfig
  where
  toJSON RegionalSubscriptionOfferPhaseConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("absoluteDiscount" Core..=)
              Core.<$> absoluteDiscount,
            ("price" Core..=) Core.<$> price,
            ("regionCode" Core..=) Core.<$> regionCode,
            ("relativeDiscount" Core..=)
              Core.<$> relativeDiscount
          ]
      )

-- | Specified details about taxation in a given geographical region.
--
-- /See:/ 'newRegionalTaxRateInfo' smart constructor.
data RegionalTaxRateInfo = RegionalTaxRateInfo
  { -- | You must tell us if your app contains streaming products to correctly charge US state and local sales tax. Field only supported in United States.
    eligibleForStreamingServiceTaxRate :: (Core.Maybe Core.Bool),
    -- | To collect communications or amusement taxes in the United States, choose the appropriate tax category. <https://support.google.com/googleplay/android-developer/answer/10463498#streaming_tax Learn more>.
    streamingTaxType :: (Core.Maybe RegionalTaxRateInfo_StreamingTaxType),
    -- | Tax tier to specify reduced tax rate. Developers who sell digital news, magazines, newspapers, books, or audiobooks in various regions may be eligible for reduced tax rates. <https://support.google.com/googleplay/android-developer/answer/10463498 Learn more>.
    taxTier :: (Core.Maybe RegionalTaxRateInfo_TaxTier)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionalTaxRateInfo' with the minimum fields required to make a request.
newRegionalTaxRateInfo ::
  RegionalTaxRateInfo
newRegionalTaxRateInfo =
  RegionalTaxRateInfo
    { eligibleForStreamingServiceTaxRate = Core.Nothing,
      streamingTaxType = Core.Nothing,
      taxTier = Core.Nothing
    }

instance Core.FromJSON RegionalTaxRateInfo where
  parseJSON =
    Core.withObject
      "RegionalTaxRateInfo"
      ( \o ->
          RegionalTaxRateInfo
            Core.<$> (o Core..:? "eligibleForStreamingServiceTaxRate")
            Core.<*> (o Core..:? "streamingTaxType")
            Core.<*> (o Core..:? "taxTier")
      )

instance Core.ToJSON RegionalTaxRateInfo where
  toJSON RegionalTaxRateInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("eligibleForStreamingServiceTaxRate" Core..=)
              Core.<$> eligibleForStreamingServiceTaxRate,
            ("streamingTaxType" Core..=)
              Core.<$> streamingTaxType,
            ("taxTier" Core..=) Core.<$> taxTier
          ]
      )

-- | The version of the available regions being used for the specified resource.
--
-- /See:/ 'newRegionsVersion' smart constructor.
newtype RegionsVersion = RegionsVersion
  { -- | Required. A string representing version of the available regions being used for the specified resource. The current version is 2022\/02.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegionsVersion' with the minimum fields required to make a request.
newRegionsVersion ::
  RegionsVersion
newRegionsVersion = RegionsVersion {version = Core.Nothing}

instance Core.FromJSON RegionsVersion where
  parseJSON =
    Core.withObject
      "RegionsVersion"
      ( \o ->
          RegionsVersion Core.<$> (o Core..:? "version")
      )

instance Core.ToJSON RegionsVersion where
  toJSON RegionsVersion {..} =
    Core.object
      ( Core.catMaybes
          [("version" Core..=) Core.<$> version]
      )

-- | Information specific to cancellations caused by subscription replacement.
--
-- /See:/ 'newReplacementCancellation' smart constructor.
data ReplacementCancellation = ReplacementCancellation
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplacementCancellation' with the minimum fields required to make a request.
newReplacementCancellation ::
  ReplacementCancellation
newReplacementCancellation = ReplacementCancellation

instance Core.FromJSON ReplacementCancellation where
  parseJSON =
    Core.withObject
      "ReplacementCancellation"
      (\o -> Core.pure ReplacementCancellation)

instance Core.ToJSON ReplacementCancellation where
  toJSON = Core.const Core.emptyObject

-- | An Android app review.
--
-- /See:/ 'newReview' smart constructor.
data Review = Review
  { -- | The name of the user who wrote the review.
    authorName :: (Core.Maybe Core.Text),
    -- | A repeated field containing comments for the review.
    comments :: (Core.Maybe [Comment]),
    -- | Unique identifier for this review.
    reviewId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Review' with the minimum fields required to make a request.
newReview ::
  Review
newReview =
  Review
    { authorName = Core.Nothing,
      comments = Core.Nothing,
      reviewId = Core.Nothing
    }

instance Core.FromJSON Review where
  parseJSON =
    Core.withObject
      "Review"
      ( \o ->
          Review
            Core.<$> (o Core..:? "authorName")
            Core.<*> (o Core..:? "comments")
            Core.<*> (o Core..:? "reviewId")
      )

instance Core.ToJSON Review where
  toJSON Review {..} =
    Core.object
      ( Core.catMaybes
          [ ("authorName" Core..=) Core.<$> authorName,
            ("comments" Core..=) Core.<$> comments,
            ("reviewId" Core..=) Core.<$> reviewId
          ]
      )

-- | The result of replying\/updating a reply to review.
--
-- /See:/ 'newReviewReplyResult' smart constructor.
data ReviewReplyResult = ReviewReplyResult
  { -- | The time at which the reply took effect.
    lastEdited :: (Core.Maybe Timestamp),
    -- | The reply text that was applied.
    replyText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReviewReplyResult' with the minimum fields required to make a request.
newReviewReplyResult ::
  ReviewReplyResult
newReviewReplyResult =
  ReviewReplyResult {lastEdited = Core.Nothing, replyText = Core.Nothing}

instance Core.FromJSON ReviewReplyResult where
  parseJSON =
    Core.withObject
      "ReviewReplyResult"
      ( \o ->
          ReviewReplyResult
            Core.<$> (o Core..:? "lastEdited")
            Core.<*> (o Core..:? "replyText")
      )

instance Core.ToJSON ReviewReplyResult where
  toJSON ReviewReplyResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("lastEdited" Core..=) Core.<$> lastEdited,
            ("replyText" Core..=) Core.<$> replyText
          ]
      )

-- | Response listing reviews.
--
-- /See:/ 'newReviewsListResponse' smart constructor.
data ReviewsListResponse = ReviewsListResponse
  { -- | Information about the current page.
    pageInfo :: (Core.Maybe PageInfo),
    -- | List of reviews.
    reviews :: (Core.Maybe [Review]),
    -- | Pagination token, to handle a number of products that is over one page.
    tokenPagination :: (Core.Maybe TokenPagination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReviewsListResponse' with the minimum fields required to make a request.
newReviewsListResponse ::
  ReviewsListResponse
newReviewsListResponse =
  ReviewsListResponse
    { pageInfo = Core.Nothing,
      reviews = Core.Nothing,
      tokenPagination = Core.Nothing
    }

instance Core.FromJSON ReviewsListResponse where
  parseJSON =
    Core.withObject
      "ReviewsListResponse"
      ( \o ->
          ReviewsListResponse
            Core.<$> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "reviews")
            Core.<*> (o Core..:? "tokenPagination")
      )

instance Core.ToJSON ReviewsListResponse where
  toJSON ReviewsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageInfo" Core..=) Core.<$> pageInfo,
            ("reviews" Core..=) Core.<$> reviews,
            ("tokenPagination" Core..=)
              Core.<$> tokenPagination
          ]
      )

-- | Request to reply to review or update existing reply.
--
-- /See:/ 'newReviewsReplyRequest' smart constructor.
newtype ReviewsReplyRequest = ReviewsReplyRequest
  { -- | The text to set as the reply. Replies of more than approximately 350 characters will be rejected. HTML tags will be stripped.
    replyText :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReviewsReplyRequest' with the minimum fields required to make a request.
newReviewsReplyRequest ::
  ReviewsReplyRequest
newReviewsReplyRequest = ReviewsReplyRequest {replyText = Core.Nothing}

instance Core.FromJSON ReviewsReplyRequest where
  parseJSON =
    Core.withObject
      "ReviewsReplyRequest"
      ( \o ->
          ReviewsReplyRequest
            Core.<$> (o Core..:? "replyText")
      )

instance Core.ToJSON ReviewsReplyRequest where
  toJSON ReviewsReplyRequest {..} =
    Core.object
      ( Core.catMaybes
          [("replyText" Core..=) Core.<$> replyText]
      )

-- | Response on status of replying to a review.
--
-- /See:/ 'newReviewsReplyResponse' smart constructor.
newtype ReviewsReplyResponse = ReviewsReplyResponse
  { -- | The result of replying\/updating a reply to review.
    result :: (Core.Maybe ReviewReplyResult)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReviewsReplyResponse' with the minimum fields required to make a request.
newReviewsReplyResponse ::
  ReviewsReplyResponse
newReviewsReplyResponse = ReviewsReplyResponse {result = Core.Nothing}

instance Core.FromJSON ReviewsReplyResponse where
  parseJSON =
    Core.withObject
      "ReviewsReplyResponse"
      ( \o ->
          ReviewsReplyResponse Core.<$> (o Core..:? "result")
      )

instance Core.ToJSON ReviewsReplyResponse where
  toJSON ReviewsReplyResponse {..} =
    Core.object
      (Core.catMaybes [("result" Core..=) Core.<$> result])

-- | Information associated with purchases made with \'Subscribe with Google\'.
--
-- /See:/ 'newSubscribeWithGoogleInfo' smart constructor.
data SubscribeWithGoogleInfo = SubscribeWithGoogleInfo
  { -- | The email address of the user when the subscription was purchased.
    emailAddress :: (Core.Maybe Core.Text),
    -- | The family name of the user when the subscription was purchased.
    familyName :: (Core.Maybe Core.Text),
    -- | The given name of the user when the subscription was purchased.
    givenName :: (Core.Maybe Core.Text),
    -- | The Google profile id of the user when the subscription was purchased.
    profileId :: (Core.Maybe Core.Text),
    -- | The profile name of the user when the subscription was purchased.
    profileName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscribeWithGoogleInfo' with the minimum fields required to make a request.
newSubscribeWithGoogleInfo ::
  SubscribeWithGoogleInfo
newSubscribeWithGoogleInfo =
  SubscribeWithGoogleInfo
    { emailAddress = Core.Nothing,
      familyName = Core.Nothing,
      givenName = Core.Nothing,
      profileId = Core.Nothing,
      profileName = Core.Nothing
    }

instance Core.FromJSON SubscribeWithGoogleInfo where
  parseJSON =
    Core.withObject
      "SubscribeWithGoogleInfo"
      ( \o ->
          SubscribeWithGoogleInfo
            Core.<$> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "familyName")
            Core.<*> (o Core..:? "givenName")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "profileName")
      )

instance Core.ToJSON SubscribeWithGoogleInfo where
  toJSON SubscribeWithGoogleInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("emailAddress" Core..=) Core.<$> emailAddress,
            ("familyName" Core..=) Core.<$> familyName,
            ("givenName" Core..=) Core.<$> givenName,
            ("profileId" Core..=) Core.<$> profileId,
            ("profileName" Core..=) Core.<$> profileName
          ]
      )

-- | A single subscription for an app.
--
-- /See:/ 'newSubscription' smart constructor.
data Subscription = Subscription
  { -- | Output only. Whether this subscription is archived. Archived subscriptions are not available to any subscriber any longer, cannot be updated, and are not returned in list requests unless the show archived flag is passed in.
    archived :: (Core.Maybe Core.Bool),
    -- | The set of base plans for this subscription. Represents the prices and duration of the subscription if no other offers apply.
    basePlans :: (Core.Maybe [BasePlan]),
    -- | Required. List of localized listings for this subscription. Must contain at least an entry for the default language of the parent app.
    listings :: (Core.Maybe [SubscriptionListing]),
    -- | Immutable. Package name of the parent app.
    packageName :: (Core.Maybe Core.Text),
    -- | Immutable. Unique product ID of the product. Unique within the parent app. Product IDs must be composed of lower-case letters (a-z), numbers (0-9), underscores (_) and dots (.). It must start with a lower-case letter or number, and be between 1 and 40 (inclusive) characters in length.
    productId :: (Core.Maybe Core.Text),
    -- | Details about taxes and legal compliance.
    taxAndComplianceSettings :: (Core.Maybe SubscriptionTaxAndComplianceSettings)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
newSubscription ::
  Subscription
newSubscription =
  Subscription
    { archived = Core.Nothing,
      basePlans = Core.Nothing,
      listings = Core.Nothing,
      packageName = Core.Nothing,
      productId = Core.Nothing,
      taxAndComplianceSettings = Core.Nothing
    }

instance Core.FromJSON Subscription where
  parseJSON =
    Core.withObject
      "Subscription"
      ( \o ->
          Subscription
            Core.<$> (o Core..:? "archived")
            Core.<*> (o Core..:? "basePlans")
            Core.<*> (o Core..:? "listings")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "taxAndComplianceSettings")
      )

instance Core.ToJSON Subscription where
  toJSON Subscription {..} =
    Core.object
      ( Core.catMaybes
          [ ("archived" Core..=) Core.<$> archived,
            ("basePlans" Core..=) Core.<$> basePlans,
            ("listings" Core..=) Core.<$> listings,
            ("packageName" Core..=) Core.<$> packageName,
            ("productId" Core..=) Core.<$> productId,
            ("taxAndComplianceSettings" Core..=)
              Core.<$> taxAndComplianceSettings
          ]
      )

-- | Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).
--
-- /See:/ 'newSubscriptionCancelSurveyResult' smart constructor.
data SubscriptionCancelSurveyResult = SubscriptionCancelSurveyResult
  { -- | The cancellation reason the user chose in the survey. Possible values are: 0. Other 1. I don\'t use this service enough 2. Technical issues 3. Cost-related reasons 4. I found a better app
    cancelSurveyReason :: (Core.Maybe Core.Int32),
    -- | The customized input cancel reason from the user. Only present when cancelReason is 0.
    userInputCancelReason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionCancelSurveyResult' with the minimum fields required to make a request.
newSubscriptionCancelSurveyResult ::
  SubscriptionCancelSurveyResult
newSubscriptionCancelSurveyResult =
  SubscriptionCancelSurveyResult
    { cancelSurveyReason = Core.Nothing,
      userInputCancelReason = Core.Nothing
    }

instance Core.FromJSON SubscriptionCancelSurveyResult where
  parseJSON =
    Core.withObject
      "SubscriptionCancelSurveyResult"
      ( \o ->
          SubscriptionCancelSurveyResult
            Core.<$> (o Core..:? "cancelSurveyReason")
            Core.<*> (o Core..:? "userInputCancelReason")
      )

instance Core.ToJSON SubscriptionCancelSurveyResult where
  toJSON SubscriptionCancelSurveyResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("cancelSurveyReason" Core..=)
              Core.<$> cancelSurveyReason,
            ("userInputCancelReason" Core..=)
              Core.<$> userInputCancelReason
          ]
      )

-- | A SubscriptionDeferralInfo contains the data needed to defer a subscription purchase to a future expiry time.
--
-- /See:/ 'newSubscriptionDeferralInfo' smart constructor.
data SubscriptionDeferralInfo = SubscriptionDeferralInfo
  { -- | The desired next expiry time to assign to the subscription, in milliseconds since the Epoch. The given time must be later\/greater than the current expiry time for the subscription.
    desiredExpiryTimeMillis :: (Core.Maybe Core.Int64),
    -- | The expected expiry time for the subscription. If the current expiry time for the subscription is not the value specified here, the deferral will not occur.
    expectedExpiryTimeMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionDeferralInfo' with the minimum fields required to make a request.
newSubscriptionDeferralInfo ::
  SubscriptionDeferralInfo
newSubscriptionDeferralInfo =
  SubscriptionDeferralInfo
    { desiredExpiryTimeMillis = Core.Nothing,
      expectedExpiryTimeMillis = Core.Nothing
    }

instance Core.FromJSON SubscriptionDeferralInfo where
  parseJSON =
    Core.withObject
      "SubscriptionDeferralInfo"
      ( \o ->
          SubscriptionDeferralInfo
            Core.<$> ( o Core..:? "desiredExpiryTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "expectedExpiryTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON SubscriptionDeferralInfo where
  toJSON SubscriptionDeferralInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("desiredExpiryTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> desiredExpiryTimeMillis,
            ("expectedExpiryTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> expectedExpiryTimeMillis
          ]
      )

-- | Price change related information of a subscription item.
--
-- /See:/ 'newSubscriptionItemPriceChangeDetails' smart constructor.
data SubscriptionItemPriceChangeDetails = SubscriptionItemPriceChangeDetails
  { -- | The renewal time at which the price change will become effective for the user. This is subject to change(to a future time) due to cases where the renewal time shifts like pause.
    expectedNewPriceChargeTime :: (Core.Maybe Core.DateTime),
    -- | New recurring price for the subscription item.
    newPrice' :: (Core.Maybe Money),
    -- | Price change mode specifies how the subscription item price is changing.
    priceChangeMode :: (Core.Maybe SubscriptionItemPriceChangeDetails_PriceChangeMode),
    -- | State the price change is currently in.
    priceChangeState :: (Core.Maybe SubscriptionItemPriceChangeDetails_PriceChangeState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionItemPriceChangeDetails' with the minimum fields required to make a request.
newSubscriptionItemPriceChangeDetails ::
  SubscriptionItemPriceChangeDetails
newSubscriptionItemPriceChangeDetails =
  SubscriptionItemPriceChangeDetails
    { expectedNewPriceChargeTime = Core.Nothing,
      newPrice' = Core.Nothing,
      priceChangeMode = Core.Nothing,
      priceChangeState = Core.Nothing
    }

instance
  Core.FromJSON
    SubscriptionItemPriceChangeDetails
  where
  parseJSON =
    Core.withObject
      "SubscriptionItemPriceChangeDetails"
      ( \o ->
          SubscriptionItemPriceChangeDetails
            Core.<$> (o Core..:? "expectedNewPriceChargeTime")
            Core.<*> (o Core..:? "newPrice")
            Core.<*> (o Core..:? "priceChangeMode")
            Core.<*> (o Core..:? "priceChangeState")
      )

instance
  Core.ToJSON
    SubscriptionItemPriceChangeDetails
  where
  toJSON SubscriptionItemPriceChangeDetails {..} =
    Core.object
      ( Core.catMaybes
          [ ("expectedNewPriceChargeTime" Core..=)
              Core.<$> expectedNewPriceChargeTime,
            ("newPrice" Core..=) Core.<$> newPrice',
            ("priceChangeMode" Core..=) Core.<$> priceChangeMode,
            ("priceChangeState" Core..=)
              Core.<$> priceChangeState
          ]
      )

-- | The consumer-visible metadata of a subscription.
--
-- /See:/ 'newSubscriptionListing' smart constructor.
data SubscriptionListing = SubscriptionListing
  { -- | A list of benefits shown to the user on platforms such as the Play Store and in restoration flows in the language of this listing. Plain text. Ordered list of at most four benefits.
    benefits :: (Core.Maybe [Core.Text]),
    -- | The description of this subscription in the language of this listing. Maximum length - 80 characters. Plain text.
    description :: (Core.Maybe Core.Text),
    -- | Required. The language of this listing, as defined by BCP-47, e.g. \"en-US\".
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. The title of this subscription in the language of this listing. Plain text.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionListing' with the minimum fields required to make a request.
newSubscriptionListing ::
  SubscriptionListing
newSubscriptionListing =
  SubscriptionListing
    { benefits = Core.Nothing,
      description = Core.Nothing,
      languageCode = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON SubscriptionListing where
  parseJSON =
    Core.withObject
      "SubscriptionListing"
      ( \o ->
          SubscriptionListing
            Core.<$> (o Core..:? "benefits")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON SubscriptionListing where
  toJSON SubscriptionListing {..} =
    Core.object
      ( Core.catMaybes
          [ ("benefits" Core..=) Core.<$> benefits,
            ("description" Core..=) Core.<$> description,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A single, temporary offer
--
-- /See:/ 'newSubscriptionOffer' smart constructor.
data SubscriptionOffer = SubscriptionOffer
  { -- | Required. Immutable. The ID of the base plan to which this offer is an extension.
    basePlanId :: (Core.Maybe Core.Text),
    -- | Required. Immutable. Unique ID of this subscription offer. Must be unique within the base plan.
    offerId :: (Core.Maybe Core.Text),
    -- | List of up to 20 custom tags specified for this offer, and returned to the app through the billing library.
    offerTags :: (Core.Maybe [OfferTag]),
    -- | The configuration for any new locations Play may launch in the future.
    otherRegionsConfig :: (Core.Maybe OtherRegionsSubscriptionOfferConfig),
    -- | Required. Immutable. The package name of the app the parent subscription belongs to.
    packageName :: (Core.Maybe Core.Text),
    -- | Required. The phases of this subscription offer. Must contain at least one entry, and may contain at most five. Users will always receive all these phases in the specified order. Phases may not be added, removed, or reordered after initial creation.
    phases :: (Core.Maybe [SubscriptionOfferPhase]),
    -- | Required. Immutable. The ID of the parent subscription this offer belongs to.
    productId :: (Core.Maybe Core.Text),
    -- | Required. The region-specific configuration of this offer. Must contain at least one entry.
    regionalConfigs :: (Core.Maybe [RegionalSubscriptionOfferConfig]),
    -- | Output only. The current state of this offer. Can be changed using Activate and Deactivate actions. NB: the base plan state supersedes this state, so an active offer may not be available if the base plan is not active.
    state :: (Core.Maybe SubscriptionOffer_State),
    -- | The requirements that users need to fulfil to be eligible for this offer. Represents the requirements that Play will evaluate to decide whether an offer should be returned. Developers may further filter these offers themselves.
    targeting :: (Core.Maybe SubscriptionOfferTargeting)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionOffer' with the minimum fields required to make a request.
newSubscriptionOffer ::
  SubscriptionOffer
newSubscriptionOffer =
  SubscriptionOffer
    { basePlanId = Core.Nothing,
      offerId = Core.Nothing,
      offerTags = Core.Nothing,
      otherRegionsConfig = Core.Nothing,
      packageName = Core.Nothing,
      phases = Core.Nothing,
      productId = Core.Nothing,
      regionalConfigs = Core.Nothing,
      state = Core.Nothing,
      targeting = Core.Nothing
    }

instance Core.FromJSON SubscriptionOffer where
  parseJSON =
    Core.withObject
      "SubscriptionOffer"
      ( \o ->
          SubscriptionOffer
            Core.<$> (o Core..:? "basePlanId")
            Core.<*> (o Core..:? "offerId")
            Core.<*> (o Core..:? "offerTags")
            Core.<*> (o Core..:? "otherRegionsConfig")
            Core.<*> (o Core..:? "packageName")
            Core.<*> (o Core..:? "phases")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "regionalConfigs")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "targeting")
      )

instance Core.ToJSON SubscriptionOffer where
  toJSON SubscriptionOffer {..} =
    Core.object
      ( Core.catMaybes
          [ ("basePlanId" Core..=) Core.<$> basePlanId,
            ("offerId" Core..=) Core.<$> offerId,
            ("offerTags" Core..=) Core.<$> offerTags,
            ("otherRegionsConfig" Core..=)
              Core.<$> otherRegionsConfig,
            ("packageName" Core..=) Core.<$> packageName,
            ("phases" Core..=) Core.<$> phases,
            ("productId" Core..=) Core.<$> productId,
            ("regionalConfigs" Core..=) Core.<$> regionalConfigs,
            ("state" Core..=) Core.<$> state,
            ("targeting" Core..=) Core.<$> targeting
          ]
      )

-- | A single phase of a subscription offer.
--
-- /See:/ 'newSubscriptionOfferPhase' smart constructor.
data SubscriptionOfferPhase = SubscriptionOfferPhase
  { -- | Required. The duration of a single recurrence of this phase. Specified in ISO 8601 format.
    duration :: (Core.Maybe Core.Text),
    -- | Pricing information for any new locations Play may launch in.
    otherRegionsConfig :: (Core.Maybe OtherRegionsSubscriptionOfferPhaseConfig),
    -- | Required. The number of times this phase repeats. If this offer phase is not free, each recurrence charges the user the price of this offer phase.
    recurrenceCount :: (Core.Maybe Core.Int32),
    -- | Required. The region-specific configuration of this offer phase. This list must contain exactly one entry for each region for which the subscription offer has a regional config.
    regionalConfigs :: (Core.Maybe [RegionalSubscriptionOfferPhaseConfig])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionOfferPhase' with the minimum fields required to make a request.
newSubscriptionOfferPhase ::
  SubscriptionOfferPhase
newSubscriptionOfferPhase =
  SubscriptionOfferPhase
    { duration = Core.Nothing,
      otherRegionsConfig = Core.Nothing,
      recurrenceCount = Core.Nothing,
      regionalConfigs = Core.Nothing
    }

instance Core.FromJSON SubscriptionOfferPhase where
  parseJSON =
    Core.withObject
      "SubscriptionOfferPhase"
      ( \o ->
          SubscriptionOfferPhase
            Core.<$> (o Core..:? "duration")
            Core.<*> (o Core..:? "otherRegionsConfig")
            Core.<*> (o Core..:? "recurrenceCount")
            Core.<*> (o Core..:? "regionalConfigs")
      )

instance Core.ToJSON SubscriptionOfferPhase where
  toJSON SubscriptionOfferPhase {..} =
    Core.object
      ( Core.catMaybes
          [ ("duration" Core..=) Core.<$> duration,
            ("otherRegionsConfig" Core..=)
              Core.<$> otherRegionsConfig,
            ("recurrenceCount" Core..=) Core.<$> recurrenceCount,
            ("regionalConfigs" Core..=)
              Core.<$> regionalConfigs
          ]
      )

-- | Defines the rule a user needs to satisfy to receive this offer.
--
-- /See:/ 'newSubscriptionOfferTargeting' smart constructor.
data SubscriptionOfferTargeting = SubscriptionOfferTargeting
  { -- | Offer targeting rule for new user acquisition.
    acquisitionRule :: (Core.Maybe AcquisitionTargetingRule),
    -- | Offer targeting rule for upgrading users\' existing plans.
    upgradeRule :: (Core.Maybe UpgradeTargetingRule)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionOfferTargeting' with the minimum fields required to make a request.
newSubscriptionOfferTargeting ::
  SubscriptionOfferTargeting
newSubscriptionOfferTargeting =
  SubscriptionOfferTargeting
    { acquisitionRule = Core.Nothing,
      upgradeRule = Core.Nothing
    }

instance Core.FromJSON SubscriptionOfferTargeting where
  parseJSON =
    Core.withObject
      "SubscriptionOfferTargeting"
      ( \o ->
          SubscriptionOfferTargeting
            Core.<$> (o Core..:? "acquisitionRule")
            Core.<*> (o Core..:? "upgradeRule")
      )

instance Core.ToJSON SubscriptionOfferTargeting where
  toJSON SubscriptionOfferTargeting {..} =
    Core.object
      ( Core.catMaybes
          [ ("acquisitionRule" Core..=)
              Core.<$> acquisitionRule,
            ("upgradeRule" Core..=) Core.<$> upgradeRule
          ]
      )

-- | Contains the price change information for a subscription that can be used to control the user journey for the price change in the app. This can be in the form of seeking confirmation from the user or tailoring the experience for a successful conversion.
--
-- /See:/ 'newSubscriptionPriceChange' smart constructor.
data SubscriptionPriceChange = SubscriptionPriceChange
  { -- | The new price the subscription will renew with if the price change is accepted by the user.
    newPrice' :: (Core.Maybe Price),
    -- | The current state of the price change. Possible values are: 0. Outstanding: State for a pending price change waiting for the user to agree. In this state, you can optionally seek confirmation from the user using the In-App API. 1. Accepted: State for an accepted price change that the subscription will renew with unless it\'s canceled. The price change takes effect on a future date when the subscription renews. Note that the change might not occur when the subscription is renewed next.
    state :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionPriceChange' with the minimum fields required to make a request.
newSubscriptionPriceChange ::
  SubscriptionPriceChange
newSubscriptionPriceChange =
  SubscriptionPriceChange {newPrice' = Core.Nothing, state = Core.Nothing}

instance Core.FromJSON SubscriptionPriceChange where
  parseJSON =
    Core.withObject
      "SubscriptionPriceChange"
      ( \o ->
          SubscriptionPriceChange
            Core.<$> (o Core..:? "newPrice")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON SubscriptionPriceChange where
  toJSON SubscriptionPriceChange {..} =
    Core.object
      ( Core.catMaybes
          [ ("newPrice" Core..=) Core.<$> newPrice',
            ("state" Core..=) Core.<$> state
          ]
      )

-- | A SubscriptionPurchase resource indicates the status of a user\'s subscription purchase.
--
-- /See:/ 'newSubscriptionPurchase' smart constructor.
data SubscriptionPurchase = SubscriptionPurchase
  { -- | The acknowledgement state of the subscription product. Possible values are: 0. Yet to be acknowledged 1. Acknowledged
    acknowledgementState :: (Core.Maybe Core.Int32),
    -- | Whether the subscription will automatically be renewed when it reaches its current expiry time.
    autoRenewing :: (Core.Maybe Core.Bool),
    -- | Time at which the subscription will be automatically resumed, in milliseconds since the Epoch. Only present if the user has requested to pause the subscription.
    autoResumeTimeMillis :: (Core.Maybe Core.Int64),
    -- | The reason why a subscription was canceled or is not auto-renewing. Possible values are: 0. User canceled the subscription 1. Subscription was canceled by the system, for example because of a billing problem 2. Subscription was replaced with a new subscription 3. Subscription was canceled by the developer
    cancelReason :: (Core.Maybe Core.Int32),
    -- | Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).
    cancelSurveyResult :: (Core.Maybe SubscriptionCancelSurveyResult),
    -- | ISO 3166-1 alpha-2 billing country\/region code of the user at the time the subscription was granted.
    countryCode :: (Core.Maybe Core.Text),
    -- | A developer-specified string that contains supplemental information about an order.
    developerPayload :: (Core.Maybe Core.Text),
    -- | The email address of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    emailAddress :: (Core.Maybe Core.Text),
    -- | Time at which the subscription will expire, in milliseconds since the Epoch.
    expiryTimeMillis :: (Core.Maybe Core.Int64),
    -- | User account identifier in the third-party service. Only present if account linking happened as part of the subscription purchase flow.
    externalAccountId :: (Core.Maybe Core.Text),
    -- | The family name of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    familyName :: (Core.Maybe Core.Text),
    -- | The given name of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    givenName :: (Core.Maybe Core.Text),
    -- | Introductory price information of the subscription. This is only present when the subscription was purchased with an introductory price. This field does not indicate the subscription is currently in introductory price period.
    introductoryPriceInfo :: (Core.Maybe IntroductoryPriceInfo),
    -- | This kind represents a subscriptionPurchase object in the androidpublisher service.
    kind :: (Core.Maybe Core.Text),
    -- | The purchase token of the originating purchase if this subscription is one of the following: 0. Re-signup of a canceled but non-lapsed subscription 1. Upgrade\/downgrade from a previous subscription For example, suppose a user originally signs up and you receive purchase token X, then the user cancels and goes through the resignup flow (before their subscription lapses) and you receive purchase token Y, and finally the user upgrades their subscription and you receive purchase token Z. If you call this API with purchase token Z, this field will be set to Y. If you call this API with purchase token Y, this field will be set to X. If you call this API with purchase token X, this field will not be set.
    linkedPurchaseToken :: (Core.Maybe Core.Text),
    -- | An obfuscated version of the id that is uniquely associated with the user\'s account in your app. Present for the following purchases: * If account linking happened as part of the subscription purchase flow. * It was specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.
    obfuscatedExternalAccountId :: (Core.Maybe Core.Text),
    -- | An obfuscated version of the id that is uniquely associated with the user\'s profile in your app. Only present if specified using https:\/\/developer.android.com\/reference\/com\/android\/billingclient\/api\/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.
    obfuscatedExternalProfileId :: (Core.Maybe Core.Text),
    -- | The order id of the latest recurring order associated with the purchase of the subscription. If the subscription was canceled because payment was declined, this will be the order id from the payment declined order.
    orderId :: (Core.Maybe Core.Text),
    -- | The payment state of the subscription. Possible values are: 0. Payment pending 1. Payment received 2. Free trial 3. Pending deferred upgrade\/downgrade Not present for canceled, expired subscriptions.
    paymentState :: (Core.Maybe Core.Int32),
    -- | Price of the subscription, For tax exclusive countries, the price doesn\'t include tax. For tax inclusive countries, the price includes tax. Price is expressed in micro-units, where 1,000,000 micro-units represents one unit of the currency. For example, if the subscription price is €1.99, price/amount/micros is 1990000.
    priceAmountMicros :: (Core.Maybe Core.Int64),
    -- | The latest price change information available. This is present only when there is an upcoming price change for the subscription yet to be applied. Once the subscription renews with the new price or the subscription is canceled, no price change information will be returned.
    priceChange :: (Core.Maybe SubscriptionPriceChange),
    -- | ISO 4217 currency code for the subscription price. For example, if the price is specified in British pounds sterling, price/currency/code is \"GBP\".
    priceCurrencyCode :: (Core.Maybe Core.Text),
    -- | The Google profile id of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    profileId :: (Core.Maybe Core.Text),
    -- | The profile name of the user when the subscription was purchased. Only present for purchases made with \'Subscribe with Google\'.
    profileName :: (Core.Maybe Core.Text),
    -- | The promotion code applied on this purchase. This field is only set if a vanity code promotion is applied when the subscription was purchased.
    promotionCode :: (Core.Maybe Core.Text),
    -- | The type of promotion applied on this purchase. This field is only set if a promotion is applied when the subscription was purchased. Possible values are: 0. One time code 1. Vanity code
    promotionType :: (Core.Maybe Core.Int32),
    -- | The type of purchase of the subscription. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e. purchased using a promo code)
    purchaseType :: (Core.Maybe Core.Int32),
    -- | Time at which the subscription was granted, in milliseconds since the Epoch.
    startTimeMillis :: (Core.Maybe Core.Int64),
    -- | The time at which the subscription was canceled by the user, in milliseconds since the epoch. Only present if cancelReason is 0.
    userCancellationTimeMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionPurchase' with the minimum fields required to make a request.
newSubscriptionPurchase ::
  SubscriptionPurchase
newSubscriptionPurchase =
  SubscriptionPurchase
    { acknowledgementState = Core.Nothing,
      autoRenewing = Core.Nothing,
      autoResumeTimeMillis = Core.Nothing,
      cancelReason = Core.Nothing,
      cancelSurveyResult = Core.Nothing,
      countryCode = Core.Nothing,
      developerPayload = Core.Nothing,
      emailAddress = Core.Nothing,
      expiryTimeMillis = Core.Nothing,
      externalAccountId = Core.Nothing,
      familyName = Core.Nothing,
      givenName = Core.Nothing,
      introductoryPriceInfo = Core.Nothing,
      kind = Core.Nothing,
      linkedPurchaseToken = Core.Nothing,
      obfuscatedExternalAccountId = Core.Nothing,
      obfuscatedExternalProfileId = Core.Nothing,
      orderId = Core.Nothing,
      paymentState = Core.Nothing,
      priceAmountMicros = Core.Nothing,
      priceChange = Core.Nothing,
      priceCurrencyCode = Core.Nothing,
      profileId = Core.Nothing,
      profileName = Core.Nothing,
      promotionCode = Core.Nothing,
      promotionType = Core.Nothing,
      purchaseType = Core.Nothing,
      startTimeMillis = Core.Nothing,
      userCancellationTimeMillis = Core.Nothing
    }

instance Core.FromJSON SubscriptionPurchase where
  parseJSON =
    Core.withObject
      "SubscriptionPurchase"
      ( \o ->
          SubscriptionPurchase
            Core.<$> (o Core..:? "acknowledgementState")
            Core.<*> (o Core..:? "autoRenewing")
            Core.<*> ( o Core..:? "autoResumeTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "cancelReason")
            Core.<*> (o Core..:? "cancelSurveyResult")
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "developerPayload")
            Core.<*> (o Core..:? "emailAddress")
            Core.<*> ( o Core..:? "expiryTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "externalAccountId")
            Core.<*> (o Core..:? "familyName")
            Core.<*> (o Core..:? "givenName")
            Core.<*> (o Core..:? "introductoryPriceInfo")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "linkedPurchaseToken")
            Core.<*> (o Core..:? "obfuscatedExternalAccountId")
            Core.<*> (o Core..:? "obfuscatedExternalProfileId")
            Core.<*> (o Core..:? "orderId")
            Core.<*> (o Core..:? "paymentState")
            Core.<*> ( o Core..:? "priceAmountMicros"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "priceChange")
            Core.<*> (o Core..:? "priceCurrencyCode")
            Core.<*> (o Core..:? "profileId")
            Core.<*> (o Core..:? "profileName")
            Core.<*> (o Core..:? "promotionCode")
            Core.<*> (o Core..:? "promotionType")
            Core.<*> (o Core..:? "purchaseType")
            Core.<*> ( o Core..:? "startTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "userCancellationTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON SubscriptionPurchase where
  toJSON SubscriptionPurchase {..} =
    Core.object
      ( Core.catMaybes
          [ ("acknowledgementState" Core..=)
              Core.<$> acknowledgementState,
            ("autoRenewing" Core..=) Core.<$> autoRenewing,
            ("autoResumeTimeMillis" Core..=) Core.. Core.AsText
              Core.<$> autoResumeTimeMillis,
            ("cancelReason" Core..=) Core.<$> cancelReason,
            ("cancelSurveyResult" Core..=)
              Core.<$> cancelSurveyResult,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("developerPayload" Core..=)
              Core.<$> developerPayload,
            ("emailAddress" Core..=) Core.<$> emailAddress,
            ("expiryTimeMillis" Core..=) Core.. Core.AsText
              Core.<$> expiryTimeMillis,
            ("externalAccountId" Core..=)
              Core.<$> externalAccountId,
            ("familyName" Core..=) Core.<$> familyName,
            ("givenName" Core..=) Core.<$> givenName,
            ("introductoryPriceInfo" Core..=)
              Core.<$> introductoryPriceInfo,
            ("kind" Core..=) Core.<$> kind,
            ("linkedPurchaseToken" Core..=)
              Core.<$> linkedPurchaseToken,
            ("obfuscatedExternalAccountId" Core..=)
              Core.<$> obfuscatedExternalAccountId,
            ("obfuscatedExternalProfileId" Core..=)
              Core.<$> obfuscatedExternalProfileId,
            ("orderId" Core..=) Core.<$> orderId,
            ("paymentState" Core..=) Core.<$> paymentState,
            ("priceAmountMicros" Core..=) Core.. Core.AsText
              Core.<$> priceAmountMicros,
            ("priceChange" Core..=) Core.<$> priceChange,
            ("priceCurrencyCode" Core..=)
              Core.<$> priceCurrencyCode,
            ("profileId" Core..=) Core.<$> profileId,
            ("profileName" Core..=) Core.<$> profileName,
            ("promotionCode" Core..=) Core.<$> promotionCode,
            ("promotionType" Core..=) Core.<$> promotionType,
            ("purchaseType" Core..=) Core.<$> purchaseType,
            ("startTimeMillis" Core..=) Core.. Core.AsText
              Core.<$> startTimeMillis,
            ("userCancellationTimeMillis" Core..=)
              Core.. Core.AsText
              Core.<$> userCancellationTimeMillis
          ]
      )

-- | Item-level info for a subscription purchase.
--
-- /See:/ 'newSubscriptionPurchaseLineItem' smart constructor.
data SubscriptionPurchaseLineItem = SubscriptionPurchaseLineItem
  { -- | The item is auto renewing.
    autoRenewingPlan :: (Core.Maybe AutoRenewingPlan),
    -- | Time at which the subscription expired or will expire unless the access is extended (ex. renews).
    expiryTime :: (Core.Maybe Core.DateTime),
    -- | The offer details for this item.
    offerDetails :: (Core.Maybe OfferDetails),
    -- | The item is prepaid.
    prepaidPlan :: (Core.Maybe PrepaidPlan),
    -- | The purchased product ID (for example, \'monthly001\').
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionPurchaseLineItem' with the minimum fields required to make a request.
newSubscriptionPurchaseLineItem ::
  SubscriptionPurchaseLineItem
newSubscriptionPurchaseLineItem =
  SubscriptionPurchaseLineItem
    { autoRenewingPlan = Core.Nothing,
      expiryTime = Core.Nothing,
      offerDetails = Core.Nothing,
      prepaidPlan = Core.Nothing,
      productId = Core.Nothing
    }

instance Core.FromJSON SubscriptionPurchaseLineItem where
  parseJSON =
    Core.withObject
      "SubscriptionPurchaseLineItem"
      ( \o ->
          SubscriptionPurchaseLineItem
            Core.<$> (o Core..:? "autoRenewingPlan")
            Core.<*> (o Core..:? "expiryTime")
            Core.<*> (o Core..:? "offerDetails")
            Core.<*> (o Core..:? "prepaidPlan")
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON SubscriptionPurchaseLineItem where
  toJSON SubscriptionPurchaseLineItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoRenewingPlan" Core..=)
              Core.<$> autoRenewingPlan,
            ("expiryTime" Core..=) Core.<$> expiryTime,
            ("offerDetails" Core..=) Core.<$> offerDetails,
            ("prepaidPlan" Core..=) Core.<$> prepaidPlan,
            ("productId" Core..=) Core.<$> productId
          ]
      )

-- | Indicates the status of a user\'s subscription purchase.
--
-- /See:/ 'newSubscriptionPurchaseV2' smart constructor.
data SubscriptionPurchaseV2 = SubscriptionPurchaseV2
  { -- | The acknowledgement state of the subscription.
    acknowledgementState :: (Core.Maybe SubscriptionPurchaseV2_AcknowledgementState),
    -- | Additional context around canceled subscriptions. Only present if the subscription currently has subscription/state SUBSCRIPTION/STATE_CANCELED.
    canceledStateContext :: (Core.Maybe CanceledStateContext),
    -- | User account identifier in the third-party service.
    externalAccountIdentifiers :: (Core.Maybe ExternalAccountIdentifiers),
    -- | This kind represents a SubscriptionPurchaseV2 object in the androidpublisher service.
    kind :: (Core.Maybe Core.Text),
    -- | The order id of the latest order associated with the purchase of the subscription. For autoRenewing subscription, this is the order id of signup order if it is not renewed yet, or the last recurring order id (success, pending, or declined order). For prepaid subscription, this is the order id associated with the queried purchase token.
    latestOrderId :: (Core.Maybe Core.Text),
    -- | Item-level info for a subscription purchase. The items in the same purchase should be either all with AutoRenewingPlan or all with PrepaidPlan.
    lineItems :: (Core.Maybe [SubscriptionPurchaseLineItem]),
    -- | The purchase token of the old subscription if this subscription is one of the following: * Re-signup of a canceled but non-lapsed subscription * Upgrade\/downgrade from a previous subscription. * Convert from prepaid to auto renewing subscription. * Convert from an auto renewing subscription to prepaid. * Topup a prepaid subscription.
    linkedPurchaseToken :: (Core.Maybe Core.Text),
    -- | Additional context around paused subscriptions. Only present if the subscription currently has subscription/state SUBSCRIPTION/STATE_PAUSED.
    pausedStateContext :: (Core.Maybe PausedStateContext),
    -- | ISO 3166-1 alpha-2 billing country\/region code of the user at the time the subscription was granted.
    regionCode :: (Core.Maybe Core.Text),
    -- | Time at which the subscription was granted. Not set for pending subscriptions (subscription was created but awaiting payment during signup).
    startTime :: (Core.Maybe Core.DateTime),
    -- | User profile associated with purchases made with \'Subscribe with Google\'.
    subscribeWithGoogleInfo :: (Core.Maybe SubscribeWithGoogleInfo),
    -- | The current state of the subscription.
    subscriptionState :: (Core.Maybe SubscriptionPurchaseV2_SubscriptionState),
    -- | Only present if this subscription purchase is a test purchase.
    testPurchase :: (Core.Maybe TestPurchase)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionPurchaseV2' with the minimum fields required to make a request.
newSubscriptionPurchaseV2 ::
  SubscriptionPurchaseV2
newSubscriptionPurchaseV2 =
  SubscriptionPurchaseV2
    { acknowledgementState = Core.Nothing,
      canceledStateContext = Core.Nothing,
      externalAccountIdentifiers = Core.Nothing,
      kind = Core.Nothing,
      latestOrderId = Core.Nothing,
      lineItems = Core.Nothing,
      linkedPurchaseToken = Core.Nothing,
      pausedStateContext = Core.Nothing,
      regionCode = Core.Nothing,
      startTime = Core.Nothing,
      subscribeWithGoogleInfo = Core.Nothing,
      subscriptionState = Core.Nothing,
      testPurchase = Core.Nothing
    }

instance Core.FromJSON SubscriptionPurchaseV2 where
  parseJSON =
    Core.withObject
      "SubscriptionPurchaseV2"
      ( \o ->
          SubscriptionPurchaseV2
            Core.<$> (o Core..:? "acknowledgementState")
            Core.<*> (o Core..:? "canceledStateContext")
            Core.<*> (o Core..:? "externalAccountIdentifiers")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "latestOrderId")
            Core.<*> (o Core..:? "lineItems")
            Core.<*> (o Core..:? "linkedPurchaseToken")
            Core.<*> (o Core..:? "pausedStateContext")
            Core.<*> (o Core..:? "regionCode")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "subscribeWithGoogleInfo")
            Core.<*> (o Core..:? "subscriptionState")
            Core.<*> (o Core..:? "testPurchase")
      )

instance Core.ToJSON SubscriptionPurchaseV2 where
  toJSON SubscriptionPurchaseV2 {..} =
    Core.object
      ( Core.catMaybes
          [ ("acknowledgementState" Core..=)
              Core.<$> acknowledgementState,
            ("canceledStateContext" Core..=)
              Core.<$> canceledStateContext,
            ("externalAccountIdentifiers" Core..=)
              Core.<$> externalAccountIdentifiers,
            ("kind" Core..=) Core.<$> kind,
            ("latestOrderId" Core..=) Core.<$> latestOrderId,
            ("lineItems" Core..=) Core.<$> lineItems,
            ("linkedPurchaseToken" Core..=)
              Core.<$> linkedPurchaseToken,
            ("pausedStateContext" Core..=)
              Core.<$> pausedStateContext,
            ("regionCode" Core..=) Core.<$> regionCode,
            ("startTime" Core..=) Core.<$> startTime,
            ("subscribeWithGoogleInfo" Core..=)
              Core.<$> subscribeWithGoogleInfo,
            ("subscriptionState" Core..=)
              Core.<$> subscriptionState,
            ("testPurchase" Core..=) Core.<$> testPurchase
          ]
      )

-- | Request for the purchases.subscriptions.acknowledge API.
--
-- /See:/ 'newSubscriptionPurchasesAcknowledgeRequest' smart constructor.
newtype SubscriptionPurchasesAcknowledgeRequest = SubscriptionPurchasesAcknowledgeRequest
  { -- | Payload to attach to the purchase.
    developerPayload :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionPurchasesAcknowledgeRequest' with the minimum fields required to make a request.
newSubscriptionPurchasesAcknowledgeRequest ::
  SubscriptionPurchasesAcknowledgeRequest
newSubscriptionPurchasesAcknowledgeRequest =
  SubscriptionPurchasesAcknowledgeRequest {developerPayload = Core.Nothing}

instance
  Core.FromJSON
    SubscriptionPurchasesAcknowledgeRequest
  where
  parseJSON =
    Core.withObject
      "SubscriptionPurchasesAcknowledgeRequest"
      ( \o ->
          SubscriptionPurchasesAcknowledgeRequest
            Core.<$> (o Core..:? "developerPayload")
      )

instance
  Core.ToJSON
    SubscriptionPurchasesAcknowledgeRequest
  where
  toJSON SubscriptionPurchasesAcknowledgeRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("developerPayload" Core..=)
              Core.<$> developerPayload
          ]
      )

-- | Request for the purchases.subscriptions.defer API.
--
-- /See:/ 'newSubscriptionPurchasesDeferRequest' smart constructor.
newtype SubscriptionPurchasesDeferRequest = SubscriptionPurchasesDeferRequest
  { -- | The information about the new desired expiry time for the subscription.
    deferralInfo :: (Core.Maybe SubscriptionDeferralInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionPurchasesDeferRequest' with the minimum fields required to make a request.
newSubscriptionPurchasesDeferRequest ::
  SubscriptionPurchasesDeferRequest
newSubscriptionPurchasesDeferRequest =
  SubscriptionPurchasesDeferRequest {deferralInfo = Core.Nothing}

instance
  Core.FromJSON
    SubscriptionPurchasesDeferRequest
  where
  parseJSON =
    Core.withObject
      "SubscriptionPurchasesDeferRequest"
      ( \o ->
          SubscriptionPurchasesDeferRequest
            Core.<$> (o Core..:? "deferralInfo")
      )

instance
  Core.ToJSON
    SubscriptionPurchasesDeferRequest
  where
  toJSON SubscriptionPurchasesDeferRequest {..} =
    Core.object
      ( Core.catMaybes
          [("deferralInfo" Core..=) Core.<$> deferralInfo]
      )

-- | Response for the purchases.subscriptions.defer API.
--
-- /See:/ 'newSubscriptionPurchasesDeferResponse' smart constructor.
newtype SubscriptionPurchasesDeferResponse = SubscriptionPurchasesDeferResponse
  { -- | The new expiry time for the subscription in milliseconds since the Epoch.
    newExpiryTimeMillis' :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionPurchasesDeferResponse' with the minimum fields required to make a request.
newSubscriptionPurchasesDeferResponse ::
  SubscriptionPurchasesDeferResponse
newSubscriptionPurchasesDeferResponse =
  SubscriptionPurchasesDeferResponse {newExpiryTimeMillis' = Core.Nothing}

instance
  Core.FromJSON
    SubscriptionPurchasesDeferResponse
  where
  parseJSON =
    Core.withObject
      "SubscriptionPurchasesDeferResponse"
      ( \o ->
          SubscriptionPurchasesDeferResponse
            Core.<$> ( o Core..:? "newExpiryTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    SubscriptionPurchasesDeferResponse
  where
  toJSON SubscriptionPurchasesDeferResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("newExpiryTimeMillis" Core..=) Core.. Core.AsText
              Core.<$> newExpiryTimeMillis'
          ]
      )

-- | Details about taxation, Google Play policy and legal compliance for subscription products.
--
-- /See:/ 'newSubscriptionTaxAndComplianceSettings' smart constructor.
data SubscriptionTaxAndComplianceSettings = SubscriptionTaxAndComplianceSettings
  { -- | Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the <https://support.google.com/googleplay/android-developer/answer/10463498 Help Center article> for more information.
    eeaWithdrawalRightType ::
      ( Core.Maybe
          SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
      ),
    -- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
    taxRateInfoByRegionCode ::
      ( Core.Maybe
          SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionTaxAndComplianceSettings' with the minimum fields required to make a request.
newSubscriptionTaxAndComplianceSettings ::
  SubscriptionTaxAndComplianceSettings
newSubscriptionTaxAndComplianceSettings =
  SubscriptionTaxAndComplianceSettings
    { eeaWithdrawalRightType = Core.Nothing,
      taxRateInfoByRegionCode = Core.Nothing
    }

instance
  Core.FromJSON
    SubscriptionTaxAndComplianceSettings
  where
  parseJSON =
    Core.withObject
      "SubscriptionTaxAndComplianceSettings"
      ( \o ->
          SubscriptionTaxAndComplianceSettings
            Core.<$> (o Core..:? "eeaWithdrawalRightType")
            Core.<*> (o Core..:? "taxRateInfoByRegionCode")
      )

instance
  Core.ToJSON
    SubscriptionTaxAndComplianceSettings
  where
  toJSON SubscriptionTaxAndComplianceSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("eeaWithdrawalRightType" Core..=)
              Core.<$> eeaWithdrawalRightType,
            ("taxRateInfoByRegionCode" Core..=)
              Core.<$> taxRateInfoByRegionCode
          ]
      )

-- | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode\'s \"CLDR\".
--
-- /See:/ 'newSubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode' smart constructor.
newtype SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode = SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
  { -- |
    additional :: (Core.HashMap Core.Text RegionalTaxRateInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode' with the minimum fields required to make a request.
newSubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode ::
  -- |  See 'additional'.
  Core.HashMap Core.Text RegionalTaxRateInfo ->
  SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
newSubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode additional =
  SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
    { additional = additional
    }

instance
  Core.FromJSON
    SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
  where
  parseJSON =
    Core.withObject
      "SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode"
      ( \o ->
          SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
  where
  toJSON
    SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode {..} =
      Core.toJSON additional

-- | Response to list previously created system APK variants.
--
-- /See:/ 'newSystemApksListResponse' smart constructor.
newtype SystemApksListResponse = SystemApksListResponse
  { -- | All system APK variants created.
    variants :: (Core.Maybe [Variant])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystemApksListResponse' with the minimum fields required to make a request.
newSystemApksListResponse ::
  SystemApksListResponse
newSystemApksListResponse = SystemApksListResponse {variants = Core.Nothing}

instance Core.FromJSON SystemApksListResponse where
  parseJSON =
    Core.withObject
      "SystemApksListResponse"
      ( \o ->
          SystemApksListResponse
            Core.<$> (o Core..:? "variants")
      )

instance Core.ToJSON SystemApksListResponse where
  toJSON SystemApksListResponse {..} =
    Core.object
      ( Core.catMaybes
          [("variants" Core..=) Core.<$> variants]
      )

-- | Representation of a system feature.
--
-- /See:/ 'newSystemFeature' smart constructor.
newtype SystemFeature = SystemFeature
  { -- | The name of the feature.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystemFeature' with the minimum fields required to make a request.
newSystemFeature ::
  SystemFeature
newSystemFeature = SystemFeature {name = Core.Nothing}

instance Core.FromJSON SystemFeature where
  parseJSON =
    Core.withObject
      "SystemFeature"
      (\o -> SystemFeature Core.<$> (o Core..:? "name"))

instance Core.ToJSON SystemFeature where
  toJSON SystemFeature {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Information specific to cancellations initiated by Google system.
--
-- /See:/ 'newSystemInitiatedCancellation' smart constructor.
data SystemInitiatedCancellation = SystemInitiatedCancellation
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SystemInitiatedCancellation' with the minimum fields required to make a request.
newSystemInitiatedCancellation ::
  SystemInitiatedCancellation
newSystemInitiatedCancellation = SystemInitiatedCancellation

instance Core.FromJSON SystemInitiatedCancellation where
  parseJSON =
    Core.withObject
      "SystemInitiatedCancellation"
      (\o -> Core.pure SystemInitiatedCancellation)

instance Core.ToJSON SystemInitiatedCancellation where
  toJSON = Core.const Core.emptyObject

-- | Defines the scope of subscriptions which a targeting rule can match to target offers to users based on past or current entitlement.
--
-- /See:/ 'newTargetingRuleScope' smart constructor.
newtype TargetingRuleScope = TargetingRuleScope
  { -- | The scope of the current targeting rule is the subscription with the specified subscription ID. Must be a subscription within the same parent app.
    specificSubscriptionInApp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TargetingRuleScope' with the minimum fields required to make a request.
newTargetingRuleScope ::
  TargetingRuleScope
newTargetingRuleScope =
  TargetingRuleScope {specificSubscriptionInApp = Core.Nothing}

instance Core.FromJSON TargetingRuleScope where
  parseJSON =
    Core.withObject
      "TargetingRuleScope"
      ( \o ->
          TargetingRuleScope
            Core.<$> (o Core..:? "specificSubscriptionInApp")
      )

instance Core.ToJSON TargetingRuleScope where
  toJSON TargetingRuleScope {..} =
    Core.object
      ( Core.catMaybes
          [ ("specificSubscriptionInApp" Core..=)
              Core.<$> specificSubscriptionInApp
          ]
      )

-- | Whether this subscription purchase is a test purchase.
--
-- /See:/ 'newTestPurchase' smart constructor.
data TestPurchase = TestPurchase
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestPurchase' with the minimum fields required to make a request.
newTestPurchase ::
  TestPurchase
newTestPurchase = TestPurchase

instance Core.FromJSON TestPurchase where
  parseJSON =
    Core.withObject
      "TestPurchase"
      (\o -> Core.pure TestPurchase)

instance Core.ToJSON TestPurchase where
  toJSON = Core.const Core.emptyObject

-- | The testers of an app. The resource for TestersService. Note: while it is possible in the Play Console UI to add testers via email lists, email lists are not supported by this resource.
--
-- /See:/ 'newTesters' smart constructor.
newtype Testers = Testers
  { -- | All testing Google Groups, as email addresses.
    googleGroups :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Testers' with the minimum fields required to make a request.
newTesters ::
  Testers
newTesters = Testers {googleGroups = Core.Nothing}

instance Core.FromJSON Testers where
  parseJSON =
    Core.withObject
      "Testers"
      (\o -> Testers Core.<$> (o Core..:? "googleGroups"))

instance Core.ToJSON Testers where
  toJSON Testers {..} =
    Core.object
      ( Core.catMaybes
          [("googleGroups" Core..=) Core.<$> googleGroups]
      )

-- | A Timestamp represents a point in time independent of any time zone or local calendar, encoded as a count of seconds and fractions of seconds at nanosecond resolution. The count is relative to an epoch at UTC midnight on January 1, 1970.
--
-- /See:/ 'newTimestamp' smart constructor.
data Timestamp = Timestamp
  { -- | Non-negative fractions of a second at nanosecond resolution. Must be from 0 to 999,999,999 inclusive.
    nanos :: (Core.Maybe Core.Int32),
    -- | Represents seconds of UTC time since Unix epoch.
    seconds :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Timestamp' with the minimum fields required to make a request.
newTimestamp ::
  Timestamp
newTimestamp = Timestamp {nanos = Core.Nothing, seconds = Core.Nothing}

instance Core.FromJSON Timestamp where
  parseJSON =
    Core.withObject
      "Timestamp"
      ( \o ->
          Timestamp
            Core.<$> (o Core..:? "nanos")
            Core.<*> ( o Core..:? "seconds"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Timestamp where
  toJSON Timestamp {..} =
    Core.object
      ( Core.catMaybes
          [ ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.. Core.AsText
              Core.<$> seconds
          ]
      )

-- | Pagination information returned by a List operation when token pagination is enabled. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned. When using token pagination, clients should use the next\/previous token to get another page of the result. The presence or absence of next\/previous token indicates whether a next\/previous page is available and provides a mean of accessing this page. ListRequest.page/token should be set to either next/page/token or previous/page_token to access another page.
--
-- /See:/ 'newTokenPagination' smart constructor.
data TokenPagination = TokenPagination
  { -- | Tokens to pass to the standard list field \'page/token\'. Whenever available, tokens are preferred over manipulating start/index.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    previousPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
newTokenPagination ::
  TokenPagination
newTokenPagination =
  TokenPagination
    { nextPageToken = Core.Nothing,
      previousPageToken = Core.Nothing
    }

instance Core.FromJSON TokenPagination where
  parseJSON =
    Core.withObject
      "TokenPagination"
      ( \o ->
          TokenPagination
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "previousPageToken")
      )

instance Core.ToJSON TokenPagination where
  toJSON TokenPagination {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("previousPageToken" Core..=)
              Core.<$> previousPageToken
          ]
      )

-- | A track configuration. The resource for TracksService.
--
-- /See:/ 'newTrack' smart constructor.
data Track = Track
  { -- | In a read request, represents all active releases in the track. In an update request, represents desired changes.
    releases :: (Core.Maybe [TrackRelease]),
    -- | Identifier of the track. Form factor tracks have a special prefix as an identifier, for example @wear:production@, @automotive:production@. <https://developers.google.com/android-publisher/tracks#ff-track-name More on track name>
    track :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Track' with the minimum fields required to make a request.
newTrack ::
  Track
newTrack = Track {releases = Core.Nothing, track = Core.Nothing}

instance Core.FromJSON Track where
  parseJSON =
    Core.withObject
      "Track"
      ( \o ->
          Track
            Core.<$> (o Core..:? "releases")
            Core.<*> (o Core..:? "track")
      )

instance Core.ToJSON Track where
  toJSON Track {..} =
    Core.object
      ( Core.catMaybes
          [ ("releases" Core..=) Core.<$> releases,
            ("track" Core..=) Core.<$> track
          ]
      )

-- | Resource for per-track country availability information.
--
-- /See:/ 'newTrackCountryAvailability' smart constructor.
data TrackCountryAvailability = TrackCountryAvailability
  { -- | A list of one or more countries where artifacts in this track are available. This list includes all countries that are targeted by the track, even if only specific carriers are targeted in that country.
    countries :: (Core.Maybe [TrackTargetedCountry]),
    -- | Whether artifacts in this track are available to \"rest of the world\" countries.
    restOfWorld :: (Core.Maybe Core.Bool),
    -- | Whether this track\'s availability is synced with the default production track. See https:\/\/support.google.com\/googleplay\/android-developer\/answer\/7550024 for more information on syncing country availability with production. Note that if this is true, the returned \"countries\" and \"rest/of/world\" fields will reflect the values for the default production track.
    syncWithProduction :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrackCountryAvailability' with the minimum fields required to make a request.
newTrackCountryAvailability ::
  TrackCountryAvailability
newTrackCountryAvailability =
  TrackCountryAvailability
    { countries = Core.Nothing,
      restOfWorld = Core.Nothing,
      syncWithProduction = Core.Nothing
    }

instance Core.FromJSON TrackCountryAvailability where
  parseJSON =
    Core.withObject
      "TrackCountryAvailability"
      ( \o ->
          TrackCountryAvailability
            Core.<$> (o Core..:? "countries")
            Core.<*> (o Core..:? "restOfWorld")
            Core.<*> (o Core..:? "syncWithProduction")
      )

instance Core.ToJSON TrackCountryAvailability where
  toJSON TrackCountryAvailability {..} =
    Core.object
      ( Core.catMaybes
          [ ("countries" Core..=) Core.<$> countries,
            ("restOfWorld" Core..=) Core.<$> restOfWorld,
            ("syncWithProduction" Core..=)
              Core.<$> syncWithProduction
          ]
      )

-- | A release within a track.
--
-- /See:/ 'newTrackRelease' smart constructor.
data TrackRelease = TrackRelease
  { -- | Restricts a release to a specific set of countries.
    countryTargeting :: (Core.Maybe CountryTargeting),
    -- | In-app update priority of the release. All newly added APKs in the release will be considered at this priority. Can take values in the range [0, 5], with 5 the highest priority. Defaults to 0. in/app/update_priority can not be updated once the release is rolled out. See https:\/\/developer.android.com\/guide\/playcore\/in-app-updates.
    inAppUpdatePriority :: (Core.Maybe Core.Int32),
    -- | The release name. Not required to be unique. If not set, the name is generated from the APK\'s version_name. If the release contains multiple APKs, the name is generated from the date.
    name :: (Core.Maybe Core.Text),
    -- | A description of what is new in this release.
    releaseNotes :: (Core.Maybe [LocalizedText]),
    -- | The status of the release.
    status :: (Core.Maybe TrackRelease_Status),
    -- | Fraction of users who are eligible for a staged release. 0 \< fraction \< 1. Can only be set when status is \"inProgress\" or \"halted\".
    userFraction :: (Core.Maybe Core.Double),
    -- | Version codes of all APKs in the release. Must include version codes to retain from previous releases.
    versionCodes :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrackRelease' with the minimum fields required to make a request.
newTrackRelease ::
  TrackRelease
newTrackRelease =
  TrackRelease
    { countryTargeting = Core.Nothing,
      inAppUpdatePriority = Core.Nothing,
      name = Core.Nothing,
      releaseNotes = Core.Nothing,
      status = Core.Nothing,
      userFraction = Core.Nothing,
      versionCodes = Core.Nothing
    }

instance Core.FromJSON TrackRelease where
  parseJSON =
    Core.withObject
      "TrackRelease"
      ( \o ->
          TrackRelease
            Core.<$> (o Core..:? "countryTargeting")
            Core.<*> (o Core..:? "inAppUpdatePriority")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "releaseNotes")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "userFraction")
            Core.<*> ( o Core..:? "versionCodes"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
      )

instance Core.ToJSON TrackRelease where
  toJSON TrackRelease {..} =
    Core.object
      ( Core.catMaybes
          [ ("countryTargeting" Core..=)
              Core.<$> countryTargeting,
            ("inAppUpdatePriority" Core..=)
              Core.<$> inAppUpdatePriority,
            ("name" Core..=) Core.<$> name,
            ("releaseNotes" Core..=) Core.<$> releaseNotes,
            ("status" Core..=) Core.<$> status,
            ("userFraction" Core..=) Core.<$> userFraction,
            ("versionCodes" Core..=) Core.. Core.fmap Core.AsText
              Core.<$> versionCodes
          ]
      )

-- | Representation of a single country where the contents of a track are available.
--
-- /See:/ 'newTrackTargetedCountry' smart constructor.
newtype TrackTargetedCountry = TrackTargetedCountry
  { -- | The country to target, as a two-letter CLDR code.
    countryCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrackTargetedCountry' with the minimum fields required to make a request.
newTrackTargetedCountry ::
  TrackTargetedCountry
newTrackTargetedCountry = TrackTargetedCountry {countryCode = Core.Nothing}

instance Core.FromJSON TrackTargetedCountry where
  parseJSON =
    Core.withObject
      "TrackTargetedCountry"
      ( \o ->
          TrackTargetedCountry
            Core.<$> (o Core..:? "countryCode")
      )

instance Core.ToJSON TrackTargetedCountry where
  toJSON TrackTargetedCountry {..} =
    Core.object
      ( Core.catMaybes
          [("countryCode" Core..=) Core.<$> countryCode]
      )

-- | Response listing all tracks.
--
-- /See:/ 'newTracksListResponse' smart constructor.
data TracksListResponse = TracksListResponse
  { -- | The kind of this response (\"androidpublisher#tracksListResponse\").
    kind :: (Core.Maybe Core.Text),
    -- | All tracks.
    tracks :: (Core.Maybe [Track])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TracksListResponse' with the minimum fields required to make a request.
newTracksListResponse ::
  TracksListResponse
newTracksListResponse =
  TracksListResponse {kind = Core.Nothing, tracks = Core.Nothing}

instance Core.FromJSON TracksListResponse where
  parseJSON =
    Core.withObject
      "TracksListResponse"
      ( \o ->
          TracksListResponse
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "tracks")
      )

instance Core.ToJSON TracksListResponse where
  toJSON TracksListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("tracks" Core..=) Core.<$> tracks
          ]
      )

-- | Represents a targeting rule of the form: User currently has {scope} [with billing period {billing_period}].
--
-- /See:/ 'newUpgradeTargetingRule' smart constructor.
data UpgradeTargetingRule = UpgradeTargetingRule
  { -- | The specific billing period duration, specified in ISO 8601 format, that a user must be currently subscribed to to be eligible for this rule. If not specified, users subscribed to any billing period are matched.
    billingPeriodDuration :: (Core.Maybe Core.Text),
    -- | Limit this offer to only once per user. If set to true, a user can never be eligible for this offer again if they ever subscribed to this offer.
    oncePerUser :: (Core.Maybe Core.Bool),
    -- | Required. The scope of subscriptions this rule considers. Only allows \"this subscription\" and \"specific subscription in app\".
    scope :: (Core.Maybe TargetingRuleScope)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeTargetingRule' with the minimum fields required to make a request.
newUpgradeTargetingRule ::
  UpgradeTargetingRule
newUpgradeTargetingRule =
  UpgradeTargetingRule
    { billingPeriodDuration = Core.Nothing,
      oncePerUser = Core.Nothing,
      scope = Core.Nothing
    }

instance Core.FromJSON UpgradeTargetingRule where
  parseJSON =
    Core.withObject
      "UpgradeTargetingRule"
      ( \o ->
          UpgradeTargetingRule
            Core.<$> (o Core..:? "billingPeriodDuration")
            Core.<*> (o Core..:? "oncePerUser")
            Core.<*> (o Core..:? "scope")
      )

instance Core.ToJSON UpgradeTargetingRule where
  toJSON UpgradeTargetingRule {..} =
    Core.object
      ( Core.catMaybes
          [ ("billingPeriodDuration" Core..=)
              Core.<$> billingPeriodDuration,
            ("oncePerUser" Core..=) Core.<$> oncePerUser,
            ("scope" Core..=) Core.<$> scope
          ]
      )

-- | A user resource.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | Output only. The state of the user\'s access to the Play Console.
    accessState :: (Core.Maybe User_AccessState),
    -- | Permissions for the user which apply across the developer account.
    developerAccountPermissions :: (Core.Maybe [User_DeveloperAccountPermissionsItem]),
    -- | Immutable. The user\'s email address.
    email :: (Core.Maybe Core.Text),
    -- | The time at which the user\'s access expires, if set. When setting this value, it must always be in the future.
    expirationTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Per-app permissions for the user.
    grants :: (Core.Maybe [Grant]),
    -- | Required. Resource name for this user, following the pattern \"developers\/{developer}\/users\/{email}\".
    name :: (Core.Maybe Core.Text),
    -- | Output only. Whether there are more permissions for the user that are not represented here. This can happen if the caller does not have permission to manage all apps in the account. This is also @true@ if this user is the account owner. If this field is @true@, it should be taken as a signal that this user cannot be fully managed via the API. That is, the API caller is not be able to manage all of the permissions this user holds, either because it doesn\'t know about them or because the user is the account owner.
    partial :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { accessState = Core.Nothing,
      developerAccountPermissions = Core.Nothing,
      email = Core.Nothing,
      expirationTime = Core.Nothing,
      grants = Core.Nothing,
      name = Core.Nothing,
      partial = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "accessState")
            Core.<*> (o Core..:? "developerAccountPermissions")
            Core.<*> (o Core..:? "email")
            Core.<*> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "grants")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "partial")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessState" Core..=) Core.<$> accessState,
            ("developerAccountPermissions" Core..=)
              Core.<$> developerAccountPermissions,
            ("email" Core..=) Core.<$> email,
            ("expirationTime" Core..=) Core.<$> expirationTime,
            ("grants" Core..=) Core.<$> grants,
            ("name" Core..=) Core.<$> name,
            ("partial" Core..=) Core.<$> partial
          ]
      )

-- | User entry from conversation between user and developer.
--
-- /See:/ 'newUserComment' smart constructor.
data UserComment = UserComment
  { -- | Integer Android SDK version of the user\'s device at the time the review was written, e.g. 23 is Marshmallow. May be absent.
    androidOsVersion :: (Core.Maybe Core.Int32),
    -- | Integer version code of the app as installed at the time the review was written. May be absent.
    appVersionCode :: (Core.Maybe Core.Int32),
    -- | String version name of the app as installed at the time the review was written. May be absent.
    appVersionName :: (Core.Maybe Core.Text),
    -- | Codename for the reviewer\'s device, e.g. klte, flounder. May be absent.
    device :: (Core.Maybe Core.Text),
    -- | Information about the characteristics of the user\'s device.
    deviceMetadata :: (Core.Maybe DeviceMetadata),
    -- | The last time at which this comment was updated.
    lastModified :: (Core.Maybe Timestamp),
    -- | Untranslated text of the review, where the review was translated. If the review was not translated this is left blank.
    originalText :: (Core.Maybe Core.Text),
    -- | Language code for the reviewer. This is taken from the device settings so is not guaranteed to match the language the review is written in. May be absent.
    reviewerLanguage :: (Core.Maybe Core.Text),
    -- | The star rating associated with the review, from 1 to 5.
    starRating :: (Core.Maybe Core.Int32),
    -- | The content of the comment, i.e. review body. In some cases users have been able to write a review with separate title and body; in those cases the title and body are concatenated and separated by a tab character.
    text :: (Core.Maybe Core.Text),
    -- | Number of users who have given this review a thumbs down.
    thumbsDownCount :: (Core.Maybe Core.Int32),
    -- | Number of users who have given this review a thumbs up.
    thumbsUpCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserComment' with the minimum fields required to make a request.
newUserComment ::
  UserComment
newUserComment =
  UserComment
    { androidOsVersion = Core.Nothing,
      appVersionCode = Core.Nothing,
      appVersionName = Core.Nothing,
      device = Core.Nothing,
      deviceMetadata = Core.Nothing,
      lastModified = Core.Nothing,
      originalText = Core.Nothing,
      reviewerLanguage = Core.Nothing,
      starRating = Core.Nothing,
      text = Core.Nothing,
      thumbsDownCount = Core.Nothing,
      thumbsUpCount = Core.Nothing
    }

instance Core.FromJSON UserComment where
  parseJSON =
    Core.withObject
      "UserComment"
      ( \o ->
          UserComment
            Core.<$> (o Core..:? "androidOsVersion")
            Core.<*> (o Core..:? "appVersionCode")
            Core.<*> (o Core..:? "appVersionName")
            Core.<*> (o Core..:? "device")
            Core.<*> (o Core..:? "deviceMetadata")
            Core.<*> (o Core..:? "lastModified")
            Core.<*> (o Core..:? "originalText")
            Core.<*> (o Core..:? "reviewerLanguage")
            Core.<*> (o Core..:? "starRating")
            Core.<*> (o Core..:? "text")
            Core.<*> (o Core..:? "thumbsDownCount")
            Core.<*> (o Core..:? "thumbsUpCount")
      )

instance Core.ToJSON UserComment where
  toJSON UserComment {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidOsVersion" Core..=)
              Core.<$> androidOsVersion,
            ("appVersionCode" Core..=) Core.<$> appVersionCode,
            ("appVersionName" Core..=) Core.<$> appVersionName,
            ("device" Core..=) Core.<$> device,
            ("deviceMetadata" Core..=) Core.<$> deviceMetadata,
            ("lastModified" Core..=) Core.<$> lastModified,
            ("originalText" Core..=) Core.<$> originalText,
            ("reviewerLanguage" Core..=)
              Core.<$> reviewerLanguage,
            ("starRating" Core..=) Core.<$> starRating,
            ("text" Core..=) Core.<$> text,
            ("thumbsDownCount" Core..=) Core.<$> thumbsDownCount,
            ("thumbsUpCount" Core..=) Core.<$> thumbsUpCount
          ]
      )

-- | A set of user countries. A country set determines what variation of app content gets served to a specific location.
--
-- /See:/ 'newUserCountrySet' smart constructor.
data UserCountrySet = UserCountrySet
  { -- | List of country codes representing countries. A Country code is represented in ISO 3166 alpha-2 format. For Example:- \"IT\" for Italy, \"GE\" for Georgia.
    countryCodes :: (Core.Maybe [Core.Text]),
    -- | Country set name.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserCountrySet' with the minimum fields required to make a request.
newUserCountrySet ::
  UserCountrySet
newUserCountrySet =
  UserCountrySet {countryCodes = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON UserCountrySet where
  parseJSON =
    Core.withObject
      "UserCountrySet"
      ( \o ->
          UserCountrySet
            Core.<$> (o Core..:? "countryCodes")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON UserCountrySet where
  toJSON UserCountrySet {..} =
    Core.object
      ( Core.catMaybes
          [ ("countryCodes" Core..=) Core.<$> countryCodes,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Information specific to cancellations initiated by users.
--
-- /See:/ 'newUserInitiatedCancellation' smart constructor.
data UserInitiatedCancellation = UserInitiatedCancellation
  { -- | Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).
    cancelSurveyResult :: (Core.Maybe CancelSurveyResult),
    -- | The time at which the subscription was canceled by the user. The user might still have access to the subscription after this time. Use line/items.expiry/time to determine if a user still has access.
    cancelTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserInitiatedCancellation' with the minimum fields required to make a request.
newUserInitiatedCancellation ::
  UserInitiatedCancellation
newUserInitiatedCancellation =
  UserInitiatedCancellation
    { cancelSurveyResult = Core.Nothing,
      cancelTime = Core.Nothing
    }

instance Core.FromJSON UserInitiatedCancellation where
  parseJSON =
    Core.withObject
      "UserInitiatedCancellation"
      ( \o ->
          UserInitiatedCancellation
            Core.<$> (o Core..:? "cancelSurveyResult")
            Core.<*> (o Core..:? "cancelTime")
      )

instance Core.ToJSON UserInitiatedCancellation where
  toJSON UserInitiatedCancellation {..} =
    Core.object
      ( Core.catMaybes
          [ ("cancelSurveyResult" Core..=)
              Core.<$> cancelSurveyResult,
            ("cancelTime" Core..=) Core.<$> cancelTime
          ]
      )

-- | A permission used by this APK.
--
-- /See:/ 'newUsesPermission' smart constructor.
data UsesPermission = UsesPermission
  { -- | Optionally, the maximum SDK version for which the permission is required.
    maxSdkVersion :: (Core.Maybe Core.Int32),
    -- | The name of the permission requested.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsesPermission' with the minimum fields required to make a request.
newUsesPermission ::
  UsesPermission
newUsesPermission =
  UsesPermission {maxSdkVersion = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON UsesPermission where
  parseJSON =
    Core.withObject
      "UsesPermission"
      ( \o ->
          UsesPermission
            Core.<$> (o Core..:? "maxSdkVersion")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON UsesPermission where
  toJSON UsesPermission {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxSdkVersion" Core..=) Core.<$> maxSdkVersion,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | APK that is suitable for inclusion in a system image. The resource of SystemApksService.
--
-- /See:/ 'newVariant' smart constructor.
data Variant = Variant
  { -- | The device spec used to generate the APK.
    deviceSpec :: (Core.Maybe DeviceSpec),
    -- | Output only. The ID of a previously created system APK variant.
    variantId :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Variant' with the minimum fields required to make a request.
newVariant ::
  Variant
newVariant = Variant {deviceSpec = Core.Nothing, variantId = Core.Nothing}

instance Core.FromJSON Variant where
  parseJSON =
    Core.withObject
      "Variant"
      ( \o ->
          Variant
            Core.<$> (o Core..:? "deviceSpec")
            Core.<*> (o Core..:? "variantId")
      )

instance Core.ToJSON Variant where
  toJSON Variant {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceSpec" Core..=) Core.<$> deviceSpec,
            ("variantId" Core..=) Core.<$> variantId
          ]
      )

-- | A VoidedPurchase resource indicates a purchase that was either canceled\/refunded\/charged-back.
--
-- /See:/ 'newVoidedPurchase' smart constructor.
data VoidedPurchase = VoidedPurchase
  { -- | This kind represents a voided purchase object in the androidpublisher service.
    kind :: (Core.Maybe Core.Text),
    -- | The order id which uniquely identifies a one-time purchase, subscription purchase, or subscription renewal.
    orderId :: (Core.Maybe Core.Text),
    -- | The time at which the purchase was made, in milliseconds since the epoch (Jan 1, 1970).
    purchaseTimeMillis :: (Core.Maybe Core.Int64),
    -- | The token which uniquely identifies a one-time purchase or subscription. To uniquely identify subscription renewals use order_id (available starting from version 3 of the API).
    purchaseToken :: (Core.Maybe Core.Text),
    -- | The reason why the purchase was voided, possible values are: 0. Other 1. Remorse 2. Not/received 3. Defective 4. Accidental/purchase 5. Fraud 6. Friendly_fraud 7. Chargeback
    voidedReason :: (Core.Maybe Core.Int32),
    -- | The initiator of voided purchase, possible values are: 0. User 1. Developer 2. Google
    voidedSource :: (Core.Maybe Core.Int32),
    -- | The time at which the purchase was canceled\/refunded\/charged-back, in milliseconds since the epoch (Jan 1, 1970).
    voidedTimeMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoidedPurchase' with the minimum fields required to make a request.
newVoidedPurchase ::
  VoidedPurchase
newVoidedPurchase =
  VoidedPurchase
    { kind = Core.Nothing,
      orderId = Core.Nothing,
      purchaseTimeMillis = Core.Nothing,
      purchaseToken = Core.Nothing,
      voidedReason = Core.Nothing,
      voidedSource = Core.Nothing,
      voidedTimeMillis = Core.Nothing
    }

instance Core.FromJSON VoidedPurchase where
  parseJSON =
    Core.withObject
      "VoidedPurchase"
      ( \o ->
          VoidedPurchase
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "orderId")
            Core.<*> ( o Core..:? "purchaseTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "purchaseToken")
            Core.<*> (o Core..:? "voidedReason")
            Core.<*> (o Core..:? "voidedSource")
            Core.<*> ( o Core..:? "voidedTimeMillis"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON VoidedPurchase where
  toJSON VoidedPurchase {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("orderId" Core..=) Core.<$> orderId,
            ("purchaseTimeMillis" Core..=) Core.. Core.AsText
              Core.<$> purchaseTimeMillis,
            ("purchaseToken" Core..=) Core.<$> purchaseToken,
            ("voidedReason" Core..=) Core.<$> voidedReason,
            ("voidedSource" Core..=) Core.<$> voidedSource,
            ("voidedTimeMillis" Core..=) Core.. Core.AsText
              Core.<$> voidedTimeMillis
          ]
      )

-- | Response for the voidedpurchases.list API.
--
-- /See:/ 'newVoidedPurchasesListResponse' smart constructor.
data VoidedPurchasesListResponse = VoidedPurchasesListResponse
  { -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | Pagination information for token pagination.
    tokenPagination :: (Core.Maybe TokenPagination),
    -- |
    voidedPurchases :: (Core.Maybe [VoidedPurchase])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoidedPurchasesListResponse' with the minimum fields required to make a request.
newVoidedPurchasesListResponse ::
  VoidedPurchasesListResponse
newVoidedPurchasesListResponse =
  VoidedPurchasesListResponse
    { pageInfo = Core.Nothing,
      tokenPagination = Core.Nothing,
      voidedPurchases = Core.Nothing
    }

instance Core.FromJSON VoidedPurchasesListResponse where
  parseJSON =
    Core.withObject
      "VoidedPurchasesListResponse"
      ( \o ->
          VoidedPurchasesListResponse
            Core.<$> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "tokenPagination")
            Core.<*> (o Core..:? "voidedPurchases")
      )

instance Core.ToJSON VoidedPurchasesListResponse where
  toJSON VoidedPurchasesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageInfo" Core..=) Core.<$> pageInfo,
            ("tokenPagination" Core..=) Core.<$> tokenPagination,
            ("voidedPurchases" Core..=)
              Core.<$> voidedPurchases
          ]
      )
