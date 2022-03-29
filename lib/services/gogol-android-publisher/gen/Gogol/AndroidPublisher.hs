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
    AndroidPublisherService,
    mkAndroidPublisherService,

    -- ** Global Request Parameters
    AndroidPublisherParams (..),

    -- ** OAuth Scopes
    Androidpublisher'FullControl,

    -- * Resources

    -- ** @androidpublisher.edits.apks.addexternallyhosted@
    AndroidPublisherEditsApksAddexternallyhosted (..),

    -- ** @androidpublisher.edits.apks.list@
    AndroidPublisherEditsApksList (..),

    -- ** @androidpublisher.edits.apks.upload@
    AndroidPublisherEditsApksUpload (..),

    -- ** @androidpublisher.edits.bundles.list@
    AndroidPublisherEditsBundlesList (..),

    -- ** @androidpublisher.edits.bundles.upload@
    AndroidPublisherEditsBundlesUpload (..),
    mkAndroidPublisherEditsBundlesUpload,

    -- ** @androidpublisher.edits.commit@
    AndroidPublisherEditsCommit (..),
    mkAndroidPublisherEditsCommit,

    -- ** @androidpublisher.edits.countryavailability.get@
    AndroidPublisherEditsCountryavailabilityGet (..),

    -- ** @androidpublisher.edits.delete@
    AndroidPublisherEditsDelete (..),

    -- ** @androidpublisher.edits.deobfuscationfiles.upload@
    AndroidPublisherEditsDeobfuscationfilesUpload (..),

    -- ** @androidpublisher.edits.details.get@
    AndroidPublisherEditsDetailsGet (..),

    -- ** @androidpublisher.edits.details.patch@
    AndroidPublisherEditsDetailsPatch (..),

    -- ** @androidpublisher.edits.details.update@
    AndroidPublisherEditsDetailsUpdate (..),

    -- ** @androidpublisher.edits.expansionfiles.get@
    AndroidPublisherEditsExpansionfilesGet (..),

    -- ** @androidpublisher.edits.expansionfiles.patch@
    AndroidPublisherEditsExpansionfilesPatch (..),

    -- ** @androidpublisher.edits.expansionfiles.update@
    AndroidPublisherEditsExpansionfilesUpdate (..),

    -- ** @androidpublisher.edits.expansionfiles.upload@
    AndroidPublisherEditsExpansionfilesUpload (..),

    -- ** @androidpublisher.edits.get@
    AndroidPublisherEditsGet (..),

    -- ** @androidpublisher.edits.images.delete@
    AndroidPublisherEditsImagesDelete (..),

    -- ** @androidpublisher.edits.images.deleteall@
    AndroidPublisherEditsImagesDeleteall (..),

    -- ** @androidpublisher.edits.images.list@
    AndroidPublisherEditsImagesList (..),

    -- ** @androidpublisher.edits.images.upload@
    AndroidPublisherEditsImagesUpload (..),

    -- ** @androidpublisher.edits.insert@
    AndroidPublisherEditsInsert (..),

    -- ** @androidpublisher.edits.listings.delete@
    AndroidPublisherEditsListingsDelete (..),

    -- ** @androidpublisher.edits.listings.deleteall@
    AndroidPublisherEditsListingsDeleteall (..),

    -- ** @androidpublisher.edits.listings.get@
    AndroidPublisherEditsListingsGet (..),

    -- ** @androidpublisher.edits.listings.list@
    AndroidPublisherEditsListingsList (..),

    -- ** @androidpublisher.edits.listings.patch@
    AndroidPublisherEditsListingsPatch (..),

    -- ** @androidpublisher.edits.listings.update@
    AndroidPublisherEditsListingsUpdate (..),

    -- ** @androidpublisher.edits.testers.get@
    AndroidPublisherEditsTestersGet (..),

    -- ** @androidpublisher.edits.testers.patch@
    AndroidPublisherEditsTestersPatch (..),

    -- ** @androidpublisher.edits.testers.update@
    AndroidPublisherEditsTestersUpdate (..),

    -- ** @androidpublisher.edits.tracks.get@
    AndroidPublisherEditsTracksGet (..),

    -- ** @androidpublisher.edits.tracks.list@
    AndroidPublisherEditsTracksList (..),

    -- ** @androidpublisher.edits.tracks.patch@
    AndroidPublisherEditsTracksPatch (..),

    -- ** @androidpublisher.edits.tracks.update@
    AndroidPublisherEditsTracksUpdate (..),

    -- ** @androidpublisher.edits.validate@
    AndroidPublisherEditsValidate (..),

    -- ** @androidpublisher.generatedapks.download@
    AndroidPublisherGeneratedapksDownload (..),

    -- ** @androidpublisher.generatedapks.list@
    AndroidPublisherGeneratedapksList (..),

    -- ** @androidpublisher.grants.create@
    AndroidPublisherGrantsCreate (..),

    -- ** @androidpublisher.grants.delete@
    AndroidPublisherGrantsDelete (..),

    -- ** @androidpublisher.grants.patch@
    AndroidPublisherGrantsPatch (..),
    mkAndroidPublisherGrantsPatch,

    -- ** @androidpublisher.inappproducts.delete@
    AndroidPublisherInappproductsDelete (..),

    -- ** @androidpublisher.inappproducts.get@
    AndroidPublisherInappproductsGet (..),

    -- ** @androidpublisher.inappproducts.insert@
    AndroidPublisherInappproductsInsert (..),
    mkAndroidPublisherInappproductsInsert,

    -- ** @androidpublisher.inappproducts.list@
    AndroidPublisherInappproductsList (..),
    mkAndroidPublisherInappproductsList,

    -- ** @androidpublisher.inappproducts.patch@
    AndroidPublisherInappproductsPatch (..),
    mkAndroidPublisherInappproductsPatch,

    -- ** @androidpublisher.inappproducts.update@
    AndroidPublisherInappproductsUpdate (..),
    mkAndroidPublisherInappproductsUpdate,

    -- ** @androidpublisher.internalappsharingartifacts.uploadapk@
    AndroidPublisherInternalappsharingartifactsUploadapk (..),

    -- ** @androidpublisher.internalappsharingartifacts.uploadbundle@
    AndroidPublisherInternalappsharingartifactsUploadbundle (..),

    -- ** @androidpublisher.monetization.convertRegionPrices@
    AndroidPublisherMonetizationConvertRegionPrices (..),

    -- ** @androidpublisher.orders.refund@
    AndroidPublisherOrdersRefund (..),
    mkAndroidPublisherOrdersRefund,

    -- ** @androidpublisher.purchases.products.acknowledge@
    AndroidPublisherPurchasesProductsAcknowledge (..),

    -- ** @androidpublisher.purchases.products.get@
    AndroidPublisherPurchasesProductsGet (..),

    -- ** @androidpublisher.purchases.subscriptions.acknowledge@
    AndroidPublisherPurchasesSubscriptionsAcknowledge (..),

    -- ** @androidpublisher.purchases.subscriptions.cancel@
    AndroidPublisherPurchasesSubscriptionsCancel (..),

    -- ** @androidpublisher.purchases.subscriptions.defer@
    AndroidPublisherPurchasesSubscriptionsDefer (..),

    -- ** @androidpublisher.purchases.subscriptions.get@
    AndroidPublisherPurchasesSubscriptionsGet (..),

    -- ** @androidpublisher.purchases.subscriptions.refund@
    AndroidPublisherPurchasesSubscriptionsRefund (..),

    -- ** @androidpublisher.purchases.subscriptions.revoke@
    AndroidPublisherPurchasesSubscriptionsRevoke (..),

    -- ** @androidpublisher.purchases.voidedpurchases.list@
    AndroidPublisherPurchasesVoidedpurchasesList (..),
    mkAndroidPublisherPurchasesVoidedpurchasesList,

    -- ** @androidpublisher.reviews.get@
    AndroidPublisherReviewsGet (..),
    mkAndroidPublisherReviewsGet,

    -- ** @androidpublisher.reviews.list@
    AndroidPublisherReviewsList (..),
    mkAndroidPublisherReviewsList,

    -- ** @androidpublisher.reviews.reply@
    AndroidPublisherReviewsReply (..),

    -- ** @androidpublisher.systemapks.variants.create@
    AndroidPublisherSystemapksVariantsCreate (..),

    -- ** @androidpublisher.systemapks.variants.download@
    AndroidPublisherSystemapksVariantsDownload (..),

    -- ** @androidpublisher.systemapks.variants.get@
    AndroidPublisherSystemapksVariantsGet (..),

    -- ** @androidpublisher.systemapks.variants.list@
    AndroidPublisherSystemapksVariantsList (..),

    -- ** @androidpublisher.users.create@
    AndroidPublisherUsersCreate (..),

    -- ** @androidpublisher.users.delete@
    AndroidPublisherUsersDelete (..),

    -- ** @androidpublisher.users.list@
    AndroidPublisherUsersList (..),
    mkAndroidPublisherUsersList,

    -- ** @androidpublisher.users.patch@
    AndroidPublisherUsersPatch (..),
    mkAndroidPublisherUsersPatch,

    -- * Product Types

    -- ** Apk
    Apk (..),
