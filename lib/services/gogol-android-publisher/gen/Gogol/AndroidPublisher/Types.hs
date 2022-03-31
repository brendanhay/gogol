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

    -- ** Bundle
    Bundle (..),
    newBundle,

    -- ** BundlesListResponse
    BundlesListResponse (..),
    newBundlesListResponse,

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

    -- ** DeviceMetadata
    DeviceMetadata (..),
    newDeviceMetadata,

    -- ** DeviceSpec
    DeviceSpec (..),
    newDeviceSpec,

    -- ** ExpansionFile
    ExpansionFile (..),
    newExpansionFile,

    -- ** ExpansionFilesUploadResponse
    ExpansionFilesUploadResponse (..),
    newExpansionFilesUploadResponse,

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

    -- ** Money
    Money (..),
    newMoney,

    -- ** PageInfo
    PageInfo (..),
    newPageInfo,

    -- ** Price
    Price (..),
    newPrice,

    -- ** ProductPurchase
    ProductPurchase (..),
    newProductPurchase,

    -- ** ProductPurchasesAcknowledgeRequest
    ProductPurchasesAcknowledgeRequest (..),
    newProductPurchasesAcknowledgeRequest,

    -- ** RegionalTaxRateInfo
    RegionalTaxRateInfo (..),
    newRegionalTaxRateInfo,

    -- ** RegionalTaxRateInfo_TaxTier
    RegionalTaxRateInfo_TaxTier (..),

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

    -- ** SubscriptionCancelSurveyResult
    SubscriptionCancelSurveyResult (..),
    newSubscriptionCancelSurveyResult,

    -- ** SubscriptionDeferralInfo
    SubscriptionDeferralInfo (..),
    newSubscriptionDeferralInfo,

    -- ** SubscriptionPriceChange
    SubscriptionPriceChange (..),
    newSubscriptionPriceChange,

    -- ** SubscriptionPurchase
    SubscriptionPurchase (..),
    newSubscriptionPurchase,

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
