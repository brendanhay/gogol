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
    -- * REST Resources

    -- ** Google Play Developer API
      PlayDeveloper
    , playDeveloper
    , playDeveloperURL

    -- ** androidpublisher.edits.apklistings.delete
    , module Network.Google.API.Androidpublisher.Edits.Apklistings.Delete

    -- ** androidpublisher.edits.apklistings.deleteall
    , module Network.Google.API.Androidpublisher.Edits.Apklistings.Deleteall

    -- ** androidpublisher.edits.apklistings.get
    , module Network.Google.API.Androidpublisher.Edits.Apklistings.Get

    -- ** androidpublisher.edits.apklistings.list
    , module Network.Google.API.Androidpublisher.Edits.Apklistings.List

    -- ** androidpublisher.edits.apklistings.patch
    , module Network.Google.API.Androidpublisher.Edits.Apklistings.Patch

    -- ** androidpublisher.edits.apklistings.update
    , module Network.Google.API.Androidpublisher.Edits.Apklistings.Update

    -- ** androidpublisher.edits.apks.addexternallyhosted
    , module Network.Google.API.Androidpublisher.Edits.Apks.Addexternallyhosted

    -- ** androidpublisher.edits.apks.list
    , module Network.Google.API.Androidpublisher.Edits.Apks.List

    -- ** androidpublisher.edits.apks.upload
    , module Network.Google.API.Androidpublisher.Edits.Apks.Upload

    -- ** androidpublisher.edits.details.get
    , module Network.Google.API.Androidpublisher.Edits.Details.Get

    -- ** androidpublisher.edits.details.patch
    , module Network.Google.API.Androidpublisher.Edits.Details.Patch

    -- ** androidpublisher.edits.details.update
    , module Network.Google.API.Androidpublisher.Edits.Details.Update

    -- ** androidpublisher.edits.expansionfiles.get
    , module Network.Google.API.Androidpublisher.Edits.Expansionfiles.Get

    -- ** androidpublisher.edits.expansionfiles.patch
    , module Network.Google.API.Androidpublisher.Edits.Expansionfiles.Patch

    -- ** androidpublisher.edits.expansionfiles.update
    , module Network.Google.API.Androidpublisher.Edits.Expansionfiles.Update

    -- ** androidpublisher.edits.expansionfiles.upload
    , module Network.Google.API.Androidpublisher.Edits.Expansionfiles.Upload

    -- ** androidpublisher.edits.images.delete
    , module Network.Google.API.Androidpublisher.Edits.Images.Delete

    -- ** androidpublisher.edits.images.deleteall
    , module Network.Google.API.Androidpublisher.Edits.Images.Deleteall

    -- ** androidpublisher.edits.images.list
    , module Network.Google.API.Androidpublisher.Edits.Images.List

    -- ** androidpublisher.edits.images.upload
    , module Network.Google.API.Androidpublisher.Edits.Images.Upload

    -- ** androidpublisher.edits.listings.delete
    , module Network.Google.API.Androidpublisher.Edits.Listings.Delete

    -- ** androidpublisher.edits.listings.deleteall
    , module Network.Google.API.Androidpublisher.Edits.Listings.Deleteall

    -- ** androidpublisher.edits.listings.get
    , module Network.Google.API.Androidpublisher.Edits.Listings.Get

    -- ** androidpublisher.edits.listings.list
    , module Network.Google.API.Androidpublisher.Edits.Listings.List

    -- ** androidpublisher.edits.listings.patch
    , module Network.Google.API.Androidpublisher.Edits.Listings.Patch

    -- ** androidpublisher.edits.listings.update
    , module Network.Google.API.Androidpublisher.Edits.Listings.Update

    -- ** androidpublisher.edits.testers.get
    , module Network.Google.API.Androidpublisher.Edits.Testers.Get

    -- ** androidpublisher.edits.testers.patch
    , module Network.Google.API.Androidpublisher.Edits.Testers.Patch

    -- ** androidpublisher.edits.testers.update
    , module Network.Google.API.Androidpublisher.Edits.Testers.Update

    -- ** androidpublisher.edits.tracks.get
    , module Network.Google.API.Androidpublisher.Edits.Tracks.Get

    -- ** androidpublisher.edits.tracks.list
    , module Network.Google.API.Androidpublisher.Edits.Tracks.List

    -- ** androidpublisher.edits.tracks.patch
    , module Network.Google.API.Androidpublisher.Edits.Tracks.Patch

    -- ** androidpublisher.edits.tracks.update
    , module Network.Google.API.Androidpublisher.Edits.Tracks.Update

    -- ** androidpublisher.entitlements.list
    , module Network.Google.API.Androidpublisher.Entitlements.List

    -- ** androidpublisher.inappproducts.batch
    , module Network.Google.API.Androidpublisher.Inappproducts.Batch

    -- ** androidpublisher.inappproducts.delete
    , module Network.Google.API.Androidpublisher.Inappproducts.Delete

    -- ** androidpublisher.inappproducts.get
    , module Network.Google.API.Androidpublisher.Inappproducts.Get

    -- ** androidpublisher.inappproducts.insert
    , module Network.Google.API.Androidpublisher.Inappproducts.Insert

    -- ** androidpublisher.inappproducts.list
    , module Network.Google.API.Androidpublisher.Inappproducts.List

    -- ** androidpublisher.inappproducts.patch
    , module Network.Google.API.Androidpublisher.Inappproducts.Patch

    -- ** androidpublisher.inappproducts.update
    , module Network.Google.API.Androidpublisher.Inappproducts.Update

    -- ** androidpublisher.purchases.products.get
    , module Network.Google.API.Androidpublisher.Purchases.Products.Get

    -- ** androidpublisher.purchases.subscriptions.cancel
    , module Network.Google.API.Androidpublisher.Purchases.Subscriptions.Cancel

    -- ** androidpublisher.purchases.subscriptions.defer
    , module Network.Google.API.Androidpublisher.Purchases.Subscriptions.Defer

    -- ** androidpublisher.purchases.subscriptions.get
    , module Network.Google.API.Androidpublisher.Purchases.Subscriptions.Get

    -- ** androidpublisher.purchases.subscriptions.refund
    , module Network.Google.API.Androidpublisher.Purchases.Subscriptions.Refund

    -- ** androidpublisher.purchases.subscriptions.revoke
    , module Network.Google.API.Androidpublisher.Purchases.Subscriptions.Revoke

    -- * Types

    -- ** ExpansionFilesUploadResponse
    , ExpansionFilesUploadResponse
    , expansionFilesUploadResponse
    , efurExpansionFile

    -- ** ImagesUploadResponse
    , ImagesUploadResponse
    , imagesUploadResponse
    , iurImage

    -- ** InappproductsListResponse
    , InappproductsListResponse
    , inappproductsListResponse
    , ilrTokenPagination
    , ilrPageInfo
    , ilrKind
    , ilrInappproduct

    -- ** Listing
    , Listing
    , listing
    , lFullDescription
    , lVideo
    , lShortDescription
    , lLanguage
    , lTitle

    -- ** SubscriptionPurchasesDeferRequest
    , SubscriptionPurchasesDeferRequest
    , subscriptionPurchasesDeferRequest
    , spdrDeferralInfo

    -- ** Testers
    , Testers
    , testers
    , tGooglePlusCommunities
    , tGoogleGroups

    -- ** EditsImagesList'ImageType
    , EditsImagesList'ImageType (..)

    -- ** Alt
    , Alt (..)

    -- ** Apk
    , Apk
    , apk
    , apkVersionCode
    , apkBinary

    -- ** InappproductsBatchResponseEntry
    , InappproductsBatchResponseEntry
    , inappproductsBatchResponseEntry
    , ibreInappproductsupdateresponse
    , ibreInappproductsinsertresponse
    , ibreBatchId

    -- ** ApkBinary
    , ApkBinary
    , apkBinary
    , abSha1

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

    -- ** Price
    , Price
    , price
    , pPriceMicros
    , pCurrency

    -- ** InappproductsInsertRequest
    , InappproductsInsertRequest
    , inappproductsInsertRequest
    , iirInappproduct

    -- ** ApksAddExternallyHostedRequest
    , ApksAddExternallyHostedRequest
    , apksAddExternallyHostedRequest
    , aaehrExternallyHostedApk

    -- ** ListingsListResponse
    , ListingsListResponse
    , listingsListResponse
    , llrKind
    , llrListings

    -- ** ExternallyHostedApkUsesPermission
    , ExternallyHostedApkUsesPermission
    , externallyHostedApkUsesPermission
    , ehaupName
    , ehaupMaxSdkVersion

    -- ** ApksListResponse
    , ApksListResponse
    , apksListResponse
    , alrKind
    , alrApks

    -- ** EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , elrTokenPagination
    , elrPageInfo
    , elrResources

    -- ** EditsImagesUpload'ImageType
    , EditsImagesUpload'ImageType (..)

    -- ** EditsExpansionfilesUpload'ExpansionFileType
    , EditsExpansionfilesUpload'ExpansionFileType (..)

    -- ** EditsExpansionfilesPatch'ExpansionFileType
    , EditsExpansionfilesPatch'ExpansionFileType (..)

    -- ** EditsExpansionfilesGet'ExpansionFileType
    , EditsExpansionfilesGet'ExpansionFileType (..)

    -- ** InappproductsBatchResponse
    , InappproductsBatchResponse
    , inappproductsBatchResponse
    , ibrEntrys
    , ibrKind

    -- ** Entitlement
    , Entitlement
    , entitlement
    , eKind
    , eProductType
    , eToken
    , eProductId

    -- ** EditsImagesDelete'ImageType
    , EditsImagesDelete'ImageType (..)

    -- ** EditsExpansionfilesUpdate'ExpansionFileType
    , EditsExpansionfilesUpdate'ExpansionFileType (..)

    -- ** MonthDay
    , MonthDay
    , monthDay
    , mdDay
    , mdMonth

    -- ** InappproductsUpdateResponse
    , InappproductsUpdateResponse
    , inappproductsUpdateResponse
    , iurInappproduct

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- ** InappproductsBatchRequestEntry
    , InappproductsBatchRequestEntry
    , inappproductsBatchRequestEntry
    , iMethodName
    , iInappproductsinsertrequest
    , iInappproductsupdaterequest
    , iBatchId

    -- ** Image
    , Image
    , image
    , iUrl
    , iSha1
    , iId

    -- ** ExpansionFile
    , ExpansionFile
    , expansionFile
    , efFileSize
    , efReferencesVersion

    -- ** Track
    , Track
    , track
    , tVersionCodes
    , tTrack
    , tUserFraction

    -- ** InAppProductListings
    , InAppProductListings
    , inAppProductListings

    -- ** ImagesDeleteAllResponse
    , ImagesDeleteAllResponse
    , imagesDeleteAllResponse
    , idarDeleted

    -- ** InAppProductListing
    , InAppProductListing
    , inAppProductListing
    , iaplTitle
    , iaplDescription

    -- ** EditsTestersUpdate'Track
    , EditsTestersUpdate'Track (..)

    -- ** SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- ** InappproductsInsertResponse
    , InappproductsInsertResponse
    , inappproductsInsertResponse
    , iInappproduct

    -- ** ApkListingsListResponse
    , ApkListingsListResponse
    , apkListingsListResponse
    , allrKind
    , allrListings

    -- ** ApksAddExternallyHostedResponse
    , ApksAddExternallyHostedResponse
    , apksAddExternallyHostedResponse
    , aExternallyHostedApk

    -- ** TracksListResponse
    , TracksListResponse
    , tracksListResponse
    , tlrTracks
    , tlrKind

    -- ** AppEdit
    , AppEdit
    , appEdit
    , aeId
    , aeExpiryTimeSeconds

    -- ** PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- ** ImagesListResponse
    , ImagesListResponse
    , imagesListResponse
    , ilrImages

    -- ** Season
    , Season
    , season
    , sStart
    , sEnd

    -- ** EditsTestersPatch'Track
    , EditsTestersPatch'Track (..)

    -- ** InAppProductPrices
    , InAppProductPrices
    , inAppProductPrices

    -- ** SubscriptionPurchasesDeferResponse
    , SubscriptionPurchasesDeferResponse
    , subscriptionPurchasesDeferResponse
    , spdrNewExpiryTimeMillis

    -- ** ApkListing
    , ApkListing
    , apkListing
    , alLanguage
    , alRecentChanges

    -- ** SubscriptionPurchase
    , SubscriptionPurchase
    , subscriptionPurchase
    , spKind
    , spExpiryTimeMillis
    , spAutoRenewing
    , spStartTimeMillis

    -- ** ProductPurchase
    , ProductPurchase
    , productPurchase
    , ppPurchaseState
    , ppConsumptionState
    , ppKind
    , ppPurchaseTimeMillis
    , ppDeveloperPayload

    -- ** EditsTestersGet'Track
    , EditsTestersGet'Track (..)

    -- ** EditsImagesDeleteall'ImageType
    , EditsImagesDeleteall'ImageType (..)

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

    -- ** AppDetails
    , AppDetails
    , appDetails
    , adContactPhone
    , adContactEmail
    , adContactWebsite
    , adDefaultLanguage

    -- ** InappproductsBatchRequest
    , InappproductsBatchRequest
    , inappproductsBatchRequest
    , iEntrys

    -- ** EditsTracksPatch'Track
    , EditsTracksPatch'Track (..)

    -- ** InappproductsUpdateRequest
    , InappproductsUpdateRequest
    , inappproductsUpdateRequest
    , inaInappproduct

    -- ** EditsTracksGet'Track
    , EditsTracksGet'Track (..)

    -- ** EditsTracksUpdate'Track
    , EditsTracksUpdate'Track (..)
    ) where