#ifdef NOFIELDSELECTORS
    MkApk (..),
#endif
    mkApk,

    -- ** ApkBinary
    ApkBinary (..),
#ifdef NOFIELDSELECTORS
    MkApkBinary (..),
#endif
    mkApkBinary,

    -- ** ApksAddExternallyHostedRequest
    ApksAddExternallyHostedRequest (..),
#ifdef NOFIELDSELECTORS
    MkApksAddExternallyHostedRequest (..),
#endif
    mkApksAddExternallyHostedRequest,

    -- ** ApksAddExternallyHostedResponse
    ApksAddExternallyHostedResponse (..),
#ifdef NOFIELDSELECTORS
    MkApksAddExternallyHostedResponse (..),
#endif
    mkApksAddExternallyHostedResponse,

    -- ** ApksListResponse
    ApksListResponse (..),
#ifdef NOFIELDSELECTORS
    MkApksListResponse (..),
#endif
    mkApksListResponse,

    -- ** AppDetails
    AppDetails (..),
#ifdef NOFIELDSELECTORS
    MkAppDetails (..),
#endif
    mkAppDetails,

    -- ** AppEdit
    AppEdit (..),
#ifdef NOFIELDSELECTORS
    MkAppEdit (..),
#endif
    mkAppEdit,

    -- ** Bundle
    Bundle (..),
