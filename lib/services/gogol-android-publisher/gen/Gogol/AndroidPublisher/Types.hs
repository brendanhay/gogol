{-# LANGUAGE CPP #-}
-- |
-- Module      : Gogol.AndroidPublisher.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AndroidPublisher.Types
    (
    -- * Configuration
    AndroidPublisherService,
    mkAndroidPublisherService,

    -- ** Global Request Parameters
    AndroidPublisherParams (..),

    -- ** OAuth Scopes
    Androidpublisher'FullControl,
  
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
                                                                                                                                                                            ) where

import qualified Network.Google.Prelude as Core
import Gogol.AndroidPublisher.Internal.Product
import Gogol.AndroidPublisher.Internal.Sum

-- | View and manage your Google Play Developer account.
type Androidpublisher'FullControl = "https://www.googleapis.com/auth/androidpublisher"
-- | Default request configuration for version @v3@ of the Google Play Android Developer API.
type AndroidPublisherService = Core.Service "androidpublisher:v3" AndroidPublisherParams
-- | Global query parameters for version @v3@ of the Google Play Android Developer API. These parameters will be added to the query string for every request.
--
-- Construct a default value using the 'mkAndroidPublisherService' smart constructor.
data AndroidPublisherParams = AndroidPublisherParams
    {
      -- | V1 error format.
      xgafv :: Core.Maybe Xgafv
      -- | OAuth access token.
    , accessToken :: Core.Maybe Core.Text
      -- | JSONP.
    , callback :: Core.Maybe Core.Text
      -- | Selector specifying which fields to include in a partial response.
    , fields :: Core.Maybe Core.Text
      -- | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    , key :: Core.Maybe Core.Text
      -- | OAuth 2.0 token for the current user.
    , oauthToken :: Core.Maybe Core.Text
      -- | Returns response with indentations and line breaks.
    , prettyPrint :: Core.Bool
      -- | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    , quotaUser :: Core.Maybe Core.Text
    }
    deriving stock (Core.Show, Core.Eq, Core.Ord, Core.Generic)

-- | Default configuration referring to version @v3@ of the Google Play Android Developer API. This sets the host and port used as a starting point for constructing service requests.
mkAndroidPublisherService :: AndroidPublisherService
mkAndroidPublisherService
  = Core.Service{Core.serviceRequest =
                   Core.defaultRequest{Core.secure = Core.True, Core.host = "https://androidpublisher.googleapis.com", Core.port = 443},
                 Core.serviceParams =
                   AndroidPublisherParams{xgafv = Core.Nothing, accessToken = Core.Nothing, callback = Core.Nothing, fields = Core.Nothing,
                                          key = Core.Nothing, oauthToken = Core.Nothing, prettyPrint = Core.False, quotaUser = Core.Nothing}}
