{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Play.Developer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets Android application developers access their Google Play accounts.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference>
module Network.Google.Play.Developer
    (
    -- * Resources
      PlayDeveloper
    , InappproductsAPI
    , InappproductsBatch
    , InappproductsInsert
    , InappproductsList
    , InappproductsPatch
    , InappproductsGet
    , InappproductsDelete
    , InappproductsUpdate
    , EditsAPI
    , ImagesAPI
    , ImagesList
    , ImagesDeleteall
    , ImagesUpload
    , ImagesDelete
    , ExpansionfilesAPI
    , ExpansionfilesPatch
    , ExpansionfilesGet
    , ExpansionfilesUpload
    , ExpansionfilesUpdate
    , TracksAPI
    , TracksList
    , TracksPatch
    , TracksGet
    , TracksUpdate
    , TestersAPI
    , TestersPatch
    , TestersGet
    , TestersUpdate
    , DetailsAPI
    , DetailsPatch
    , DetailsGet
    , DetailsUpdate
    , ApklistingsAPI
    , ApklistingsList
    , ApklistingsDeleteall
    , ApklistingsPatch
    , ApklistingsGet
    , ApklistingsDelete
    , ApklistingsUpdate
    , ApksAPI
    , ApksList
    , ApksAddexternallyhosted
    , ApksUpload
    , ListingsAPI
    , ListingsList
    , ListingsDeleteall
    , ListingsPatch
    , ListingsGet
    , ListingsDelete
    , ListingsUpdate
    , EntitlementsAPI
    , EntitlementsList
    , PurchasesAPI
    , ProductsAPI
    , ProductsGet
    , SubscriptionsAPI
    , SubscriptionsDefer
    , SubscriptionsGet
    , SubscriptionsRefund
    , SubscriptionsRevoke
    , SubscriptionsCancel

    -- * Types

    -- ** Apk
    , Apk
    , apk
    , apkVersionCode
    , apkBinary

    -- ** ApkBinary
    , ApkBinary
    , apkBinary
    , abSha1

    -- ** ApkListing
    , ApkListing
    , apkListing
    , alLanguage
    , alRecentChanges

    -- ** ApkListingsListResponse
    , ApkListingsListResponse
    , apkListingsListResponse
    , allrKind
    , allrListings

    -- ** ApksAddExternallyHostedRequest
    , ApksAddExternallyHostedRequest
    , apksAddExternallyHostedRequest
    , aaehrExternallyHostedApk

    -- ** ApksAddExternallyHostedResponse
    , ApksAddExternallyHostedResponse
    , apksAddExternallyHostedResponse
    , aExternallyHostedApk

    -- ** ApksListResponse
    , ApksListResponse
    , apksListResponse
    , alrKind
    , alrApks

    -- ** AppDetails
    , AppDetails
    , appDetails
    , adContactPhone
    , adContactEmail
    , adContactWebsite
    , adDefaultLanguage

    -- ** AppEdit
    , AppEdit
    , appEdit
    , aeId
    , aeExpiryTimeSeconds

    -- ** Entitlement
    , Entitlement
    , entitlement
    , eKind
    , eProductType
    , eToken
    , eProductId

    -- ** EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , elrTokenPagination
    , elrPageInfo
    , elrResources

    -- ** ExpansionFile
    , ExpansionFile
    , expansionFile
    , efFileSize
    , efReferencesVersion

    -- ** ExpansionFilesUploadResponse
    , ExpansionFilesUploadResponse
    , expansionFilesUploadResponse
    , efurExpansionFile

    -- ** ExternallyHostedApk
    , ExternallyHostedApk
    , externallyHostedApk
    , ehaApplicationLabel
    , ehaMaximumSdk
    , ehaNativeCodes
    , ehaVersionCode
    , ehaFileSha256Base64
    , ehaExternallyHostedUrl
    , ehaVersionName
    , ehaPackageName
    , ehaFileSize
    , ehaIconBase64
    , ehaUsesFeatures
    , ehaMinimumSdk
    , ehaFileSha1Base64
    , ehaUsesPermissions
    , ehaCertificateBase64s

    -- ** ExternallyHostedApkUsesPermission
    , ExternallyHostedApkUsesPermission
    , externallyHostedApkUsesPermission
    , ehaupName
    , ehaupMaxSdkVersion

    -- ** Image
    , Image
    , image
    , iUrl
    , iSha1
    , iId

    -- ** ImagesDeleteAllResponse
    , ImagesDeleteAllResponse
    , imagesDeleteAllResponse
    , idarDeleted

    -- ** ImagesListResponse
    , ImagesListResponse
    , imagesListResponse
    , ilrImages

    -- ** ImagesUploadResponse
    , ImagesUploadResponse
    , imagesUploadResponse
    , iurImage

    -- ** InAppProduct
    , InAppProduct
    , inAppProduct
    , iapStatus
    , iapTrialPeriod
    , iapPackageName
    , iapSeason
    , iapPurchaseType
    , iapSubscriptionPeriod
    , iapPrices
    , iapSku
    , iapDefaultPrice
    , iapListings
    , iapDefaultLanguage

    -- ** InAppProductListing
    , InAppProductListing
    , inAppProductListing
    , iaplTitle
    , iaplDescription

    -- ** InAppProductListings
    , InAppProductListings
    , inAppProductListings

    -- ** InAppProductPrices
    , InAppProductPrices
    , inAppProductPrices

    -- ** InappproductsBatchRequest
    , InappproductsBatchRequest
    , inappproductsBatchRequest
    , iEntrys

    -- ** InappproductsBatchRequestEntry
    , InappproductsBatchRequestEntry
    , inappproductsBatchRequestEntry
    , iMethodName
    , iInappproductsinsertrequest
    , iInappproductsupdaterequest
    , iBatchId

    -- ** InappproductsBatchResponse
    , InappproductsBatchResponse
    , inappproductsBatchResponse
    , ibrEntrys
    , ibrKind

    -- ** InappproductsBatchResponseEntry
    , InappproductsBatchResponseEntry
    , inappproductsBatchResponseEntry
    , ibreInappproductsupdateresponse
    , ibreInappproductsinsertresponse
    , ibreBatchId

    -- ** InappproductsInsertRequest
    , InappproductsInsertRequest
    , inappproductsInsertRequest
    , iirInappproduct

    -- ** InappproductsInsertResponse
    , InappproductsInsertResponse
    , inappproductsInsertResponse
    , iInappproduct

    -- ** InappproductsListResponse
    , InappproductsListResponse
    , inappproductsListResponse
    , ilrTokenPagination
    , ilrPageInfo
    , ilrKind
    , ilrInappproduct

    -- ** InappproductsUpdateRequest
    , InappproductsUpdateRequest
    , inappproductsUpdateRequest
    , inaInappproduct

    -- ** InappproductsUpdateResponse
    , InappproductsUpdateResponse
    , inappproductsUpdateResponse
    , iurInappproduct

    -- ** Listing
    , Listing
    , listing
    , lFullDescription
    , lVideo
    , lShortDescription
    , lLanguage
    , lTitle

    -- ** ListingsListResponse
    , ListingsListResponse
    , listingsListResponse
    , llrKind
    , llrListings

    -- ** MonthDay
    , MonthDay
    , monthDay
    , mdDay
    , mdMonth

    -- ** PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- ** Price
    , Price
    , price
    , pPriceMicros
    , pCurrency

    -- ** ProductPurchase
    , ProductPurchase
    , productPurchase
    , ppPurchaseState
    , ppConsumptionState
    , ppKind
    , ppPurchaseTimeMillis
    , ppDeveloperPayload

    -- ** Season
    , Season
    , season
    , sStart
    , sEnd

    -- ** SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- ** SubscriptionPurchase
    , SubscriptionPurchase
    , subscriptionPurchase
    , spKind
    , spExpiryTimeMillis
    , spAutoRenewing
    , spStartTimeMillis

    -- ** SubscriptionPurchasesDeferRequest
    , SubscriptionPurchasesDeferRequest
    , subscriptionPurchasesDeferRequest
    , spdrDeferralInfo

    -- ** SubscriptionPurchasesDeferResponse
    , SubscriptionPurchasesDeferResponse
    , subscriptionPurchasesDeferResponse
    , spdrNewExpiryTimeMillis

    -- ** Testers
    , Testers
    , testers
    , tGooglePlusCommunities
    , tGoogleGroups

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- ** Track
    , Track
    , track
    , tVersionCodes
    , tTrack
    , tUserFraction

    -- ** TracksListResponse
    , TracksListResponse
    , tracksListResponse
    , tlrTracks
    , tlrKind
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type PlayDeveloper =
     InappproductsAPI :<|> EditsAPI :<|> EntitlementsAPI
       :<|> PurchasesAPI

type InappproductsAPI =
     InappproductsBatch :<|> InappproductsInsert :<|>
       InappproductsList
       :<|> InappproductsPatch
       :<|> InappproductsGet
       :<|> InappproductsDelete
       :<|> InappproductsUpdate

type InappproductsBatch =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           "inappproducts" :>
             "batch" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :>
                             Post '[JSON] InappproductsBatchResponse

-- | Creates a new in-app product for an app.
type InappproductsInsert =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "autoConvertMissingPrices" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Post '[JSON] InAppProduct

-- | List all the in-app products for an Android app, both subscriptions and
-- managed in-app products..
type InappproductsList =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "token" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "startIndex" Word32 :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] InappproductsListResponse

-- | Updates the details of an in-app product. This method supports patch
-- semantics.
type InappproductsPatch =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "autoConvertMissingPrices" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Patch '[JSON] InAppProduct

-- | Returns information about the in-app product specified.
type InappproductsGet =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] InAppProduct