#ifdef NOFIELDSELECTORS
    MkBundle (..),
#endif
    mkBundle,

    -- ** BundlesListResponse
    BundlesListResponse (..),
#ifdef NOFIELDSELECTORS
    MkBundlesListResponse (..),
#endif
    mkBundlesListResponse,

    -- ** Comment
    Comment (..),
#ifdef NOFIELDSELECTORS
    MkComment (..),
#endif
    mkComment,

    -- ** ConvertRegionPricesRequest
    ConvertRegionPricesRequest (..),
#ifdef NOFIELDSELECTORS
    MkConvertRegionPricesRequest (..),
#endif
    mkConvertRegionPricesRequest,

    -- ** ConvertRegionPricesResponse
    ConvertRegionPricesResponse (..),
#ifdef NOFIELDSELECTORS
    MkConvertRegionPricesResponse (..),
#endif
    mkConvertRegionPricesResponse,

    -- ** ConvertRegionPricesResponse'ConvertedRegionPrices
    ConvertRegionPricesResponse'ConvertedRegionPrices (..),

    -- ** ConvertedOtherRegionsPrice
    ConvertedOtherRegionsPrice (..),
#ifdef NOFIELDSELECTORS
    MkConvertedOtherRegionsPrice (..),
#endif
    mkConvertedOtherRegionsPrice,

    -- ** ConvertedRegionPrice
    ConvertedRegionPrice (..),
#ifdef NOFIELDSELECTORS
    MkConvertedRegionPrice (..),
#endif
    mkConvertedRegionPrice,

    -- ** CountryTargeting
    CountryTargeting (..),
#ifdef NOFIELDSELECTORS
    MkCountryTargeting (..),
#endif
    mkCountryTargeting,

    -- ** DeobfuscationFile
    DeobfuscationFile (..),
#ifdef NOFIELDSELECTORS
    MkDeobfuscationFile (..),
#endif
    mkDeobfuscationFile,

    -- ** DeobfuscationFilesUploadResponse
    DeobfuscationFilesUploadResponse (..),
#ifdef NOFIELDSELECTORS
    MkDeobfuscationFilesUploadResponse (..),
#endif
    mkDeobfuscationFilesUploadResponse,

    -- ** DeveloperComment
    DeveloperComment (..),
#ifdef NOFIELDSELECTORS
    MkDeveloperComment (..),
#endif
    mkDeveloperComment,

    -- ** DeviceMetadata
    DeviceMetadata (..),
#ifdef NOFIELDSELECTORS
    MkDeviceMetadata (..),
#endif
    mkDeviceMetadata,

    -- ** DeviceSpec
    DeviceSpec (..),
#ifdef NOFIELDSELECTORS
    MkDeviceSpec (..),
#endif
    mkDeviceSpec,

    -- ** ExpansionFile
    ExpansionFile (..),
