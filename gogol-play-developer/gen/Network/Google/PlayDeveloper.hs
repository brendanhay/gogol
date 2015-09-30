{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PlayDeveloper
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets Android application developers access their Google Play accounts.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference>
module Network.Google.PlayDeveloper
    (
    -- * API
      PlayDeveloperAPI
    , playDeveloperAPI
    , playDeveloperURL

    -- * Service Methods

    -- * REST Resources

    -- ** AndroidpublisherEditsApklistingsDelete
    , module Androidpublisher.Edits.Apklistings.Delete

    -- ** AndroidpublisherEditsApklistingsDeleteall
    , module Androidpublisher.Edits.Apklistings.Deleteall

    -- ** AndroidpublisherEditsApklistingsGet
    , module Androidpublisher.Edits.Apklistings.Get

    -- ** AndroidpublisherEditsApklistingsList
    , module Androidpublisher.Edits.Apklistings.List

    -- ** AndroidpublisherEditsApklistingsPatch
    , module Androidpublisher.Edits.Apklistings.Patch

    -- ** AndroidpublisherEditsApklistingsUpdate
    , module Androidpublisher.Edits.Apklistings.Update

    -- ** AndroidpublisherEditsApksAddexternallyhosted
    , module Androidpublisher.Edits.Apks.Addexternallyhosted

    -- ** AndroidpublisherEditsApksList
    , module Androidpublisher.Edits.Apks.List

    -- ** AndroidpublisherEditsApksUpload
    , module Androidpublisher.Edits.Apks.Upload

    -- ** AndroidpublisherEditsCommit
    , module Androidpublisher.Edits.Commit

    -- ** AndroidpublisherEditsDelete
    , module Androidpublisher.Edits.Delete

    -- ** AndroidpublisherEditsDetailsGet
    , module Androidpublisher.Edits.Details.Get

    -- ** AndroidpublisherEditsDetailsPatch
    , module Androidpublisher.Edits.Details.Patch

    -- ** AndroidpublisherEditsDetailsUpdate
    , module Androidpublisher.Edits.Details.Update

    -- ** AndroidpublisherEditsExpansionfilesGet
    , module Androidpublisher.Edits.Expansionfiles.Get

    -- ** AndroidpublisherEditsExpansionfilesPatch
    , module Androidpublisher.Edits.Expansionfiles.Patch

    -- ** AndroidpublisherEditsExpansionfilesUpdate
    , module Androidpublisher.Edits.Expansionfiles.Update

    -- ** AndroidpublisherEditsExpansionfilesUpload
    , module Androidpublisher.Edits.Expansionfiles.Upload

    -- ** AndroidpublisherEditsGet
    , module Androidpublisher.Edits.Get

    -- ** AndroidpublisherEditsImagesDelete
    , module Androidpublisher.Edits.Images.Delete

    -- ** AndroidpublisherEditsImagesDeleteall
    , module Androidpublisher.Edits.Images.Deleteall

    -- ** AndroidpublisherEditsImagesList
    , module Androidpublisher.Edits.Images.List

    -- ** AndroidpublisherEditsImagesUpload
    , module Androidpublisher.Edits.Images.Upload

    -- ** AndroidpublisherEditsInsert
    , module Androidpublisher.Edits.Insert

    -- ** AndroidpublisherEditsListingsDelete
    , module Androidpublisher.Edits.Listings.Delete

    -- ** AndroidpublisherEditsListingsDeleteall
    , module Androidpublisher.Edits.Listings.Deleteall

    -- ** AndroidpublisherEditsListingsGet
    , module Androidpublisher.Edits.Listings.Get

    -- ** AndroidpublisherEditsListingsList
    , module Androidpublisher.Edits.Listings.List

    -- ** AndroidpublisherEditsListingsPatch
    , module Androidpublisher.Edits.Listings.Patch

    -- ** AndroidpublisherEditsListingsUpdate
    , module Androidpublisher.Edits.Listings.Update

    -- ** AndroidpublisherEditsTestersGet
    , module Androidpublisher.Edits.Testers.Get

    -- ** AndroidpublisherEditsTestersPatch
    , module Androidpublisher.Edits.Testers.Patch

    -- ** AndroidpublisherEditsTestersUpdate
    , module Androidpublisher.Edits.Testers.Update

    -- ** AndroidpublisherEditsTracksGet
    , module Androidpublisher.Edits.Tracks.Get

    -- ** AndroidpublisherEditsTracksList
    , module Androidpublisher.Edits.Tracks.List

    -- ** AndroidpublisherEditsTracksPatch
    , module Androidpublisher.Edits.Tracks.Patch

    -- ** AndroidpublisherEditsTracksUpdate
    , module Androidpublisher.Edits.Tracks.Update

    -- ** AndroidpublisherEditsValidate
    , module Androidpublisher.Edits.Validate

    -- ** AndroidpublisherEntitlementsList
    , module Androidpublisher.Entitlements.List

    -- ** AndroidpublisherInappproductsBatch
    , module Androidpublisher.Inappproducts.Batch

    -- ** AndroidpublisherInappproductsDelete
    , module Androidpublisher.Inappproducts.Delete

    -- ** AndroidpublisherInappproductsGet
    , module Androidpublisher.Inappproducts.Get

    -- ** AndroidpublisherInappproductsInsert
    , module Androidpublisher.Inappproducts.Insert

    -- ** AndroidpublisherInappproductsList
    , module Androidpublisher.Inappproducts.List

    -- ** AndroidpublisherInappproductsPatch
    , module Androidpublisher.Inappproducts.Patch

    -- ** AndroidpublisherInappproductsUpdate
    , module Androidpublisher.Inappproducts.Update

    -- ** AndroidpublisherPurchasesProductsGet
    , module Androidpublisher.Purchases.Products.Get

    -- ** AndroidpublisherPurchasesSubscriptionsCancel
    , module Androidpublisher.Purchases.Subscriptions.Cancel

    -- ** AndroidpublisherPurchasesSubscriptionsDefer
    , module Androidpublisher.Purchases.Subscriptions.Defer

    -- ** AndroidpublisherPurchasesSubscriptionsGet
    , module Androidpublisher.Purchases.Subscriptions.Get

    -- ** AndroidpublisherPurchasesSubscriptionsRefund
    , module Androidpublisher.Purchases.Subscriptions.Refund

    -- ** AndroidpublisherPurchasesSubscriptionsRevoke
    , module Androidpublisher.Purchases.Subscriptions.Revoke

    -- * Types

    -- ** InappproductsUpdateResponse
    , InappproductsUpdateResponse
    , inappproductsUpdateResponse
    , iurInappproduct

    -- ** MonthDay
    , MonthDay
    , monthDay
    , mdDay
    , mdMonth

    -- ** InappproductsBatchRequestEntry
    , InappproductsBatchRequestEntry
    , inappproductsBatchRequestEntry
    , ibreMethodName
    , ibreInappproductsinsertrequest
    , ibreInappproductsupdaterequest
    , ibreBatchId

    -- ** InAppProductListing
    , InAppProductListing
    , inAppProductListing
    , iaplTitle
    , iaplDescription

    -- ** Track
    , Track
    , track
    , tVersionCodes
    , tTrack
    , tUserFraction

    -- ** TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- ** ExpansionFile
    , ExpansionFile
    , expansionFile
    , efFileSize
    , efReferencesVersion

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

    -- ** SubscriptionPurchasesDeferRequest
    , SubscriptionPurchasesDeferRequest
    , subscriptionPurchasesDeferRequest
    , spdrDeferralInfo

    -- ** Apk
    , Apk
    , apk
    , apkVersionCode
    , apkBinary

    -- ** Testers
    , Testers
    , testers
    , tGooglePlusCommunities
    , tGoogleGroups

    -- ** Listing
    , Listing
    , listing
    , lFullDescription
    , lVideo
    , lShortDescription
    , lLanguage
    , lTitle

    -- ** Season
    , Season
    , season
    , sStart
    , sEnd

    -- ** ImagesListResponse
    , ImagesListResponse
    , imagesListResponse
    , ilrImages

    -- ** AppEdit
    , AppEdit
    , appEdit
    , aeId
    , aeExpiryTimeSeconds

    -- ** TracksListResponse
    , TracksListResponse
    , tracksListResponse
    , tlrTracks
    , tlrKind

    -- ** PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- ** ApkListing
    , ApkListing
    , apkListing
    , alLanguage
    , alRecentChanges

    -- ** SubscriptionPurchasesDeferResponse
    , SubscriptionPurchasesDeferResponse
    , subscriptionPurchasesDeferResponse
    , spdrNewExpiryTimeMillis

    -- ** ProductPurchase
    , ProductPurchase
    , productPurchase
    , ppPurchaseState
    , ppConsumptionState
    , ppKind
    , ppPurchaseTimeMillis
    , ppDeveloperPayload

    -- ** SubscriptionPurchase
    , SubscriptionPurchase
    , subscriptionPurchase
    , spKind
    , spExpiryTimeMillis
    , spAutoRenewing
    , spStartTimeMillis

    -- ** InappproductsBatchRequest
    , InappproductsBatchRequest
    , inappproductsBatchRequest
    , ibrEntrys

    -- ** AppDetails
    , AppDetails
    , appDetails
    , adContactPhone
    , adContactEmail
    , adContactWebsite
    , adDefaultLanguage

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

    -- ** ImagesUploadResponse
    , ImagesUploadResponse
    , imagesUploadResponse
    , iurImage

    -- ** ExpansionFilesUploadResponse
    , ExpansionFilesUploadResponse
    , expansionFilesUploadResponse
    , efurExpansionFile

    -- ** InappproductsListResponse
    , InappproductsListResponse
    , inappproductsListResponse
    , ilrTokenPagination
    , ilrPageInfo
    , ilrKind
    , ilrInappproduct

    -- ** SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- ** ApksAddExternallyHostedResponse
    , ApksAddExternallyHostedResponse
    , apksAddExternallyHostedResponse
    , aaehrExternallyHostedApk

    -- ** ApkListingsListResponse
    , ApkListingsListResponse
    , apkListingsListResponse
    , allrKind
    , allrListings

    -- ** InappproductsInsertResponse
    , InappproductsInsertResponse
    , inappproductsInsertResponse
    , iirInappproduct

    -- ** Price
    , Price
    , price
    , pPriceMicros
    , pCurrency

    -- ** InappproductsBatchResponseEntry
    , InappproductsBatchResponseEntry
    , inappproductsBatchResponseEntry
    , iInappproductsupdateresponse
    , iInappproductsinsertresponse
    , iBatchId

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

    -- ** ApkBinary
    , ApkBinary
    , apkBinary
    , abSha1

    -- ** ExternallyHostedApkUsesPermission
    , ExternallyHostedApkUsesPermission
    , externallyHostedApkUsesPermission
    , ehaupName
    , ehaupMaxSdkVersion

    -- ** ListingsListResponse
    , ListingsListResponse
    , listingsListResponse
    , llrKind
    , llrListings

    -- ** InappproductsInsertRequest
    , InappproductsInsertRequest
    , inappproductsInsertRequest
    , iInappproduct

    -- ** ApksAddExternallyHostedRequest
    , ApksAddExternallyHostedRequest
    , apksAddExternallyHostedRequest
    , aExternallyHostedApk

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

    -- ** InappproductsUpdateRequest
    , InappproductsUpdateRequest
    , inappproductsUpdateRequest
    , inaInappproduct

    -- ** InappproductsBatchResponse
    , InappproductsBatchResponse
    , inappproductsBatchResponse
    , iEntrys
    , iKind

    -- ** Entitlement
    , Entitlement
    , entitlement
    , eKind
    , eProductType
    , eToken
    , eProductId
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Androidpublisher.Edits.Apklistings.Delete
import           Network.Google.Resource.Androidpublisher.Edits.Apklistings.Deleteall
import           Network.Google.Resource.Androidpublisher.Edits.Apklistings.Get
import           Network.Google.Resource.Androidpublisher.Edits.Apklistings.List
import           Network.Google.Resource.Androidpublisher.Edits.Apklistings.Patch
import           Network.Google.Resource.Androidpublisher.Edits.Apklistings.Update
import           Network.Google.Resource.Androidpublisher.Edits.Apks.Addexternallyhosted
import           Network.Google.Resource.Androidpublisher.Edits.Apks.List
import           Network.Google.Resource.Androidpublisher.Edits.Apks.Upload
import           Network.Google.Resource.Androidpublisher.Edits.Commit
import           Network.Google.Resource.Androidpublisher.Edits.Delete
import           Network.Google.Resource.Androidpublisher.Edits.Details.Get
import           Network.Google.Resource.Androidpublisher.Edits.Details.Patch
import           Network.Google.Resource.Androidpublisher.Edits.Details.Update
import           Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Get
import           Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Patch
import           Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Update
import           Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Upload
import           Network.Google.Resource.Androidpublisher.Edits.Get
import           Network.Google.Resource.Androidpublisher.Edits.Images.Delete
import           Network.Google.Resource.Androidpublisher.Edits.Images.Deleteall
import           Network.Google.Resource.Androidpublisher.Edits.Images.List
import           Network.Google.Resource.Androidpublisher.Edits.Images.Upload
import           Network.Google.Resource.Androidpublisher.Edits.Insert
import           Network.Google.Resource.Androidpublisher.Edits.Listings.Delete
import           Network.Google.Resource.Androidpublisher.Edits.Listings.Deleteall
import           Network.Google.Resource.Androidpublisher.Edits.Listings.Get
import           Network.Google.Resource.Androidpublisher.Edits.Listings.List
import           Network.Google.Resource.Androidpublisher.Edits.Listings.Patch
import           Network.Google.Resource.Androidpublisher.Edits.Listings.Update
import           Network.Google.Resource.Androidpublisher.Edits.Testers.Get
import           Network.Google.Resource.Androidpublisher.Edits.Testers.Patch
import           Network.Google.Resource.Androidpublisher.Edits.Testers.Update
import           Network.Google.Resource.Androidpublisher.Edits.Tracks.Get
import           Network.Google.Resource.Androidpublisher.Edits.Tracks.List
import           Network.Google.Resource.Androidpublisher.Edits.Tracks.Patch
import           Network.Google.Resource.Androidpublisher.Edits.Tracks.Update
import           Network.Google.Resource.Androidpublisher.Edits.Validate
import           Network.Google.Resource.Androidpublisher.Entitlements.List
import           Network.Google.Resource.Androidpublisher.Inappproducts.Batch
import           Network.Google.Resource.Androidpublisher.Inappproducts.Delete
import           Network.Google.Resource.Androidpublisher.Inappproducts.Get
import           Network.Google.Resource.Androidpublisher.Inappproducts.Insert
import           Network.Google.Resource.Androidpublisher.Inappproducts.List
import           Network.Google.Resource.Androidpublisher.Inappproducts.Patch
import           Network.Google.Resource.Androidpublisher.Inappproducts.Update
import           Network.Google.Resource.Androidpublisher.Purchases.Products.Get
import           Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Cancel
import           Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Defer
import           Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Get
import           Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Refund
import           Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Revoke

{- $resources
TODO
-}

type PlayDeveloperAPI =
     Inappproducts :<|> Edits :<|> Entitlements :<|>
       Purchases

playDeveloperAPI :: Proxy PlayDeveloperAPI
playDeveloperAPI = Proxy