-- | Delete an in-app product for an app.
type InappproductsDelete =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates the details of an in-app product.
type InappproductsUpdate =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               Capture "sku" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "autoConvertMissingPrices" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] InAppProduct

type EditsAPI =
     ImagesAPI :<|> ExpansionfilesAPI :<|> TracksAPI :<|>
       TestersAPI
       :<|> DetailsAPI
       :<|> ApklistingsAPI
       :<|> ApksAPI
       :<|> ListingsAPI

type ImagesAPI =
     ImagesList :<|> ImagesDeleteall :<|> ImagesUpload
       :<|> ImagesDelete

-- | Lists all images for the specified language and image type.
type ImagesList =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] ImagesListResponse

-- | Deletes all images for the specified language and image type.
type ImagesDeleteall =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Delete '[JSON] ImagesDeleteAllResponse

-- | Uploads a new image and adds it to the list of images for the specified
-- language and image type.
type ImagesUpload =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] ImagesUploadResponse

-- | Deletes the image (specified by id) from the edit.
type ImagesDelete =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     Capture "imageType" Text :>
                       Capture "imageId" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :> Delete '[JSON] ()

type ExpansionfilesAPI =
     ExpansionfilesPatch :<|> ExpansionfilesGet :<|>
       ExpansionfilesUpload
       :<|> ExpansionfilesUpdate

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method. This method supports patch semantics.
type ExpansionfilesPatch =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "expansionFiles" :>
                       Capture "expansionFileType" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Patch '[JSON] ExpansionFile

