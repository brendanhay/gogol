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
-- Module      : Network.Google.AndroidPublisher
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets Android application developers access their Google Play accounts.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference>
module Network.Google.AndroidPublisher
  ( -- * Configuration
    androidPublisherService,

    -- * OAuth Scopes
    androidPublisherScope,

    -- * Resources

    -- ** androidpublisher.edits.apks.addexternallyhosted
    AndroidPublisherEditsApksAddexternallyhostedResource,
    newAndroidPublisherEditsApksAddexternallyhosted,
    AndroidPublisherEditsApksAddexternallyhosted,

    -- ** androidpublisher.edits.apks.list
    AndroidPublisherEditsApksListResource,
    newAndroidPublisherEditsApksList,
    AndroidPublisherEditsApksList,

    -- ** androidpublisher.edits.apks.upload
    AndroidPublisherEditsApksUploadResource,
    newAndroidPublisherEditsApksUpload,
    AndroidPublisherEditsApksUpload,

    -- ** androidpublisher.edits.bundles.list
    AndroidPublisherEditsBundlesListResource,
    newAndroidPublisherEditsBundlesList,
    AndroidPublisherEditsBundlesList,

    -- ** androidpublisher.edits.bundles.upload
    AndroidPublisherEditsBundlesUploadResource,
    newAndroidPublisherEditsBundlesUpload,
    AndroidPublisherEditsBundlesUpload,

    -- ** androidpublisher.edits.commit
    AndroidPublisherEditsCommitResource,
    newAndroidPublisherEditsCommit,
    AndroidPublisherEditsCommit,

    -- ** androidpublisher.edits.countryavailability.get
    AndroidPublisherEditsCountryavailabilityGetResource,
    newAndroidPublisherEditsCountryavailabilityGet,
    AndroidPublisherEditsCountryavailabilityGet,

    -- ** androidpublisher.edits.delete
    AndroidPublisherEditsDeleteResource,
    newAndroidPublisherEditsDelete,
    AndroidPublisherEditsDelete,

    -- ** androidpublisher.edits.deobfuscationfiles.upload
    AndroidPublisherEditsDeobfuscationfilesUploadResource,
    newAndroidPublisherEditsDeobfuscationfilesUpload,
    AndroidPublisherEditsDeobfuscationfilesUpload,

    -- ** androidpublisher.edits.details.get
    AndroidPublisherEditsDetailsGetResource,
    newAndroidPublisherEditsDetailsGet,
    AndroidPublisherEditsDetailsGet,

    -- ** androidpublisher.edits.details.patch
    AndroidPublisherEditsDetailsPatchResource,
    newAndroidPublisherEditsDetailsPatch,
    AndroidPublisherEditsDetailsPatch,

    -- ** androidpublisher.edits.details.update
    AndroidPublisherEditsDetailsUpdateResource,
    newAndroidPublisherEditsDetailsUpdate,
    AndroidPublisherEditsDetailsUpdate,

    -- ** androidpublisher.edits.expansionfiles.get
    AndroidPublisherEditsExpansionfilesGetResource,
    newAndroidPublisherEditsExpansionfilesGet,
    AndroidPublisherEditsExpansionfilesGet,

    -- ** androidpublisher.edits.expansionfiles.patch
    AndroidPublisherEditsExpansionfilesPatchResource,
    newAndroidPublisherEditsExpansionfilesPatch,
    AndroidPublisherEditsExpansionfilesPatch,

    -- ** androidpublisher.edits.expansionfiles.update
    AndroidPublisherEditsExpansionfilesUpdateResource,
    newAndroidPublisherEditsExpansionfilesUpdate,
    AndroidPublisherEditsExpansionfilesUpdate,

    -- ** androidpublisher.edits.expansionfiles.upload
    AndroidPublisherEditsExpansionfilesUploadResource,
    newAndroidPublisherEditsExpansionfilesUpload,
    AndroidPublisherEditsExpansionfilesUpload,

    -- ** androidpublisher.edits.get
    AndroidPublisherEditsGetResource,
    newAndroidPublisherEditsGet,
    AndroidPublisherEditsGet,

    -- ** androidpublisher.edits.images.delete
    AndroidPublisherEditsImagesDeleteResource,
    newAndroidPublisherEditsImagesDelete,
    AndroidPublisherEditsImagesDelete,

    -- ** androidpublisher.edits.images.deleteall
    AndroidPublisherEditsImagesDeleteallResource,
    newAndroidPublisherEditsImagesDeleteall,
    AndroidPublisherEditsImagesDeleteall,

    -- ** androidpublisher.edits.images.list
    AndroidPublisherEditsImagesListResource,
    newAndroidPublisherEditsImagesList,
    AndroidPublisherEditsImagesList,

    -- ** androidpublisher.edits.images.upload
    AndroidPublisherEditsImagesUploadResource,
    newAndroidPublisherEditsImagesUpload,
    AndroidPublisherEditsImagesUpload,

    -- ** androidpublisher.edits.insert
    AndroidPublisherEditsInsertResource,
    newAndroidPublisherEditsInsert,
    AndroidPublisherEditsInsert,

    -- ** androidpublisher.edits.listings.delete
    AndroidPublisherEditsListingsDeleteResource,
    newAndroidPublisherEditsListingsDelete,
    AndroidPublisherEditsListingsDelete,

    -- ** androidpublisher.edits.listings.deleteall
    AndroidPublisherEditsListingsDeleteallResource,
    newAndroidPublisherEditsListingsDeleteall,
    AndroidPublisherEditsListingsDeleteall,

    -- ** androidpublisher.edits.listings.get
    AndroidPublisherEditsListingsGetResource,
    newAndroidPublisherEditsListingsGet,
    AndroidPublisherEditsListingsGet,

    -- ** androidpublisher.edits.listings.list
    AndroidPublisherEditsListingsListResource,
    newAndroidPublisherEditsListingsList,
    AndroidPublisherEditsListingsList,

    -- ** androidpublisher.edits.listings.patch
    AndroidPublisherEditsListingsPatchResource,
    newAndroidPublisherEditsListingsPatch,
    AndroidPublisherEditsListingsPatch,

    -- ** androidpublisher.edits.listings.update
    AndroidPublisherEditsListingsUpdateResource,
    newAndroidPublisherEditsListingsUpdate,
    AndroidPublisherEditsListingsUpdate,

    -- ** androidpublisher.edits.testers.get
    AndroidPublisherEditsTestersGetResource,
    newAndroidPublisherEditsTestersGet,
    AndroidPublisherEditsTestersGet,

    -- ** androidpublisher.edits.testers.patch
    AndroidPublisherEditsTestersPatchResource,
    newAndroidPublisherEditsTestersPatch,
    AndroidPublisherEditsTestersPatch,

    -- ** androidpublisher.edits.testers.update
    AndroidPublisherEditsTestersUpdateResource,
    newAndroidPublisherEditsTestersUpdate,
    AndroidPublisherEditsTestersUpdate,

    -- ** androidpublisher.edits.tracks.get
    AndroidPublisherEditsTracksGetResource,
    newAndroidPublisherEditsTracksGet,
    AndroidPublisherEditsTracksGet,

    -- ** androidpublisher.edits.tracks.list
    AndroidPublisherEditsTracksListResource,
    newAndroidPublisherEditsTracksList,
    AndroidPublisherEditsTracksList,

    -- ** androidpublisher.edits.tracks.patch
    AndroidPublisherEditsTracksPatchResource,
    newAndroidPublisherEditsTracksPatch,
    AndroidPublisherEditsTracksPatch,

    -- ** androidpublisher.edits.tracks.update
    AndroidPublisherEditsTracksUpdateResource,
    newAndroidPublisherEditsTracksUpdate,
    AndroidPublisherEditsTracksUpdate,

    -- ** androidpublisher.edits.validate
    AndroidPublisherEditsValidateResource,
    newAndroidPublisherEditsValidate,
    AndroidPublisherEditsValidate,

    -- ** androidpublisher.generatedapks.download
    AndroidPublisherGeneratedapksDownloadResource,
    newAndroidPublisherGeneratedapksDownload,
    AndroidPublisherGeneratedapksDownload,

    -- ** androidpublisher.generatedapks.list
    AndroidPublisherGeneratedapksListResource,
    newAndroidPublisherGeneratedapksList,
    AndroidPublisherGeneratedapksList,

    -- ** androidpublisher.grants.create
    AndroidPublisherGrantsCreateResource,
    newAndroidPublisherGrantsCreate,
    AndroidPublisherGrantsCreate,

    -- ** androidpublisher.grants.delete
    AndroidPublisherGrantsDeleteResource,
    newAndroidPublisherGrantsDelete,
    AndroidPublisherGrantsDelete,

    -- ** androidpublisher.grants.patch
    AndroidPublisherGrantsPatchResource,
    newAndroidPublisherGrantsPatch,
    AndroidPublisherGrantsPatch,

    -- ** androidpublisher.inappproducts.delete
    AndroidPublisherInappproductsDeleteResource,
    newAndroidPublisherInappproductsDelete,
    AndroidPublisherInappproductsDelete,

    -- ** androidpublisher.inappproducts.get
    AndroidPublisherInappproductsGetResource,
    newAndroidPublisherInappproductsGet,
    AndroidPublisherInappproductsGet,

    -- ** androidpublisher.inappproducts.insert
    AndroidPublisherInappproductsInsertResource,
    newAndroidPublisherInappproductsInsert,
    AndroidPublisherInappproductsInsert,

    -- ** androidpublisher.inappproducts.list
    AndroidPublisherInappproductsListResource,
    newAndroidPublisherInappproductsList,
    AndroidPublisherInappproductsList,

    -- ** androidpublisher.inappproducts.patch
    AndroidPublisherInappproductsPatchResource,
    newAndroidPublisherInappproductsPatch,
    AndroidPublisherInappproductsPatch,

    -- ** androidpublisher.inappproducts.update
    AndroidPublisherInappproductsUpdateResource,
    newAndroidPublisherInappproductsUpdate,
    AndroidPublisherInappproductsUpdate,

    -- ** androidpublisher.internalappsharingartifacts.uploadapk
    AndroidPublisherInternalappsharingartifactsUploadapkResource,
    newAndroidPublisherInternalappsharingartifactsUploadapk,
    AndroidPublisherInternalappsharingartifactsUploadapk,

    -- ** androidpublisher.internalappsharingartifacts.uploadbundle
    AndroidPublisherInternalappsharingartifactsUploadbundleResource,
    newAndroidPublisherInternalappsharingartifactsUploadbundle,
    AndroidPublisherInternalappsharingartifactsUploadbundle,

    -- ** androidpublisher.monetization.convertRegionPrices
    AndroidPublisherMonetizationConvertRegionPricesResource,
    newAndroidPublisherMonetizationConvertRegionPrices,
    AndroidPublisherMonetizationConvertRegionPrices,

    -- ** androidpublisher.orders.refund
    AndroidPublisherOrdersRefundResource,
    newAndroidPublisherOrdersRefund,
    AndroidPublisherOrdersRefund,

    -- ** androidpublisher.purchases.products.acknowledge
    AndroidPublisherPurchasesProductsAcknowledgeResource,
    newAndroidPublisherPurchasesProductsAcknowledge,
    AndroidPublisherPurchasesProductsAcknowledge,

    -- ** androidpublisher.purchases.products.get
    AndroidPublisherPurchasesProductsGetResource,
    newAndroidPublisherPurchasesProductsGet,
    AndroidPublisherPurchasesProductsGet,

    -- ** androidpublisher.purchases.subscriptions.acknowledge
    AndroidPublisherPurchasesSubscriptionsAcknowledgeResource,
    newAndroidPublisherPurchasesSubscriptionsAcknowledge,
    AndroidPublisherPurchasesSubscriptionsAcknowledge,

    -- ** androidpublisher.purchases.subscriptions.cancel
    AndroidPublisherPurchasesSubscriptionsCancelResource,
    newAndroidPublisherPurchasesSubscriptionsCancel,
    AndroidPublisherPurchasesSubscriptionsCancel,

    -- ** androidpublisher.purchases.subscriptions.defer
    AndroidPublisherPurchasesSubscriptionsDeferResource,
    newAndroidPublisherPurchasesSubscriptionsDefer,
    AndroidPublisherPurchasesSubscriptionsDefer,

    -- ** androidpublisher.purchases.subscriptions.get
    AndroidPublisherPurchasesSubscriptionsGetResource,
    newAndroidPublisherPurchasesSubscriptionsGet,
    AndroidPublisherPurchasesSubscriptionsGet,

    -- ** androidpublisher.purchases.subscriptions.refund
    AndroidPublisherPurchasesSubscriptionsRefundResource,
    newAndroidPublisherPurchasesSubscriptionsRefund,
    AndroidPublisherPurchasesSubscriptionsRefund,

    -- ** androidpublisher.purchases.subscriptions.revoke
    AndroidPublisherPurchasesSubscriptionsRevokeResource,
    newAndroidPublisherPurchasesSubscriptionsRevoke,
    AndroidPublisherPurchasesSubscriptionsRevoke,

    -- ** androidpublisher.purchases.voidedpurchases.list
    AndroidPublisherPurchasesVoidedpurchasesListResource,
    newAndroidPublisherPurchasesVoidedpurchasesList,
    AndroidPublisherPurchasesVoidedpurchasesList,

    -- ** androidpublisher.reviews.get
    AndroidPublisherReviewsGetResource,
    newAndroidPublisherReviewsGet,
    AndroidPublisherReviewsGet,

    -- ** androidpublisher.reviews.list
    AndroidPublisherReviewsListResource,
    newAndroidPublisherReviewsList,
    AndroidPublisherReviewsList,

    -- ** androidpublisher.reviews.reply
    AndroidPublisherReviewsReplyResource,
    newAndroidPublisherReviewsReply,
    AndroidPublisherReviewsReply,

    -- ** androidpublisher.systemapks.variants.create
    AndroidPublisherSystemapksVariantsCreateResource,
    newAndroidPublisherSystemapksVariantsCreate,
    AndroidPublisherSystemapksVariantsCreate,

    -- ** androidpublisher.systemapks.variants.download
    AndroidPublisherSystemapksVariantsDownloadResource,
    newAndroidPublisherSystemapksVariantsDownload,
    AndroidPublisherSystemapksVariantsDownload,

    -- ** androidpublisher.systemapks.variants.get
    AndroidPublisherSystemapksVariantsGetResource,
    newAndroidPublisherSystemapksVariantsGet,
    AndroidPublisherSystemapksVariantsGet,

    -- ** androidpublisher.systemapks.variants.list
    AndroidPublisherSystemapksVariantsListResource,
    newAndroidPublisherSystemapksVariantsList,
    AndroidPublisherSystemapksVariantsList,

    -- ** androidpublisher.users.create
    AndroidPublisherUsersCreateResource,
    newAndroidPublisherUsersCreate,
    AndroidPublisherUsersCreate,

    -- ** androidpublisher.users.delete
    AndroidPublisherUsersDeleteResource,
    newAndroidPublisherUsersDelete,
    AndroidPublisherUsersDelete,

    -- ** androidpublisher.users.list
    AndroidPublisherUsersListResource,
    newAndroidPublisherUsersList,
    AndroidPublisherUsersList,

    -- ** androidpublisher.users.patch
    AndroidPublisherUsersPatchResource,
    newAndroidPublisherUsersPatch,
    AndroidPublisherUsersPatch,

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

import Network.Google.AndroidPublisher.Edits.Apks.Addexternallyhosted
import Network.Google.AndroidPublisher.Edits.Apks.List
import Network.Google.AndroidPublisher.Edits.Apks.Upload
import Network.Google.AndroidPublisher.Edits.Bundles.List
import Network.Google.AndroidPublisher.Edits.Bundles.Upload
import Network.Google.AndroidPublisher.Edits.Commit
import Network.Google.AndroidPublisher.Edits.Countryavailability.Get
import Network.Google.AndroidPublisher.Edits.Delete
import Network.Google.AndroidPublisher.Edits.Deobfuscationfiles.Upload
import Network.Google.AndroidPublisher.Edits.Details.Get
import Network.Google.AndroidPublisher.Edits.Details.Patch
import Network.Google.AndroidPublisher.Edits.Details.Update
import Network.Google.AndroidPublisher.Edits.Expansionfiles.Get
import Network.Google.AndroidPublisher.Edits.Expansionfiles.Patch
import Network.Google.AndroidPublisher.Edits.Expansionfiles.Update
import Network.Google.AndroidPublisher.Edits.Expansionfiles.Upload
import Network.Google.AndroidPublisher.Edits.Get
import Network.Google.AndroidPublisher.Edits.Images.Delete
import Network.Google.AndroidPublisher.Edits.Images.Deleteall
import Network.Google.AndroidPublisher.Edits.Images.List
import Network.Google.AndroidPublisher.Edits.Images.Upload
import Network.Google.AndroidPublisher.Edits.Insert
import Network.Google.AndroidPublisher.Edits.Listings.Delete
import Network.Google.AndroidPublisher.Edits.Listings.Deleteall
import Network.Google.AndroidPublisher.Edits.Listings.Get
import Network.Google.AndroidPublisher.Edits.Listings.List
import Network.Google.AndroidPublisher.Edits.Listings.Patch
import Network.Google.AndroidPublisher.Edits.Listings.Update
import Network.Google.AndroidPublisher.Edits.Testers.Get
import Network.Google.AndroidPublisher.Edits.Testers.Patch
import Network.Google.AndroidPublisher.Edits.Testers.Update
import Network.Google.AndroidPublisher.Edits.Tracks.Get
import Network.Google.AndroidPublisher.Edits.Tracks.List
import Network.Google.AndroidPublisher.Edits.Tracks.Patch
import Network.Google.AndroidPublisher.Edits.Tracks.Update
import Network.Google.AndroidPublisher.Edits.Validate
import Network.Google.AndroidPublisher.Generatedapks.Download
import Network.Google.AndroidPublisher.Generatedapks.List
import Network.Google.AndroidPublisher.Grants.Create
import Network.Google.AndroidPublisher.Grants.Delete
import Network.Google.AndroidPublisher.Grants.Patch
import Network.Google.AndroidPublisher.Inappproducts.Delete
import Network.Google.AndroidPublisher.Inappproducts.Get
import Network.Google.AndroidPublisher.Inappproducts.Insert
import Network.Google.AndroidPublisher.Inappproducts.List
import Network.Google.AndroidPublisher.Inappproducts.Patch
import Network.Google.AndroidPublisher.Inappproducts.Update
import Network.Google.AndroidPublisher.Internalappsharingartifacts.Uploadapk
import Network.Google.AndroidPublisher.Internalappsharingartifacts.Uploadbundle
import Network.Google.AndroidPublisher.Monetization.ConvertRegionPrices
import Network.Google.AndroidPublisher.Orders.Refund
import Network.Google.AndroidPublisher.Purchases.Products.Acknowledge
import Network.Google.AndroidPublisher.Purchases.Products.Get
import Network.Google.AndroidPublisher.Purchases.Subscriptions.Acknowledge
import Network.Google.AndroidPublisher.Purchases.Subscriptions.Cancel
import Network.Google.AndroidPublisher.Purchases.Subscriptions.Defer
import Network.Google.AndroidPublisher.Purchases.Subscriptions.Get
import Network.Google.AndroidPublisher.Purchases.Subscriptions.Refund
import Network.Google.AndroidPublisher.Purchases.Subscriptions.Revoke
import Network.Google.AndroidPublisher.Purchases.Voidedpurchases.List
import Network.Google.AndroidPublisher.Reviews.Get
import Network.Google.AndroidPublisher.Reviews.List
import Network.Google.AndroidPublisher.Reviews.Reply
import Network.Google.AndroidPublisher.Systemapks.Variants.Create
import Network.Google.AndroidPublisher.Systemapks.Variants.Download
import Network.Google.AndroidPublisher.Systemapks.Variants.Get
import Network.Google.AndroidPublisher.Systemapks.Variants.List
import Network.Google.AndroidPublisher.Types
import Network.Google.AndroidPublisher.Users.Create
import Network.Google.AndroidPublisher.Users.Delete
import Network.Google.AndroidPublisher.Users.List
import Network.Google.AndroidPublisher.Users.Patch