#ifdef NOFIELDSELECTORS
    MkExpansionFile (..),
#endif
    mkExpansionFile,

    -- ** ExpansionFilesUploadResponse
    ExpansionFilesUploadResponse (..),
#ifdef NOFIELDSELECTORS
    MkExpansionFilesUploadResponse (..),
#endif
    mkExpansionFilesUploadResponse,

    -- ** ExternallyHostedApk
    ExternallyHostedApk (..),
#ifdef NOFIELDSELECTORS
    MkExternallyHostedApk (..),
#endif
    mkExternallyHostedApk,

    -- ** GeneratedApksListResponse
    GeneratedApksListResponse (..),
#ifdef NOFIELDSELECTORS
    MkGeneratedApksListResponse (..),
#endif
    mkGeneratedApksListResponse,

    -- ** GeneratedApksPerSigningKey
    GeneratedApksPerSigningKey (..),
#ifdef NOFIELDSELECTORS
    MkGeneratedApksPerSigningKey (..),
#endif
    mkGeneratedApksPerSigningKey,

    -- ** GeneratedAssetPackSlice
    GeneratedAssetPackSlice (..),
#ifdef NOFIELDSELECTORS
    MkGeneratedAssetPackSlice (..),
#endif
    mkGeneratedAssetPackSlice,

    -- ** GeneratedSplitApk
    GeneratedSplitApk (..),
#ifdef NOFIELDSELECTORS
    MkGeneratedSplitApk (..),
#endif
    mkGeneratedSplitApk,

    -- ** GeneratedStandaloneApk
    GeneratedStandaloneApk (..),
#ifdef NOFIELDSELECTORS
    MkGeneratedStandaloneApk (..),
#endif
    mkGeneratedStandaloneApk,

    -- ** GeneratedUniversalApk
    GeneratedUniversalApk (..),
#ifdef NOFIELDSELECTORS
    MkGeneratedUniversalApk (..),
#endif
    mkGeneratedUniversalApk,

    -- ** Grant
    Grant (..),
#ifdef NOFIELDSELECTORS
    MkGrant (..),
#endif
    mkGrant,

    -- ** Image
    Image (..),
#ifdef NOFIELDSELECTORS
    MkImage (..),
#endif
    mkImage,

    -- ** ImagesDeleteAllResponse
    ImagesDeleteAllResponse (..),
#ifdef NOFIELDSELECTORS
    MkImagesDeleteAllResponse (..),
#endif
    mkImagesDeleteAllResponse,

    -- ** ImagesListResponse
    ImagesListResponse (..),
#ifdef NOFIELDSELECTORS
    MkImagesListResponse (..),
#endif
    mkImagesListResponse,

    -- ** ImagesUploadResponse
    ImagesUploadResponse (..),
#ifdef NOFIELDSELECTORS
    MkImagesUploadResponse (..),
#endif
    mkImagesUploadResponse,

    -- ** InAppProduct
    InAppProduct (..),
#ifdef NOFIELDSELECTORS
    MkInAppProduct (..),
#endif
    mkInAppProduct,

    -- ** InAppProduct'Listings
    InAppProduct'Listings (..),

    -- ** InAppProduct'Prices
    InAppProduct'Prices (..),

    -- ** InAppProductListing
    InAppProductListing (..),
#ifdef NOFIELDSELECTORS
    MkInAppProductListing (..),
#endif
    mkInAppProductListing,

    -- ** InappproductsListResponse
    InappproductsListResponse (..),
#ifdef NOFIELDSELECTORS
    MkInappproductsListResponse (..),
#endif
    mkInappproductsListResponse,

    -- ** InternalAppSharingArtifact
    InternalAppSharingArtifact (..),
#ifdef NOFIELDSELECTORS
    MkInternalAppSharingArtifact (..),
#endif
    mkInternalAppSharingArtifact,

    -- ** IntroductoryPriceInfo
    IntroductoryPriceInfo (..),
#ifdef NOFIELDSELECTORS
    MkIntroductoryPriceInfo (..),
#endif
    mkIntroductoryPriceInfo,

    -- ** ListUsersResponse
    ListUsersResponse (..),
#ifdef NOFIELDSELECTORS
    MkListUsersResponse (..),
#endif
    mkListUsersResponse,

    -- ** Listing
    Listing (..),
#ifdef NOFIELDSELECTORS
    MkListing (..),
#endif
    mkListing,

    -- ** ListingsListResponse
    ListingsListResponse (..),
