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
-- Module      : Gogol.AndroidPublisher
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets Android application developers access their Google Play accounts.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference>
module Gogol.AndroidPublisher
  ( -- * Configuration
    androidPublisherService,

    -- * OAuth Scopes
    Androidpublisher'FullControl,

    -- * Resources

    -- ** androidpublisher.edits.apks.addexternallyhosted
    AndroidPublisherEditsApksAddexternallyhostedResource,
    AndroidPublisherEditsApksAddexternallyhosted (..),
    newAndroidPublisherEditsApksAddexternallyhosted,

    -- ** androidpublisher.edits.apks.list
    AndroidPublisherEditsApksListResource,
    AndroidPublisherEditsApksList (..),
    newAndroidPublisherEditsApksList,

    -- ** androidpublisher.edits.apks.upload
    AndroidPublisherEditsApksUploadResource,
    AndroidPublisherEditsApksUpload (..),
    newAndroidPublisherEditsApksUpload,

    -- ** androidpublisher.edits.bundles.list
    AndroidPublisherEditsBundlesListResource,
    AndroidPublisherEditsBundlesList (..),
    newAndroidPublisherEditsBundlesList,

    -- ** androidpublisher.edits.bundles.upload
    AndroidPublisherEditsBundlesUploadResource,
    AndroidPublisherEditsBundlesUpload (..),
    newAndroidPublisherEditsBundlesUpload,

    -- ** androidpublisher.edits.commit
    AndroidPublisherEditsCommitResource,
    AndroidPublisherEditsCommit (..),
    newAndroidPublisherEditsCommit,

    -- ** androidpublisher.edits.countryavailability.get
    AndroidPublisherEditsCountryavailabilityGetResource,
    AndroidPublisherEditsCountryavailabilityGet (..),
    newAndroidPublisherEditsCountryavailabilityGet,

    -- ** androidpublisher.edits.delete
    AndroidPublisherEditsDeleteResource,
    AndroidPublisherEditsDelete (..),
    newAndroidPublisherEditsDelete,

    -- ** androidpublisher.edits.deobfuscationfiles.upload
    AndroidPublisherEditsDeobfuscationfilesUploadResource,
    AndroidPublisherEditsDeobfuscationfilesUpload (..),
    newAndroidPublisherEditsDeobfuscationfilesUpload,

    -- ** androidpublisher.edits.details.get
    AndroidPublisherEditsDetailsGetResource,
    AndroidPublisherEditsDetailsGet (..),
    newAndroidPublisherEditsDetailsGet,

    -- ** androidpublisher.edits.details.patch
    AndroidPublisherEditsDetailsPatchResource,
    AndroidPublisherEditsDetailsPatch (..),
    newAndroidPublisherEditsDetailsPatch,

    -- ** androidpublisher.edits.details.update
    AndroidPublisherEditsDetailsUpdateResource,
    AndroidPublisherEditsDetailsUpdate (..),
    newAndroidPublisherEditsDetailsUpdate,

    -- ** androidpublisher.edits.expansionfiles.get
    AndroidPublisherEditsExpansionfilesGetResource,
    AndroidPublisherEditsExpansionfilesGet (..),
    newAndroidPublisherEditsExpansionfilesGet,

    -- ** androidpublisher.edits.expansionfiles.patch
    AndroidPublisherEditsExpansionfilesPatchResource,
    AndroidPublisherEditsExpansionfilesPatch (..),
    newAndroidPublisherEditsExpansionfilesPatch,

    -- ** androidpublisher.edits.expansionfiles.update
    AndroidPublisherEditsExpansionfilesUpdateResource,
    AndroidPublisherEditsExpansionfilesUpdate (..),
    newAndroidPublisherEditsExpansionfilesUpdate,

    -- ** androidpublisher.edits.expansionfiles.upload
    AndroidPublisherEditsExpansionfilesUploadResource,
    AndroidPublisherEditsExpansionfilesUpload (..),
    newAndroidPublisherEditsExpansionfilesUpload,

    -- ** androidpublisher.edits.get
    AndroidPublisherEditsGetResource,
    AndroidPublisherEditsGet (..),
    newAndroidPublisherEditsGet,

    -- ** androidpublisher.edits.images.delete
    AndroidPublisherEditsImagesDeleteResource,
    AndroidPublisherEditsImagesDelete (..),
    newAndroidPublisherEditsImagesDelete,

    -- ** androidpublisher.edits.images.deleteall
    AndroidPublisherEditsImagesDeleteallResource,
    AndroidPublisherEditsImagesDeleteall (..),
    newAndroidPublisherEditsImagesDeleteall,

    -- ** androidpublisher.edits.images.list
    AndroidPublisherEditsImagesListResource,
    AndroidPublisherEditsImagesList (..),
    newAndroidPublisherEditsImagesList,

    -- ** androidpublisher.edits.images.upload
    AndroidPublisherEditsImagesUploadResource,
    AndroidPublisherEditsImagesUpload (..),
    newAndroidPublisherEditsImagesUpload,

    -- ** androidpublisher.edits.insert
    AndroidPublisherEditsInsertResource,
    AndroidPublisherEditsInsert (..),
    newAndroidPublisherEditsInsert,

    -- ** androidpublisher.edits.listings.delete
    AndroidPublisherEditsListingsDeleteResource,
    AndroidPublisherEditsListingsDelete (..),
    newAndroidPublisherEditsListingsDelete,

    -- ** androidpublisher.edits.listings.deleteall
    AndroidPublisherEditsListingsDeleteallResource,
    AndroidPublisherEditsListingsDeleteall (..),
    newAndroidPublisherEditsListingsDeleteall,

    -- ** androidpublisher.edits.listings.get
    AndroidPublisherEditsListingsGetResource,
    AndroidPublisherEditsListingsGet (..),
    newAndroidPublisherEditsListingsGet,

    -- ** androidpublisher.edits.listings.list
    AndroidPublisherEditsListingsListResource,
    AndroidPublisherEditsListingsList (..),
    newAndroidPublisherEditsListingsList,

    -- ** androidpublisher.edits.listings.patch
    AndroidPublisherEditsListingsPatchResource,
    AndroidPublisherEditsListingsPatch (..),
    newAndroidPublisherEditsListingsPatch,

    -- ** androidpublisher.edits.listings.update
    AndroidPublisherEditsListingsUpdateResource,
    AndroidPublisherEditsListingsUpdate (..),
    newAndroidPublisherEditsListingsUpdate,

    -- ** androidpublisher.edits.testers.get
    AndroidPublisherEditsTestersGetResource,
    AndroidPublisherEditsTestersGet (..),
    newAndroidPublisherEditsTestersGet,

    -- ** androidpublisher.edits.testers.patch
    AndroidPublisherEditsTestersPatchResource,
    AndroidPublisherEditsTestersPatch (..),
    newAndroidPublisherEditsTestersPatch,

    -- ** androidpublisher.edits.testers.update
    AndroidPublisherEditsTestersUpdateResource,
    AndroidPublisherEditsTestersUpdate (..),
    newAndroidPublisherEditsTestersUpdate,

    -- ** androidpublisher.edits.tracks.get
    AndroidPublisherEditsTracksGetResource,
    AndroidPublisherEditsTracksGet (..),
    newAndroidPublisherEditsTracksGet,

    -- ** androidpublisher.edits.tracks.list
    AndroidPublisherEditsTracksListResource,
    AndroidPublisherEditsTracksList (..),
    newAndroidPublisherEditsTracksList,

    -- ** androidpublisher.edits.tracks.patch
    AndroidPublisherEditsTracksPatchResource,
    AndroidPublisherEditsTracksPatch (..),
    newAndroidPublisherEditsTracksPatch,

    -- ** androidpublisher.edits.tracks.update
    AndroidPublisherEditsTracksUpdateResource,
    AndroidPublisherEditsTracksUpdate (..),
    newAndroidPublisherEditsTracksUpdate,

    -- ** androidpublisher.edits.validate
    AndroidPublisherEditsValidateResource,
    AndroidPublisherEditsValidate (..),
    newAndroidPublisherEditsValidate,

    -- ** androidpublisher.generatedapks.download
    AndroidPublisherGeneratedapksDownloadResource,
    AndroidPublisherGeneratedapksDownload (..),
    newAndroidPublisherGeneratedapksDownload,

    -- ** androidpublisher.generatedapks.list
    AndroidPublisherGeneratedapksListResource,
    AndroidPublisherGeneratedapksList (..),
    newAndroidPublisherGeneratedapksList,

    -- ** androidpublisher.grants.create
    AndroidPublisherGrantsCreateResource,
    AndroidPublisherGrantsCreate (..),
    newAndroidPublisherGrantsCreate,

    -- ** androidpublisher.grants.delete
    AndroidPublisherGrantsDeleteResource,
    AndroidPublisherGrantsDelete (..),
    newAndroidPublisherGrantsDelete,

    -- ** androidpublisher.grants.patch
    AndroidPublisherGrantsPatchResource,
    AndroidPublisherGrantsPatch (..),
    newAndroidPublisherGrantsPatch,

    -- ** androidpublisher.inappproducts.delete
    AndroidPublisherInappproductsDeleteResource,
    AndroidPublisherInappproductsDelete (..),
    newAndroidPublisherInappproductsDelete,

    -- ** androidpublisher.inappproducts.get
    AndroidPublisherInappproductsGetResource,
    AndroidPublisherInappproductsGet (..),
    newAndroidPublisherInappproductsGet,

    -- ** androidpublisher.inappproducts.insert
    AndroidPublisherInappproductsInsertResource,
    AndroidPublisherInappproductsInsert (..),
    newAndroidPublisherInappproductsInsert,

    -- ** androidpublisher.inappproducts.list
    AndroidPublisherInappproductsListResource,
    AndroidPublisherInappproductsList (..),
    newAndroidPublisherInappproductsList,

    -- ** androidpublisher.inappproducts.patch
    AndroidPublisherInappproductsPatchResource,
    AndroidPublisherInappproductsPatch (..),
    newAndroidPublisherInappproductsPatch,

    -- ** androidpublisher.inappproducts.update
    AndroidPublisherInappproductsUpdateResource,
    AndroidPublisherInappproductsUpdate (..),
    newAndroidPublisherInappproductsUpdate,

    -- ** androidpublisher.internalappsharingartifacts.uploadapk
    AndroidPublisherInternalappsharingartifactsUploadapkResource,
    AndroidPublisherInternalappsharingartifactsUploadapk (..),
    newAndroidPublisherInternalappsharingartifactsUploadapk,

    -- ** androidpublisher.internalappsharingartifacts.uploadbundle
    AndroidPublisherInternalappsharingartifactsUploadbundleResource,
    AndroidPublisherInternalappsharingartifactsUploadbundle (..),
    newAndroidPublisherInternalappsharingartifactsUploadbundle,

    -- ** androidpublisher.monetization.convertRegionPrices
    AndroidPublisherMonetizationConvertRegionPricesResource,
    AndroidPublisherMonetizationConvertRegionPrices (..),
    newAndroidPublisherMonetizationConvertRegionPrices,

    -- ** androidpublisher.orders.refund
    AndroidPublisherOrdersRefundResource,
    AndroidPublisherOrdersRefund (..),
    newAndroidPublisherOrdersRefund,

    -- ** androidpublisher.purchases.products.acknowledge
    AndroidPublisherPurchasesProductsAcknowledgeResource,
    AndroidPublisherPurchasesProductsAcknowledge (..),
    newAndroidPublisherPurchasesProductsAcknowledge,

    -- ** androidpublisher.purchases.products.get
    AndroidPublisherPurchasesProductsGetResource,
    AndroidPublisherPurchasesProductsGet (..),
    newAndroidPublisherPurchasesProductsGet,

    -- ** androidpublisher.purchases.subscriptions.acknowledge
    AndroidPublisherPurchasesSubscriptionsAcknowledgeResource,
    AndroidPublisherPurchasesSubscriptionsAcknowledge (..),
    newAndroidPublisherPurchasesSubscriptionsAcknowledge,

    -- ** androidpublisher.purchases.subscriptions.cancel
    AndroidPublisherPurchasesSubscriptionsCancelResource,
    AndroidPublisherPurchasesSubscriptionsCancel (..),
    newAndroidPublisherPurchasesSubscriptionsCancel,

    -- ** androidpublisher.purchases.subscriptions.defer
    AndroidPublisherPurchasesSubscriptionsDeferResource,
    AndroidPublisherPurchasesSubscriptionsDefer (..),
    newAndroidPublisherPurchasesSubscriptionsDefer,

    -- ** androidpublisher.purchases.subscriptions.get
    AndroidPublisherPurchasesSubscriptionsGetResource,
    AndroidPublisherPurchasesSubscriptionsGet (..),
    newAndroidPublisherPurchasesSubscriptionsGet,

    -- ** androidpublisher.purchases.subscriptions.refund
    AndroidPublisherPurchasesSubscriptionsRefundResource,
    AndroidPublisherPurchasesSubscriptionsRefund (..),
    newAndroidPublisherPurchasesSubscriptionsRefund,

    -- ** androidpublisher.purchases.subscriptions.revoke
    AndroidPublisherPurchasesSubscriptionsRevokeResource,
    AndroidPublisherPurchasesSubscriptionsRevoke (..),
    newAndroidPublisherPurchasesSubscriptionsRevoke,

    -- ** androidpublisher.purchases.voidedpurchases.list
    AndroidPublisherPurchasesVoidedpurchasesListResource,
    AndroidPublisherPurchasesVoidedpurchasesList (..),
    newAndroidPublisherPurchasesVoidedpurchasesList,

    -- ** androidpublisher.reviews.get
    AndroidPublisherReviewsGetResource,
    AndroidPublisherReviewsGet (..),
    newAndroidPublisherReviewsGet,

    -- ** androidpublisher.reviews.list
    AndroidPublisherReviewsListResource,
    AndroidPublisherReviewsList (..),
    newAndroidPublisherReviewsList,

    -- ** androidpublisher.reviews.reply
    AndroidPublisherReviewsReplyResource,
    AndroidPublisherReviewsReply (..),
    newAndroidPublisherReviewsReply,

    -- ** androidpublisher.systemapks.variants.create
    AndroidPublisherSystemapksVariantsCreateResource,
    AndroidPublisherSystemapksVariantsCreate (..),
    newAndroidPublisherSystemapksVariantsCreate,

    -- ** androidpublisher.systemapks.variants.download
    AndroidPublisherSystemapksVariantsDownloadResource,
    AndroidPublisherSystemapksVariantsDownload (..),
    newAndroidPublisherSystemapksVariantsDownload,

    -- ** androidpublisher.systemapks.variants.get
    AndroidPublisherSystemapksVariantsGetResource,
    AndroidPublisherSystemapksVariantsGet (..),
    newAndroidPublisherSystemapksVariantsGet,

    -- ** androidpublisher.systemapks.variants.list
    AndroidPublisherSystemapksVariantsListResource,
    AndroidPublisherSystemapksVariantsList (..),
    newAndroidPublisherSystemapksVariantsList,

    -- ** androidpublisher.users.create
    AndroidPublisherUsersCreateResource,
    AndroidPublisherUsersCreate (..),
    newAndroidPublisherUsersCreate,

    -- ** androidpublisher.users.delete
    AndroidPublisherUsersDeleteResource,
    AndroidPublisherUsersDelete (..),
    newAndroidPublisherUsersDelete,

    -- ** androidpublisher.users.list
    AndroidPublisherUsersListResource,
    AndroidPublisherUsersList (..),
    newAndroidPublisherUsersList,

    -- ** androidpublisher.users.patch
    AndroidPublisherUsersPatchResource,
    AndroidPublisherUsersPatch (..),
    newAndroidPublisherUsersPatch,

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

import Gogol.AndroidPublisher.Edits.Apks.Addexternallyhosted
import Gogol.AndroidPublisher.Edits.Apks.List
import Gogol.AndroidPublisher.Edits.Apks.Upload
import Gogol.AndroidPublisher.Edits.Bundles.List
import Gogol.AndroidPublisher.Edits.Bundles.Upload
import Gogol.AndroidPublisher.Edits.Commit
import Gogol.AndroidPublisher.Edits.Countryavailability.Get
import Gogol.AndroidPublisher.Edits.Delete
import Gogol.AndroidPublisher.Edits.Deobfuscationfiles.Upload
import Gogol.AndroidPublisher.Edits.Details.Get
import Gogol.AndroidPublisher.Edits.Details.Patch
import Gogol.AndroidPublisher.Edits.Details.Update
import Gogol.AndroidPublisher.Edits.Expansionfiles.Get
import Gogol.AndroidPublisher.Edits.Expansionfiles.Patch
import Gogol.AndroidPublisher.Edits.Expansionfiles.Update
import Gogol.AndroidPublisher.Edits.Expansionfiles.Upload
import Gogol.AndroidPublisher.Edits.Get
import Gogol.AndroidPublisher.Edits.Images.Delete
import Gogol.AndroidPublisher.Edits.Images.Deleteall
import Gogol.AndroidPublisher.Edits.Images.List
import Gogol.AndroidPublisher.Edits.Images.Upload
import Gogol.AndroidPublisher.Edits.Insert
import Gogol.AndroidPublisher.Edits.Listings.Delete
import Gogol.AndroidPublisher.Edits.Listings.Deleteall
import Gogol.AndroidPublisher.Edits.Listings.Get
import Gogol.AndroidPublisher.Edits.Listings.List
import Gogol.AndroidPublisher.Edits.Listings.Patch
import Gogol.AndroidPublisher.Edits.Listings.Update
import Gogol.AndroidPublisher.Edits.Testers.Get
import Gogol.AndroidPublisher.Edits.Testers.Patch
import Gogol.AndroidPublisher.Edits.Testers.Update
import Gogol.AndroidPublisher.Edits.Tracks.Get
import Gogol.AndroidPublisher.Edits.Tracks.List
import Gogol.AndroidPublisher.Edits.Tracks.Patch
import Gogol.AndroidPublisher.Edits.Tracks.Update
import Gogol.AndroidPublisher.Edits.Validate
import Gogol.AndroidPublisher.Generatedapks.Download
import Gogol.AndroidPublisher.Generatedapks.List
import Gogol.AndroidPublisher.Grants.Create
import Gogol.AndroidPublisher.Grants.Delete
import Gogol.AndroidPublisher.Grants.Patch
import Gogol.AndroidPublisher.Inappproducts.Delete
import Gogol.AndroidPublisher.Inappproducts.Get
import Gogol.AndroidPublisher.Inappproducts.Insert
import Gogol.AndroidPublisher.Inappproducts.List
import Gogol.AndroidPublisher.Inappproducts.Patch
import Gogol.AndroidPublisher.Inappproducts.Update
import Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadapk
import Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadbundle
import Gogol.AndroidPublisher.Monetization.ConvertRegionPrices
import Gogol.AndroidPublisher.Orders.Refund
import Gogol.AndroidPublisher.Purchases.Products.Acknowledge
import Gogol.AndroidPublisher.Purchases.Products.Get
import Gogol.AndroidPublisher.Purchases.Subscriptions.Acknowledge
import Gogol.AndroidPublisher.Purchases.Subscriptions.Cancel
import Gogol.AndroidPublisher.Purchases.Subscriptions.Defer
import Gogol.AndroidPublisher.Purchases.Subscriptions.Get
import Gogol.AndroidPublisher.Purchases.Subscriptions.Refund
import Gogol.AndroidPublisher.Purchases.Subscriptions.Revoke
import Gogol.AndroidPublisher.Purchases.Voidedpurchases.List
import Gogol.AndroidPublisher.Reviews.Get
import Gogol.AndroidPublisher.Reviews.List
import Gogol.AndroidPublisher.Reviews.Reply
import Gogol.AndroidPublisher.Systemapks.Variants.Create
import Gogol.AndroidPublisher.Systemapks.Variants.Download
import Gogol.AndroidPublisher.Systemapks.Variants.Get
import Gogol.AndroidPublisher.Systemapks.Variants.List
import Gogol.AndroidPublisher.Types
import Gogol.AndroidPublisher.Users.Create
import Gogol.AndroidPublisher.Users.Delete
import Gogol.AndroidPublisher.Users.List
import Gogol.AndroidPublisher.Users.Patch