-- | Fetches the Expansion File configuration for the APK specified.
type ExpansionfilesGet =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "expansionFiles" :>
                       Capture "expansionFileType" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] ExpansionFile

-- | Uploads and attaches a new Expansion File to the APK specified.
type ExpansionfilesUpload =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "expansionFiles" :>
                       Capture "expansionFileType" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] ExpansionFilesUploadResponse

-- | Updates the APK\'s Expansion File configuration to reference another
-- APK\'s Expansion Files. To add a new Expansion File use the Upload
-- method.
type ExpansionfilesUpdate =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "expansionFiles" :>
                       Capture "expansionFileType" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Put '[JSON] ExpansionFile

type TracksAPI =
     TracksList :<|> TracksPatch :<|> TracksGet :<|>
       TracksUpdate

-- | Lists all the track configurations for this edit.
type TracksList =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] TracksListResponse

-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume. This method supports patch
-- semantics.
type TracksPatch =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   Capture "track" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Patch '[JSON] Track

-- | Fetches the track configuration for the specified track type. Includes
-- the APK version codes that are in this track.
type TracksGet =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   Capture "track" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Track

-- | Updates the track configuration for the specified track type. When
-- halted, the rollout track cannot be updated without adding new APKs, and
-- adding new APKs will cause it to resume.
type TracksUpdate =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "tracks" :>
                   Capture "track" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Put '[JSON] Track

type TestersAPI =
     TestersPatch :<|> TestersGet :<|> TestersUpdate

type TestersPatch =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "testers" :>
                   Capture "track" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Patch '[JSON] Testers

type TestersGet =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "testers" :>
                   Capture "track" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Testers

type TestersUpdate =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "testers" :>
                   Capture "track" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Put '[JSON] Testers

type DetailsAPI =
     DetailsPatch :<|> DetailsGet :<|> DetailsUpdate

-- | Updates app details for this edit. This method supports patch semantics.
type DetailsPatch =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "details" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Patch '[JSON] AppDetails

-- | Fetches app details for this edit. This includes the default language
-- and developer support contact information.
type DetailsGet =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "details" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Get '[JSON] AppDetails

