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
    , module Network.Google.Resource.Androidpublisher.Edits.Apklistings.Delete

    -- ** AndroidpublisherEditsApklistingsDeleteall
    , module Network.Google.Resource.Androidpublisher.Edits.Apklistings.Deleteall

    -- ** AndroidpublisherEditsApklistingsGet
    , module Network.Google.Resource.Androidpublisher.Edits.Apklistings.Get

    -- ** AndroidpublisherEditsApklistingsList
    , module Network.Google.Resource.Androidpublisher.Edits.Apklistings.List

    -- ** AndroidpublisherEditsApklistingsPatch
    , module Network.Google.Resource.Androidpublisher.Edits.Apklistings.Patch

    -- ** AndroidpublisherEditsApklistingsUpdate
    , module Network.Google.Resource.Androidpublisher.Edits.Apklistings.Update

    -- ** AndroidpublisherEditsApksAddexternallyhosted
    , module Network.Google.Resource.Androidpublisher.Edits.Apks.Addexternallyhosted

    -- ** AndroidpublisherEditsApksList
    , module Network.Google.Resource.Androidpublisher.Edits.Apks.List

    -- ** AndroidpublisherEditsApksUpload
    , module Network.Google.Resource.Androidpublisher.Edits.Apks.Upload

    -- ** AndroidpublisherEditsCommit
    , module Network.Google.Resource.Androidpublisher.Edits.Commit

    -- ** AndroidpublisherEditsDelete
    , module Network.Google.Resource.Androidpublisher.Edits.Delete

    -- ** AndroidpublisherEditsDetailsGet
    , module Network.Google.Resource.Androidpublisher.Edits.Details.Get

    -- ** AndroidpublisherEditsDetailsPatch
    , module Network.Google.Resource.Androidpublisher.Edits.Details.Patch

    -- ** AndroidpublisherEditsDetailsUpdate
    , module Network.Google.Resource.Androidpublisher.Edits.Details.Update

    -- ** AndroidpublisherEditsExpansionfilesGet
    , module Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Get

    -- ** AndroidpublisherEditsExpansionfilesPatch
    , module Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Patch

    -- ** AndroidpublisherEditsExpansionfilesUpdate
    , module Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Update

    -- ** AndroidpublisherEditsExpansionfilesUpload
    , module Network.Google.Resource.Androidpublisher.Edits.Expansionfiles.Upload

    -- ** AndroidpublisherEditsGet
    , module Network.Google.Resource.Androidpublisher.Edits.Get

    -- ** AndroidpublisherEditsImagesDelete
    , module Network.Google.Resource.Androidpublisher.Edits.Images.Delete

    -- ** AndroidpublisherEditsImagesDeleteall
    , module Network.Google.Resource.Androidpublisher.Edits.Images.Deleteall

    -- ** AndroidpublisherEditsImagesList
    , module Network.Google.Resource.Androidpublisher.Edits.Images.List

    -- ** AndroidpublisherEditsImagesUpload
    , module Network.Google.Resource.Androidpublisher.Edits.Images.Upload

    -- ** AndroidpublisherEditsInsert
    , module Network.Google.Resource.Androidpublisher.Edits.Insert

    -- ** AndroidpublisherEditsListingsDelete
    , module Network.Google.Resource.Androidpublisher.Edits.Listings.Delete

    -- ** AndroidpublisherEditsListingsDeleteall
    , module Network.Google.Resource.Androidpublisher.Edits.Listings.Deleteall

    -- ** AndroidpublisherEditsListingsGet
    , module Network.Google.Resource.Androidpublisher.Edits.Listings.Get

    -- ** AndroidpublisherEditsListingsList
    , module Network.Google.Resource.Androidpublisher.Edits.Listings.List

    -- ** AndroidpublisherEditsListingsPatch
    , module Network.Google.Resource.Androidpublisher.Edits.Listings.Patch

    -- ** AndroidpublisherEditsListingsUpdate
    , module Network.Google.Resource.Androidpublisher.Edits.Listings.Update

    -- ** AndroidpublisherEditsTestersGet
    , module Network.Google.Resource.Androidpublisher.Edits.Testers.Get

    -- ** AndroidpublisherEditsTestersPatch
    , module Network.Google.Resource.Androidpublisher.Edits.Testers.Patch

    -- ** AndroidpublisherEditsTestersUpdate
    , module Network.Google.Resource.Androidpublisher.Edits.Testers.Update

    -- ** AndroidpublisherEditsTracksGet
    , module Network.Google.Resource.Androidpublisher.Edits.Tracks.Get

    -- ** AndroidpublisherEditsTracksList
    , module Network.Google.Resource.Androidpublisher.Edits.Tracks.List

    -- ** AndroidpublisherEditsTracksPatch
    , module Network.Google.Resource.Androidpublisher.Edits.Tracks.Patch

    -- ** AndroidpublisherEditsTracksUpdate
    , module Network.Google.Resource.Androidpublisher.Edits.Tracks.Update

    -- ** AndroidpublisherEditsValidate
    , module Network.Google.Resource.Androidpublisher.Edits.Validate

    -- ** AndroidpublisherEntitlementsList
    , module Network.Google.Resource.Androidpublisher.Entitlements.List

    -- ** AndroidpublisherInappproductsBatch
    , module Network.Google.Resource.Androidpublisher.Inappproducts.Batch

    -- ** AndroidpublisherInappproductsDelete
    , module Network.Google.Resource.Androidpublisher.Inappproducts.Delete

    -- ** AndroidpublisherInappproductsGet
    , module Network.Google.Resource.Androidpublisher.Inappproducts.Get

    -- ** AndroidpublisherInappproductsInsert
    , module Network.Google.Resource.Androidpublisher.Inappproducts.Insert

    -- ** AndroidpublisherInappproductsList
    , module Network.Google.Resource.Androidpublisher.Inappproducts.List

    -- ** AndroidpublisherInappproductsPatch
    , module Network.Google.Resource.Androidpublisher.Inappproducts.Patch

    -- ** AndroidpublisherInappproductsUpdate
    , module Network.Google.Resource.Androidpublisher.Inappproducts.Update

    -- ** AndroidpublisherPurchasesProductsGet
    , module Network.Google.Resource.Androidpublisher.Purchases.Products.Get

    -- ** AndroidpublisherPurchasesSubscriptionsCancel
    , module Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Cancel

    -- ** AndroidpublisherPurchasesSubscriptionsDefer
    , module Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Defer

    -- ** AndroidpublisherPurchasesSubscriptionsGet
    , module Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Get

    -- ** AndroidpublisherPurchasesSubscriptionsRefund
    , module Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Refund

    -- ** AndroidpublisherPurchasesSubscriptionsRevoke
    , module Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Revoke

    -- * Types

    -- ** InappproductsUpdateResponse
    , InappproductsUpdateResponse
    , inappproductsUpdateResponse
    , iurInappproduct

    -- ** InAppProductListings
    , InAppProductListings
    , inAppProductListings

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

    -- ** AndroidpublisherEditsExpansionfilesPatchExpansionFileType
    , AndroidpublisherEditsExpansionfilesPatchExpansionFileType (..)

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

    -- ** AndroidpublisherEditsExpansionfilesGetExpansionFileType
    , AndroidpublisherEditsExpansionfilesGetExpansionFileType (..)

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

    -- ** AndroidpublisherEditsTracksUpdateTrack
    , AndroidpublisherEditsTracksUpdateTrack (..)

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

    -- ** InAppProductPrices
    , InAppProductPrices
    , inAppProductPrices

    -- ** ImagesUploadResponse
    , ImagesUploadResponse
    , imagesUploadResponse
    , iurImage

    -- ** ExpansionFilesUploadResponse
    , ExpansionFilesUploadResponse
    , expansionFilesUploadResponse
    , efurExpansionFile

    -- ** AndroidpublisherEditsTracksGetTrack
    , AndroidpublisherEditsTracksGetTrack (..)

    -- ** InappproductsListResponse
    , InappproductsListResponse
    , inappproductsListResponse
    , ilrTokenPagination
    , ilrPageInfo
    , ilrKind
    , ilrInappproduct

    -- ** AndroidpublisherEditsTracksPatchTrack
    , AndroidpublisherEditsTracksPatchTrack (..)

    -- ** SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- ** AndroidpublisherEditsExpansionfilesUploadExpansionFileType
    , AndroidpublisherEditsExpansionfilesUploadExpansionFileType (..)

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

    -- ** AndroidpublisherEditsImagesUploadImageType
    , AndroidpublisherEditsImagesUploadImageType (..)

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

    -- ** AndroidpublisherEditsImagesDeleteImageType
    , AndroidpublisherEditsImagesDeleteImageType (..)

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

    -- ** AndroidpublisherEditsExpansionfilesUpdateExpansionFileType
    , AndroidpublisherEditsExpansionfilesUpdateExpansionFileType (..)

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

    -- ** AndroidpublisherEditsImagesListImageType
    , AndroidpublisherEditsImagesListImageType (..)

    -- ** AndroidpublisherEditsTestersUpdateTrack
    , AndroidpublisherEditsTestersUpdateTrack (..)

    -- ** InappproductsUpdateRequest
    , InappproductsUpdateRequest
    , inappproductsUpdateRequest
    , inaInappproduct

    -- ** AndroidpublisherEditsImagesDeleteallImageType
    , AndroidpublisherEditsImagesDeleteallImageType (..)

    -- ** AndroidpublisherEditsTestersGetTrack
    , AndroidpublisherEditsTestersGetTrack (..)

    -- ** AndroidpublisherEditsTestersPatchTrack
    , AndroidpublisherEditsTestersPatchTrack (..)

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

    -- ** Alt
    , Alt (..)
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
     InappproductsBatchResource :<|>
       InappproductsInsertResource
       :<|> InappproductsListResource
       :<|> InappproductsPatchResource
       :<|> InappproductsGetResource
       :<|> InappproductsDeleteResource
       :<|> InappproductsUpdateResource
       :<|> EditsImagesListResource
       :<|> EditsImagesDeleteallResource
       :<|> EditsImagesUploadResource
       :<|> EditsImagesDeleteResource
       :<|> EditsExpansionfilesPatchResource
       :<|> EditsExpansionfilesGetResource
       :<|> EditsExpansionfilesUploadResource
       :<|> EditsExpansionfilesUpdateResource
       :<|> EditsTracksListResource
       :<|> EditsTracksPatchResource
       :<|> EditsTracksGetResource
       :<|> EditsTracksUpdateResource
       :<|> EditsTestersPatchResource
       :<|> EditsTestersGetResource
       :<|> EditsTestersUpdateResource
       :<|> EditsDetailsPatchResource
       :<|> EditsDetailsGetResource
       :<|> EditsDetailsUpdateResource
       :<|> EditsApklistingsListResource
       :<|> EditsApklistingsDeleteallResource
       :<|> EditsApklistingsPatchResource
       :<|> EditsApklistingsGetResource
       :<|> EditsApklistingsDeleteResource
       :<|> EditsApklistingsUpdateResource
       :<|> EditsApksListResource
       :<|> EditsApksAddexternallyhostedResource
       :<|> EditsApksUploadResource
       :<|> EditsListingsListResource
       :<|> EditsListingsDeleteallResource
       :<|> EditsListingsPatchResource
       :<|> EditsListingsGetResource
       :<|> EditsListingsDeleteResource
       :<|> EditsListingsUpdateResource
       :<|> EditsInsertResource
       :<|> EditsGetResource
       :<|> EditsValidateResource
       :<|> EditsDeleteResource
       :<|> EditsCommitResource
       :<|> EntitlementsListResource
       :<|> PurchasesProductsGetResource
       :<|> PurchasesSubscriptionsDeferResource
       :<|> PurchasesSubscriptionsGetResource
       :<|> PurchasesSubscriptionsRefundResource
       :<|> PurchasesSubscriptionsRevokeResource
       :<|> PurchasesSubscriptionsCancelResource

playDeveloperAPI :: Proxy PlayDeveloperAPI
playDeveloperAPI = Proxy
