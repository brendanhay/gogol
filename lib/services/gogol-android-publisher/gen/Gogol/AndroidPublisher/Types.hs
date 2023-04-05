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
-- Module      : Gogol.AndroidPublisher.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AndroidPublisher.Types
  ( -- * Configuration
    androidPublisherService,

    -- * OAuth Scopes
    Androidpublisher'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcquisitionTargetingRule
    AcquisitionTargetingRule (..),
    newAcquisitionTargetingRule,

    -- ** ActivateBasePlanRequest
    ActivateBasePlanRequest (..),
    newActivateBasePlanRequest,

    -- ** ActivateSubscriptionOfferRequest
    ActivateSubscriptionOfferRequest (..),
    newActivateSubscriptionOfferRequest,

    -- ** Apk
    Apk (..),
    newApk,

    -- ** ApkBinary
    ApkBinary (..),
    newApkBinary,

    -- ** ApksAddExternallyHostedRequest
    ApksAddExternallyHostedRequest (..),
    newApksAddExternallyHostedRequest,

    -- ** ApksAddExternallyHostedResponse
    ApksAddExternallyHostedResponse (..),
    newApksAddExternallyHostedResponse,

    -- ** ApksListResponse
    ApksListResponse (..),
    newApksListResponse,

    -- ** AppDetails
    AppDetails (..),
    newAppDetails,

    -- ** AppEdit
    AppEdit (..),
    newAppEdit,

    -- ** ArchiveSubscriptionRequest
    ArchiveSubscriptionRequest (..),
    newArchiveSubscriptionRequest,

    -- ** AutoRenewingBasePlanType
    AutoRenewingBasePlanType (..),
    newAutoRenewingBasePlanType,

    -- ** AutoRenewingBasePlanType_ProrationMode
    AutoRenewingBasePlanType_ProrationMode (..),

    -- ** AutoRenewingBasePlanType_ResubscribeState
    AutoRenewingBasePlanType_ResubscribeState (..),

    -- ** AutoRenewingPlan
    AutoRenewingPlan (..),
    newAutoRenewingPlan,

    -- ** BasePlan
    BasePlan (..),
    newBasePlan,

    -- ** BasePlan_State
    BasePlan_State (..),

    -- ** Bundle
    Bundle (..),
    newBundle,

    -- ** BundlesListResponse
    BundlesListResponse (..),
    newBundlesListResponse,

    -- ** CancelSurveyResult
    CancelSurveyResult (..),
    newCancelSurveyResult,

    -- ** CancelSurveyResult_Reason
    CancelSurveyResult_Reason (..),

    -- ** CanceledStateContext
    CanceledStateContext (..),
    newCanceledStateContext,

    -- ** Comment
    Comment (..),
    newComment,

    -- ** ConvertRegionPricesRequest
    ConvertRegionPricesRequest (..),
    newConvertRegionPricesRequest,

    -- ** ConvertRegionPricesResponse
    ConvertRegionPricesResponse (..),
    newConvertRegionPricesResponse,

    -- ** ConvertRegionPricesResponse_ConvertedRegionPrices
    ConvertRegionPricesResponse_ConvertedRegionPrices (..),
    newConvertRegionPricesResponse_ConvertedRegionPrices,

    -- ** ConvertedOtherRegionsPrice
    ConvertedOtherRegionsPrice (..),
    newConvertedOtherRegionsPrice,

    -- ** ConvertedRegionPrice
    ConvertedRegionPrice (..),
    newConvertedRegionPrice,

    -- ** CountryTargeting
    CountryTargeting (..),
    newCountryTargeting,

    -- ** DeactivateBasePlanRequest
    DeactivateBasePlanRequest (..),
    newDeactivateBasePlanRequest,

    -- ** DeactivateSubscriptionOfferRequest
    DeactivateSubscriptionOfferRequest (..),
    newDeactivateSubscriptionOfferRequest,

    -- ** DeobfuscationFile
    DeobfuscationFile (..),
    newDeobfuscationFile,

    -- ** DeobfuscationFile_SymbolType
    DeobfuscationFile_SymbolType (..),

    -- ** DeobfuscationFilesUploadResponse
    DeobfuscationFilesUploadResponse (..),
    newDeobfuscationFilesUploadResponse,

    -- ** DeveloperComment
    DeveloperComment (..),
    newDeveloperComment,

    -- ** DeveloperInitiatedCancellation
    DeveloperInitiatedCancellation (..),
    newDeveloperInitiatedCancellation,

    -- ** DeviceGroup
    DeviceGroup (..),
    newDeviceGroup,

    -- ** DeviceId
    DeviceId (..),
    newDeviceId,

    -- ** DeviceMetadata
    DeviceMetadata (..),
    newDeviceMetadata,

    -- ** DeviceRam
    DeviceRam (..),
    newDeviceRam,

    -- ** DeviceSelector
    DeviceSelector (..),
    newDeviceSelector,

    -- ** DeviceSpec
    DeviceSpec (..),
    newDeviceSpec,

    -- ** DeviceTier
    DeviceTier (..),
    newDeviceTier,

    -- ** DeviceTierConfig
    DeviceTierConfig (..),
    newDeviceTierConfig,

    -- ** DeviceTierSet
    DeviceTierSet (..),
    newDeviceTierSet,

    -- ** ExpansionFile
    ExpansionFile (..),
    newExpansionFile,

    -- ** ExpansionFilesUploadResponse
    ExpansionFilesUploadResponse (..),
    newExpansionFilesUploadResponse,

    -- ** ExternalAccountIdentifiers
    ExternalAccountIdentifiers (..),
    newExternalAccountIdentifiers,

    -- ** ExternallyHostedApk
    ExternallyHostedApk (..),
    newExternallyHostedApk,

    -- ** GeneratedApksListResponse
    GeneratedApksListResponse (..),
    newGeneratedApksListResponse,

    -- ** GeneratedApksPerSigningKey
    GeneratedApksPerSigningKey (..),
    newGeneratedApksPerSigningKey,

    -- ** GeneratedAssetPackSlice
    GeneratedAssetPackSlice (..),
    newGeneratedAssetPackSlice,

    -- ** GeneratedSplitApk
    GeneratedSplitApk (..),
    newGeneratedSplitApk,

    -- ** GeneratedStandaloneApk
    GeneratedStandaloneApk (..),
    newGeneratedStandaloneApk,

    -- ** GeneratedUniversalApk
    GeneratedUniversalApk (..),
    newGeneratedUniversalApk,

    -- ** Grant
    Grant (..),
    newGrant,

    -- ** Grant_AppLevelPermissionsItem
    Grant_AppLevelPermissionsItem (..),

    -- ** Image
    Image (..),
    newImage,

    -- ** ImagesDeleteAllResponse
    ImagesDeleteAllResponse (..),
    newImagesDeleteAllResponse,

    -- ** ImagesListResponse
    ImagesListResponse (..),
    newImagesListResponse,

    -- ** ImagesUploadResponse
    ImagesUploadResponse (..),
    newImagesUploadResponse,

    -- ** InAppProduct
    InAppProduct (..),
    newInAppProduct,

    -- ** InAppProduct_Listings
    InAppProduct_Listings (..),
    newInAppProduct_Listings,

    -- ** InAppProduct_Prices
    InAppProduct_Prices (..),
    newInAppProduct_Prices,

    -- ** InAppProduct_PurchaseType
    InAppProduct_PurchaseType (..),

    -- ** InAppProduct_Status
    InAppProduct_Status (..),

    -- ** InAppProductListing
    InAppProductListing (..),
    newInAppProductListing,

    -- ** InappproductsListResponse
    InappproductsListResponse (..),
    newInappproductsListResponse,

    -- ** InternalAppSharingArtifact
    InternalAppSharingArtifact (..),
    newInternalAppSharingArtifact,

    -- ** IntroductoryPriceInfo
    IntroductoryPriceInfo (..),
    newIntroductoryPriceInfo,

    -- ** ListDeviceTierConfigsResponse
    ListDeviceTierConfigsResponse (..),
    newListDeviceTierConfigsResponse,

    -- ** ListSubscriptionOffersResponse
    ListSubscriptionOffersResponse (..),
    newListSubscriptionOffersResponse,

    -- ** ListSubscriptionsResponse
    ListSubscriptionsResponse (..),
    newListSubscriptionsResponse,

    -- ** ListUsersResponse
    ListUsersResponse (..),
    newListUsersResponse,

    -- ** Listing
    Listing (..),
    newListing,

    -- ** ListingsListResponse
    ListingsListResponse (..),
    newListingsListResponse,

    -- ** LocalizedText
    LocalizedText (..),
    newLocalizedText,

    -- ** ManagedProductTaxAndComplianceSettings
    ManagedProductTaxAndComplianceSettings (..),
    newManagedProductTaxAndComplianceSettings,

    -- ** ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType
    ManagedProductTaxAndComplianceSettings_EeaWithdrawalRightType (..),

    -- ** ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode
    ManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode (..),
    newManagedProductTaxAndComplianceSettings_TaxRateInfoByRegionCode,

    -- ** MigrateBasePlanPricesRequest
    MigrateBasePlanPricesRequest (..),
    newMigrateBasePlanPricesRequest,

    -- ** MigrateBasePlanPricesResponse
    MigrateBasePlanPricesResponse (..),
    newMigrateBasePlanPricesResponse,

    -- ** Money
    Money (..),
    newMoney,

    -- ** OfferDetails
    OfferDetails (..),
    newOfferDetails,

    -- ** OfferTag
    OfferTag (..),
    newOfferTag,

    -- ** OtherRegionsBasePlanConfig
    OtherRegionsBasePlanConfig (..),
    newOtherRegionsBasePlanConfig,

    -- ** OtherRegionsSubscriptionOfferConfig
    OtherRegionsSubscriptionOfferConfig (..),
    newOtherRegionsSubscriptionOfferConfig,

    -- ** OtherRegionsSubscriptionOfferPhaseConfig
    OtherRegionsSubscriptionOfferPhaseConfig (..),
    newOtherRegionsSubscriptionOfferPhaseConfig,

    -- ** OtherRegionsSubscriptionOfferPhasePrices
    OtherRegionsSubscriptionOfferPhasePrices (..),
    newOtherRegionsSubscriptionOfferPhasePrices,

    -- ** PageInfo
    PageInfo (..),
    newPageInfo,

    -- ** PausedStateContext
    PausedStateContext (..),
    newPausedStateContext,

    -- ** PrepaidBasePlanType
    PrepaidBasePlanType (..),
    newPrepaidBasePlanType,

    -- ** PrepaidBasePlanType_TimeExtension
    PrepaidBasePlanType_TimeExtension (..),

    -- ** PrepaidPlan
    PrepaidPlan (..),
    newPrepaidPlan,

    -- ** Price
    Price (..),
    newPrice,

    -- ** ProductPurchase
    ProductPurchase (..),
    newProductPurchase,

    -- ** ProductPurchasesAcknowledgeRequest
    ProductPurchasesAcknowledgeRequest (..),
    newProductPurchasesAcknowledgeRequest,

    -- ** RegionalBasePlanConfig
    RegionalBasePlanConfig (..),
    newRegionalBasePlanConfig,

    -- ** RegionalPriceMigrationConfig
    RegionalPriceMigrationConfig (..),
    newRegionalPriceMigrationConfig,

    -- ** RegionalSubscriptionOfferConfig
    RegionalSubscriptionOfferConfig (..),
    newRegionalSubscriptionOfferConfig,

    -- ** RegionalSubscriptionOfferPhaseConfig
    RegionalSubscriptionOfferPhaseConfig (..),
    newRegionalSubscriptionOfferPhaseConfig,

    -- ** RegionalTaxRateInfo
    RegionalTaxRateInfo (..),
    newRegionalTaxRateInfo,

    -- ** RegionalTaxRateInfo_StreamingTaxType
    RegionalTaxRateInfo_StreamingTaxType (..),

    -- ** RegionalTaxRateInfo_TaxTier
    RegionalTaxRateInfo_TaxTier (..),

    -- ** RegionsVersion
    RegionsVersion (..),
    newRegionsVersion,

    -- ** ReplacementCancellation
    ReplacementCancellation (..),
    newReplacementCancellation,

    -- ** Review
    Review (..),
    newReview,

    -- ** ReviewReplyResult
    ReviewReplyResult (..),
    newReviewReplyResult,

    -- ** ReviewsListResponse
    ReviewsListResponse (..),
    newReviewsListResponse,

    -- ** ReviewsReplyRequest
    ReviewsReplyRequest (..),
    newReviewsReplyRequest,

    -- ** ReviewsReplyResponse
    ReviewsReplyResponse (..),
    newReviewsReplyResponse,

    -- ** SubscribeWithGoogleInfo
    SubscribeWithGoogleInfo (..),
    newSubscribeWithGoogleInfo,

    -- ** Subscription
    Subscription (..),
    newSubscription,

    -- ** SubscriptionCancelSurveyResult
    SubscriptionCancelSurveyResult (..),
    newSubscriptionCancelSurveyResult,

    -- ** SubscriptionDeferralInfo
    SubscriptionDeferralInfo (..),
    newSubscriptionDeferralInfo,

    -- ** SubscriptionItemPriceChangeDetails
    SubscriptionItemPriceChangeDetails (..),
    newSubscriptionItemPriceChangeDetails,

    -- ** SubscriptionItemPriceChangeDetails_PriceChangeMode
    SubscriptionItemPriceChangeDetails_PriceChangeMode (..),

    -- ** SubscriptionItemPriceChangeDetails_PriceChangeState
    SubscriptionItemPriceChangeDetails_PriceChangeState (..),

    -- ** SubscriptionListing
    SubscriptionListing (..),
    newSubscriptionListing,

    -- ** SubscriptionOffer
    SubscriptionOffer (..),
    newSubscriptionOffer,

    -- ** SubscriptionOffer_State
    SubscriptionOffer_State (..),

    -- ** SubscriptionOfferPhase
    SubscriptionOfferPhase (..),
    newSubscriptionOfferPhase,

    -- ** SubscriptionOfferTargeting
    SubscriptionOfferTargeting (..),
    newSubscriptionOfferTargeting,

    -- ** SubscriptionPriceChange
    SubscriptionPriceChange (..),
    newSubscriptionPriceChange,

    -- ** SubscriptionPurchase
    SubscriptionPurchase (..),
    newSubscriptionPurchase,

    -- ** SubscriptionPurchaseLineItem
    SubscriptionPurchaseLineItem (..),
    newSubscriptionPurchaseLineItem,

    -- ** SubscriptionPurchaseV2
    SubscriptionPurchaseV2 (..),
    newSubscriptionPurchaseV2,

    -- ** SubscriptionPurchaseV2_AcknowledgementState
    SubscriptionPurchaseV2_AcknowledgementState (..),

    -- ** SubscriptionPurchaseV2_SubscriptionState
    SubscriptionPurchaseV2_SubscriptionState (..),

    -- ** SubscriptionPurchasesAcknowledgeRequest
    SubscriptionPurchasesAcknowledgeRequest (..),
    newSubscriptionPurchasesAcknowledgeRequest,

    -- ** SubscriptionPurchasesDeferRequest
    SubscriptionPurchasesDeferRequest (..),
    newSubscriptionPurchasesDeferRequest,

    -- ** SubscriptionPurchasesDeferResponse
    SubscriptionPurchasesDeferResponse (..),
    newSubscriptionPurchasesDeferResponse,

    -- ** SubscriptionTaxAndComplianceSettings
    SubscriptionTaxAndComplianceSettings (..),
    newSubscriptionTaxAndComplianceSettings,

    -- ** SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType
    SubscriptionTaxAndComplianceSettings_EeaWithdrawalRightType (..),

    -- ** SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode
    SubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode (..),
    newSubscriptionTaxAndComplianceSettings_TaxRateInfoByRegionCode,

    -- ** SystemApksListResponse
    SystemApksListResponse (..),
    newSystemApksListResponse,

    -- ** SystemFeature
    SystemFeature (..),
    newSystemFeature,

    -- ** SystemInitiatedCancellation
    SystemInitiatedCancellation (..),
    newSystemInitiatedCancellation,

    -- ** TargetingRuleScope
    TargetingRuleScope (..),
    newTargetingRuleScope,

    -- ** TestPurchase
    TestPurchase (..),
    newTestPurchase,

    -- ** Testers
    Testers (..),
    newTesters,

    -- ** Timestamp
    Timestamp (..),
    newTimestamp,

    -- ** TokenPagination
    TokenPagination (..),
    newTokenPagination,

    -- ** Track
    Track (..),
    newTrack,

    -- ** TrackCountryAvailability
    TrackCountryAvailability (..),
    newTrackCountryAvailability,

    -- ** TrackRelease
    TrackRelease (..),
    newTrackRelease,

    -- ** TrackRelease_Status
    TrackRelease_Status (..),

    -- ** TrackTargetedCountry
    TrackTargetedCountry (..),
    newTrackTargetedCountry,

    -- ** TracksListResponse
    TracksListResponse (..),
    newTracksListResponse,

    -- ** UpgradeTargetingRule
    UpgradeTargetingRule (..),
    newUpgradeTargetingRule,

    -- ** User
    User (..),
    newUser,

    -- ** User_AccessState
    User_AccessState (..),

    -- ** User_DeveloperAccountPermissionsItem
    User_DeveloperAccountPermissionsItem (..),

    -- ** UserComment
    UserComment (..),
    newUserComment,

    -- ** UserCountrySet
    UserCountrySet (..),
    newUserCountrySet,

    -- ** UserInitiatedCancellation
    UserInitiatedCancellation (..),
    newUserInitiatedCancellation,

    -- ** UsesPermission
    UsesPermission (..),
    newUsesPermission,

    -- ** Variant
    Variant (..),
    newVariant,

    -- ** VoidedPurchase
    VoidedPurchase (..),
    newVoidedPurchase,

    -- ** VoidedPurchasesListResponse
    VoidedPurchasesListResponse (..),
    newVoidedPurchasesListResponse,

    -- ** EditsDeobfuscationfilesUploadDeobfuscationFileType
    EditsDeobfuscationfilesUploadDeobfuscationFileType (..),

    -- ** EditsExpansionfilesGetExpansionFileType
    EditsExpansionfilesGetExpansionFileType (..),

    -- ** EditsExpansionfilesPatchExpansionFileType
    EditsExpansionfilesPatchExpansionFileType (..),

    -- ** EditsExpansionfilesUpdateExpansionFileType
    EditsExpansionfilesUpdateExpansionFileType (..),

    -- ** EditsExpansionfilesUploadExpansionFileType
    EditsExpansionfilesUploadExpansionFileType (..),

    -- ** EditsImagesDeleteImageType
    EditsImagesDeleteImageType (..),

    -- ** EditsImagesDeleteallImageType
    EditsImagesDeleteallImageType (..),

    -- ** EditsImagesListImageType
    EditsImagesListImageType (..),

    -- ** EditsImagesUploadImageType
    EditsImagesUploadImageType (..),
  )
where

import Gogol.AndroidPublisher.Internal.Product
import Gogol.AndroidPublisher.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v3@ of the Google Play Android Developer API. This contains the host and root path used as a starting point for constructing service requests.
androidPublisherService :: Core.ServiceConfig
androidPublisherService =
  Core.defaultService
    (Core.ServiceId "androidpublisher:v3")
    "androidpublisher.googleapis.com"

-- | View and manage your Google Play Developer account
type Androidpublisher'FullControl = "https://www.googleapis.com/auth/androidpublisher"