#ifdef NOFIELDSELECTORS
    MkListingsListResponse (..),
#endif
    mkListingsListResponse,

    -- ** LocalizedText
    LocalizedText (..),
#ifdef NOFIELDSELECTORS
    MkLocalizedText (..),
#endif
    mkLocalizedText,

    -- ** ManagedProductTaxAndComplianceSettings
    ManagedProductTaxAndComplianceSettings (..),
#ifdef NOFIELDSELECTORS
    MkManagedProductTaxAndComplianceSettings (..),
#endif
    mkManagedProductTaxAndComplianceSettings,

    -- ** ManagedProductTaxAndComplianceSettings'TaxRateInfoByRegionCode
    ManagedProductTaxAndComplianceSettings'TaxRateInfoByRegionCode (..),

    -- ** Money
    Money (..),
#ifdef NOFIELDSELECTORS
    MkMoney (..),
#endif
    mkMoney,

    -- ** PageInfo
    PageInfo (..),
#ifdef NOFIELDSELECTORS
    MkPageInfo (..),
#endif
    mkPageInfo,

    -- ** Price
    Price (..),
#ifdef NOFIELDSELECTORS
    MkPrice (..),
#endif
    mkPrice,

    -- ** ProductPurchase
    ProductPurchase (..),
#ifdef NOFIELDSELECTORS
    MkProductPurchase (..),
#endif
    mkProductPurchase,

    -- ** ProductPurchasesAcknowledgeRequest
    ProductPurchasesAcknowledgeRequest (..),
#ifdef NOFIELDSELECTORS
    MkProductPurchasesAcknowledgeRequest (..),
#endif
    mkProductPurchasesAcknowledgeRequest,

    -- ** RegionalTaxRateInfo
    RegionalTaxRateInfo (..),
#ifdef NOFIELDSELECTORS
    MkRegionalTaxRateInfo (..),
#endif
    mkRegionalTaxRateInfo,

    -- ** Review
    Review (..),
#ifdef NOFIELDSELECTORS
    MkReview (..),
#endif
    mkReview,

    -- ** ReviewReplyResult
    ReviewReplyResult (..),
#ifdef NOFIELDSELECTORS
    MkReviewReplyResult (..),
#endif
    mkReviewReplyResult,

    -- ** ReviewsListResponse
    ReviewsListResponse (..),
#ifdef NOFIELDSELECTORS
    MkReviewsListResponse (..),
#endif
    mkReviewsListResponse,

    -- ** ReviewsReplyRequest
    ReviewsReplyRequest (..),
#ifdef NOFIELDSELECTORS
    MkReviewsReplyRequest (..),
#endif
    mkReviewsReplyRequest,

    -- ** ReviewsReplyResponse
    ReviewsReplyResponse (..),
#ifdef NOFIELDSELECTORS
    MkReviewsReplyResponse (..),
#endif
    mkReviewsReplyResponse,

    -- ** SubscriptionCancelSurveyResult
    SubscriptionCancelSurveyResult (..),
#ifdef NOFIELDSELECTORS
    MkSubscriptionCancelSurveyResult (..),
#endif
    mkSubscriptionCancelSurveyResult,

    -- ** SubscriptionDeferralInfo
    SubscriptionDeferralInfo (..),
#ifdef NOFIELDSELECTORS
    MkSubscriptionDeferralInfo (..),
#endif
    mkSubscriptionDeferralInfo,

    -- ** SubscriptionPriceChange
    SubscriptionPriceChange (..),
#ifdef NOFIELDSELECTORS
    MkSubscriptionPriceChange (..),
#endif
    mkSubscriptionPriceChange,

    -- ** SubscriptionPurchase
    SubscriptionPurchase (..),
#ifdef NOFIELDSELECTORS
    MkSubscriptionPurchase (..),
#endif
    mkSubscriptionPurchase,

    -- ** SubscriptionPurchasesAcknowledgeRequest
    SubscriptionPurchasesAcknowledgeRequest (..),
#ifdef NOFIELDSELECTORS
    MkSubscriptionPurchasesAcknowledgeRequest (..),
#endif
    mkSubscriptionPurchasesAcknowledgeRequest,

    -- ** SubscriptionPurchasesDeferRequest
    SubscriptionPurchasesDeferRequest (..),
#ifdef NOFIELDSELECTORS
    MkSubscriptionPurchasesDeferRequest (..),