-- | Updates app details for this edit.
type DetailsUpdate =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "details" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Put '[JSON] AppDetails

type ApklistingsAPI =
     ApklistingsList :<|> ApklistingsDeleteall :<|>
       ApklistingsPatch
       :<|> ApklistingsGet
       :<|> ApklistingsDelete
       :<|> ApklistingsUpdate

-- | Lists all the APK-specific localized listings for a specified APK.
type ApklistingsList =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "listings" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] ApkListingsListResponse

-- | Deletes all the APK-specific localized listings for a specified APK.
type ApklistingsDeleteall =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "listings" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code. This method supports patch semantics.
type ApklistingsPatch =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "listings" :>
                       Capture "language" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Patch '[JSON] ApkListing

-- | Fetches the APK-specific localized listing for a specified APK and
-- language code.
type ApklistingsGet =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "listings" :>
                       Capture "language" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] ApkListing

-- | Deletes the APK-specific localized listing for a specified APK and
-- language code.
type ApklistingsDelete =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "listings" :>
                       Capture "language" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates or creates the APK-specific localized listing for a specified
-- APK and language code.
type ApklistingsUpdate =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" Int32 :>
                     "listings" :>
                       Capture "language" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Put '[JSON] ApkListing

type ApksAPI =
     ApksList :<|> ApksAddexternallyhosted :<|> ApksUpload

type ApksList =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] ApksListResponse

-- | Creates a new APK without uploading the APK itself to Google Play,
-- instead hosting the APK at a specified URL. This function is only
-- available to enterprises using Google Play for Work whose application is
-- configured to restrict distribution to the enterprise domain.
type ApksAddexternallyhosted =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   "externallyHosted" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Post '[JSON] ApksAddExternallyHostedResponse

type ApksUpload =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Apk

type ListingsAPI =
     ListingsList :<|> ListingsDeleteall :<|>
       ListingsPatch
       :<|> ListingsGet
       :<|> ListingsDelete
       :<|> ListingsUpdate

-- | Returns all of the localized store listings attached to this edit.
type ListingsList =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Get '[JSON] ListingsListResponse

-- | Deletes all localized listings from an edit.
type ListingsDeleteall =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Creates or updates a localized store listing. This method supports patch
-- semantics.
type ListingsPatch =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Patch '[JSON] Listing

-- | Fetches information about a localized store listing.
type ListingsGet =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Listing

-- | Deletes the specified localized store listing from an edit.
type ListingsDelete =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Creates or updates a localized store listing.
type ListingsUpdate =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "listings" :>
                   Capture "language" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Put '[JSON] Listing

type EntitlementsAPI = EntitlementsList

-- | Lists the user\'s current inapp item or subscription entitlements
type EntitlementsList =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "entitlements" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "token" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "startIndex" Word32 :>
                             QueryParam "productId" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] EntitlementsListResponse

type PurchasesAPI = ProductsAPI :<|> SubscriptionsAPI

type ProductsAPI = ProductsGet

-- | Checks the purchase and consumption status of an inapp item.
type ProductsGet =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "products" :>
                 Capture "productId" Text :>
                   "tokens" :>
                     Capture "token" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] ProductPurchase

type SubscriptionsAPI =
     SubscriptionsDefer :<|> SubscriptionsGet :<|>
       SubscriptionsRefund
       :<|> SubscriptionsRevoke
       :<|> SubscriptionsCancel

-- | Defers a user\'s subscription purchase until a specified future
-- expiration time.
type SubscriptionsDefer =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     "{token}:defer" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON]
                                       SubscriptionPurchasesDeferResponse

-- | Checks whether a user\'s subscription purchase is valid and returns its
-- expiry time.
type SubscriptionsGet =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     Capture "token" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] SubscriptionPurchase

-- | Refunds a user\'s subscription purchase, but the subscription remains
-- valid until its expiration time and it will continue to recur.
type SubscriptionsRefund =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     "{token}:refund" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Post '[JSON] ()

-- | Refunds and immediately revokes a user\'s subscription purchase. Access
-- to the subscription will be terminated immediately and it will stop
-- recurring.
type SubscriptionsRevoke =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     "{token}:revoke" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Post '[JSON] ()

-- | Cancels a user\'s subscription purchase. The subscription remains valid
-- until its expiration time.
type SubscriptionsCancel =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "subscriptions" :>
                 Capture "subscriptionId" Text :>
                   "tokens" :>
                     "{token}:cancel" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :> Post '[JSON] ()