import           Network.Google.API.Androidpublisher.Edits.Apklistings.Delete
import           Network.Google.API.Androidpublisher.Edits.Apklistings.Deleteall
import           Network.Google.API.Androidpublisher.Edits.Apklistings.Get
import           Network.Google.API.Androidpublisher.Edits.Apklistings.List
import           Network.Google.API.Androidpublisher.Edits.Apklistings.Patch
import           Network.Google.API.Androidpublisher.Edits.Apklistings.Update
import           Network.Google.API.Androidpublisher.Edits.Apks.Addexternallyhosted
import           Network.Google.API.Androidpublisher.Edits.Apks.List
import           Network.Google.API.Androidpublisher.Edits.Apks.Upload
import           Network.Google.API.Androidpublisher.Edits.Details.Get
import           Network.Google.API.Androidpublisher.Edits.Details.Patch
import           Network.Google.API.Androidpublisher.Edits.Details.Update
import           Network.Google.API.Androidpublisher.Edits.Expansionfiles.Get
import           Network.Google.API.Androidpublisher.Edits.Expansionfiles.Patch
import           Network.Google.API.Androidpublisher.Edits.Expansionfiles.Update
import           Network.Google.API.Androidpublisher.Edits.Expansionfiles.Upload
import           Network.Google.API.Androidpublisher.Edits.Images.Delete
import           Network.Google.API.Androidpublisher.Edits.Images.Deleteall
import           Network.Google.API.Androidpublisher.Edits.Images.List
import           Network.Google.API.Androidpublisher.Edits.Images.Upload
import           Network.Google.API.Androidpublisher.Edits.Listings.Delete
import           Network.Google.API.Androidpublisher.Edits.Listings.Deleteall
import           Network.Google.API.Androidpublisher.Edits.Listings.Get
import           Network.Google.API.Androidpublisher.Edits.Listings.List
import           Network.Google.API.Androidpublisher.Edits.Listings.Patch
import           Network.Google.API.Androidpublisher.Edits.Listings.Update
import           Network.Google.API.Androidpublisher.Edits.Testers.Get
import           Network.Google.API.Androidpublisher.Edits.Testers.Patch
import           Network.Google.API.Androidpublisher.Edits.Testers.Update
import           Network.Google.API.Androidpublisher.Edits.Tracks.Get
import           Network.Google.API.Androidpublisher.Edits.Tracks.List
import           Network.Google.API.Androidpublisher.Edits.Tracks.Patch
import           Network.Google.API.Androidpublisher.Edits.Tracks.Update
import           Network.Google.API.Androidpublisher.Entitlements.List
import           Network.Google.API.Androidpublisher.Inappproducts.Batch
import           Network.Google.API.Androidpublisher.Inappproducts.Delete
import           Network.Google.API.Androidpublisher.Inappproducts.Get
import           Network.Google.API.Androidpublisher.Inappproducts.Insert
import           Network.Google.API.Androidpublisher.Inappproducts.List
import           Network.Google.API.Androidpublisher.Inappproducts.Patch
import           Network.Google.API.Androidpublisher.Inappproducts.Update
import           Network.Google.API.Androidpublisher.Purchases.Products.Get
import           Network.Google.API.Androidpublisher.Purchases.Subscriptions.Cancel
import           Network.Google.API.Androidpublisher.Purchases.Subscriptions.Defer
import           Network.Google.API.Androidpublisher.Purchases.Subscriptions.Get
import           Network.Google.API.Androidpublisher.Purchases.Subscriptions.Refund
import           Network.Google.API.Androidpublisher.Purchases.Subscriptions.Revoke
import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type PlayDeveloper =
     EditsExpansionfilesUploadAPI :<|>
       EditsListingsListAPI
       :<|> EditsTracksUpdateAPI
       :<|> PurchasesSubscriptionsCancelAPI
       :<|> EditsListingsUpdateAPI
       :<|> EditsTestersUpdateAPI
       :<|> PurchasesSubscriptionsDeferAPI
       :<|> EditsImagesUploadAPI
       :<|> EditsExpansionfilesGetAPI
       :<|> EditsApklistingsDeleteAPI
       :<|> EditsDetailsGetAPI
       :<|> InappproductsUpdateAPI
       :<|> EditsImagesDeleteAPI
       :<|> EditsApklistingsGetAPI
       :<|> PurchasesProductsGetAPI
       :<|> EditsTracksPatchAPI
       :<|> EditsApklistingsPatchAPI
       :<|> InappproductsBatchAPI
       :<|> InappproductsListAPI
       :<|> EditsListingsDeleteallAPI
       :<|> InappproductsGetAPI
       :<|> EditsTestersPatchAPI
       :<|> EditsImagesListAPI
       :<|> PurchasesSubscriptionsRevokeAPI
       :<|> InappproductsPatchAPI
       :<|> EditsExpansionfilesUpdateAPI
       :<|> PurchasesSubscriptionsRefundAPI
       :<|> EditsApklistingsListAPI
       :<|> EditsDetailsUpdateAPI
       :<|> EntitlementsListAPI
       :<|> EditsApklistingsUpdateAPI
       :<|> EditsApksAddexternallyhostedAPI
       :<|> EditsApksListAPI
       :<|> EditsTracksGetAPI
       :<|> InappproductsInsertAPI
       :<|> EditsApksUploadAPI
       :<|> EditsListingsDeleteAPI
       :<|> EditsListingsGetAPI
       :<|> EditsExpansionfilesPatchAPI
       :<|> InappproductsDeleteAPI
       :<|> EditsTracksListAPI
       :<|> EditsTestersGetAPI
       :<|> EditsDetailsPatchAPI
       :<|> EditsApklistingsDeleteallAPI
       :<|> EditsListingsPatchAPI
       :<|> PurchasesSubscriptionsGetAPI
       :<|> EditsImagesDeleteallAPI

playDeveloper :: Proxy PlayDeveloper
playDeveloper = Proxy