#endif
    mkSubscriptionPurchasesDeferRequest,

    -- ** SubscriptionPurchasesDeferResponse
    SubscriptionPurchasesDeferResponse (..),
#ifdef NOFIELDSELECTORS
    MkSubscriptionPurchasesDeferResponse (..),
#endif
    mkSubscriptionPurchasesDeferResponse,

    -- ** SubscriptionTaxAndComplianceSettings
    SubscriptionTaxAndComplianceSettings (..),
#ifdef NOFIELDSELECTORS
    MkSubscriptionTaxAndComplianceSettings (..),
#endif
    mkSubscriptionTaxAndComplianceSettings,

    -- ** SubscriptionTaxAndComplianceSettings'TaxRateInfoByRegionCode
    SubscriptionTaxAndComplianceSettings'TaxRateInfoByRegionCode (..),

    -- ** SystemApksListResponse
    SystemApksListResponse (..),
#ifdef NOFIELDSELECTORS
    MkSystemApksListResponse (..),
#endif
    mkSystemApksListResponse,

    -- ** Testers
    Testers (..),
#ifdef NOFIELDSELECTORS
    MkTesters (..),
#endif
    mkTesters,

    -- ** Timestamp
    Timestamp (..),
#ifdef NOFIELDSELECTORS
    MkTimestamp (..),
#endif
    mkTimestamp,

    -- ** TokenPagination
    TokenPagination (..),
#ifdef NOFIELDSELECTORS
    MkTokenPagination (..),
#endif
    mkTokenPagination,

    -- ** Track
    Track (..),
#ifdef NOFIELDSELECTORS
    MkTrack (..),
#endif
    mkTrack,

    -- ** TrackCountryAvailability
    TrackCountryAvailability (..),
#ifdef NOFIELDSELECTORS
    MkTrackCountryAvailability (..),
#endif
    mkTrackCountryAvailability,

    -- ** TrackRelease
    TrackRelease (..),
#ifdef NOFIELDSELECTORS
    MkTrackRelease (..),
#endif
    mkTrackRelease,

    -- ** TrackTargetedCountry
    TrackTargetedCountry (..),
#ifdef NOFIELDSELECTORS
    MkTrackTargetedCountry (..),
#endif
    mkTrackTargetedCountry,

    -- ** TracksListResponse
    TracksListResponse (..),
#ifdef NOFIELDSELECTORS
    MkTracksListResponse (..),
#endif
    mkTracksListResponse,

    -- ** User
    User (..),
#ifdef NOFIELDSELECTORS
    MkUser (..),
#endif
    mkUser,

    -- ** UserComment
    UserComment (..),
#ifdef NOFIELDSELECTORS
    MkUserComment (..),
#endif
    mkUserComment,

    -- ** UsesPermission
    UsesPermission (..),
#ifdef NOFIELDSELECTORS
    MkUsesPermission (..),
#endif
    mkUsesPermission,

    -- ** Variant
    Variant (..),
#ifdef NOFIELDSELECTORS
    MkVariant (..),
#endif
    mkVariant,

    -- ** VoidedPurchase
    VoidedPurchase (..),
#ifdef NOFIELDSELECTORS
    MkVoidedPurchase (..),
#endif
    mkVoidedPurchase,

    -- ** VoidedPurchasesListResponse
    VoidedPurchasesListResponse (..),
#ifdef NOFIELDSELECTORS
    MkVoidedPurchasesListResponse (..),
#endif
    mkVoidedPurchasesListResponse,

    -- * Enumeration Types

    -- ** DeobfuscationFile'SymbolType
    DeobfuscationFile'SymbolType (..),

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

    -- ** Grant'AppLevelPermissionsItem
    Grant'AppLevelPermissionsItem (..),

    -- ** InAppProduct'PurchaseType
    InAppProduct'PurchaseType (..),

    -- ** InAppProduct'Status
    InAppProduct'Status (..),

    -- ** ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType
    ManagedProductTaxAndComplianceSettings'EeaWithdrawalRightType (..),

    -- ** RegionalTaxRateInfo'TaxTier
    RegionalTaxRateInfo'TaxTier (..),

    -- ** SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType
    SubscriptionTaxAndComplianceSettings'EeaWithdrawalRightType (..),

    -- ** TrackRelease'Status
    TrackRelease'Status (..),

    -- ** User'AccessState
    User'AccessState (..),

    -- ** User'DeveloperAccountPermissionsItem
    User'DeveloperAccountPermissionsItem (..),

    -- ** Xgafv
    Xgafv (..),
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
