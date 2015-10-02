{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AndroidPublisher
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets Android application developers access their Google Play accounts.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference>
module Network.Google.AndroidPublisher
    (
    -- * API
      AndroidPublisherAPI
    , androidPublisherAPI
    , androidPublisherURL

    -- * Service Methods

    -- * REST Resources

    -- ** AndroidPublisherEditsAPKListingsDelete
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Delete

    -- ** AndroidPublisherEditsAPKListingsDeleteall
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Deleteall

    -- ** AndroidPublisherEditsAPKListingsGet
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Get

    -- ** AndroidPublisherEditsAPKListingsList
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.List

    -- ** AndroidPublisherEditsAPKListingsPatch
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Patch

    -- ** AndroidPublisherEditsAPKListingsUpdate
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Update

    -- ** AndroidPublisherEditsAPKsAddexternallyhosted
    , module Network.Google.Resource.AndroidPublisher.Edits.APKs.Addexternallyhosted

    -- ** AndroidPublisherEditsAPKsList
    , module Network.Google.Resource.AndroidPublisher.Edits.APKs.List

    -- ** AndroidPublisherEditsAPKsUpload
    , module Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload

    -- ** AndroidPublisherEditsCommit
    , module Network.Google.Resource.AndroidPublisher.Edits.Commit

    -- ** AndroidPublisherEditsDelete
    , module Network.Google.Resource.AndroidPublisher.Edits.Delete

    -- ** AndroidPublisherEditsDetailsGet
    , module Network.Google.Resource.AndroidPublisher.Edits.Details.Get

    -- ** AndroidPublisherEditsDetailsPatch
    , module Network.Google.Resource.AndroidPublisher.Edits.Details.Patch

    -- ** AndroidPublisherEditsDetailsUpdate
    , module Network.Google.Resource.AndroidPublisher.Edits.Details.Update

    -- ** AndroidPublisherEditsExpansionfilesGet
    , module Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Get

    -- ** AndroidPublisherEditsExpansionfilesPatch
    , module Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Patch

    -- ** AndroidPublisherEditsExpansionfilesUpdate
    , module Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Update

    -- ** AndroidPublisherEditsExpansionfilesUpload
    , module Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Upload

    -- ** AndroidPublisherEditsGet
    , module Network.Google.Resource.AndroidPublisher.Edits.Get

    -- ** AndroidPublisherEditsImagesDelete
    , module Network.Google.Resource.AndroidPublisher.Edits.Images.Delete

    -- ** AndroidPublisherEditsImagesDeleteall
    , module Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall

    -- ** AndroidPublisherEditsImagesList
    , module Network.Google.Resource.AndroidPublisher.Edits.Images.List

    -- ** AndroidPublisherEditsImagesUpload
    , module Network.Google.Resource.AndroidPublisher.Edits.Images.Upload

    -- ** AndroidPublisherEditsInsert
    , module Network.Google.Resource.AndroidPublisher.Edits.Insert

    -- ** AndroidPublisherEditsListingsDelete
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Delete

    -- ** AndroidPublisherEditsListingsDeleteall
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Deleteall

    -- ** AndroidPublisherEditsListingsGet
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Get

    -- ** AndroidPublisherEditsListingsList
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.List

    -- ** AndroidPublisherEditsListingsPatch
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Patch

    -- ** AndroidPublisherEditsListingsUpdate
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Update

    -- ** AndroidPublisherEditsTestersGet
    , module Network.Google.Resource.AndroidPublisher.Edits.Testers.Get

    -- ** AndroidPublisherEditsTestersPatch
    , module Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch

    -- ** AndroidPublisherEditsTestersUpdate
    , module Network.Google.Resource.AndroidPublisher.Edits.Testers.Update

    -- ** AndroidPublisherEditsTracksGet
    , module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Get

    -- ** AndroidPublisherEditsTracksList
    , module Network.Google.Resource.AndroidPublisher.Edits.Tracks.List

    -- ** AndroidPublisherEditsTracksPatch
    , module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Patch

    -- ** AndroidPublisherEditsTracksUpdate
    , module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Update

    -- ** AndroidPublisherEditsValidate
    , module Network.Google.Resource.AndroidPublisher.Edits.Validate

    -- ** AndroidPublisherEntitlementsList
    , module Network.Google.Resource.AndroidPublisher.Entitlements.List

    -- ** AndroidPublisherInappproductsBatch
    , module Network.Google.Resource.AndroidPublisher.Inappproducts.Batch

    -- ** AndroidPublisherInappproductsDelete
    , module Network.Google.Resource.AndroidPublisher.Inappproducts.Delete

    -- ** AndroidPublisherInappproductsGet
    , module Network.Google.Resource.AndroidPublisher.Inappproducts.Get

    -- ** AndroidPublisherInappproductsInsert
    , module Network.Google.Resource.AndroidPublisher.Inappproducts.Insert

    -- ** AndroidPublisherInappproductsList
    , module Network.Google.Resource.AndroidPublisher.Inappproducts.List

    -- ** AndroidPublisherInappproductsPatch
    , module Network.Google.Resource.AndroidPublisher.Inappproducts.Patch

    -- ** AndroidPublisherInappproductsUpdate
    , module Network.Google.Resource.AndroidPublisher.Inappproducts.Update

    -- ** AndroidPublisherPurchasesProductsGet
    , module Network.Google.Resource.AndroidPublisher.Purchases.Products.Get

    -- ** AndroidPublisherPurchasesSubscriptionsCancel
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel

    -- ** AndroidPublisherPurchasesSubscriptionsDefer
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Defer

    -- ** AndroidPublisherPurchasesSubscriptionsGet
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Get

    -- ** AndroidPublisherPurchasesSubscriptionsRefund
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund

    -- ** AndroidPublisherPurchasesSubscriptionsRevoke
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke

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

    -- ** AndroidPublisherEditsExpansionfilesPatchExpansionFileType
    , AndroidPublisherEditsExpansionfilesPatchExpansionFileType (..)

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

    -- ** AndroidPublisherEditsExpansionfilesGetExpansionFileType
    , AndroidPublisherEditsExpansionfilesGetExpansionFileType (..)

    -- ** Image
    , Image
    , image
    , iURL
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

    -- ** APK
    , APK
    , aPK
    , apkVersionCode
    , apkBinary

    -- ** Testers
    , Testers
    , testers
    , tGooglePlusCommUnities
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

    -- ** APKListing
    , APKListing
    , aPKListing
    , apklLanguage
    , apklRecentChanges

    -- ** AndroidPublisherEditsTracksUpdateTrack
    , AndroidPublisherEditsTracksUpdateTrack (..)

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
    , ppDeveloperPayLoad

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

    -- ** ExternallyHostedAPK
    , ExternallyHostedAPK
    , externallyHostedAPK
    , ehapkApplicationLabel
    , ehapkMaximumSdk
    , ehapkNATiveCodes
    , ehapkVersionCode
    , ehapkFileSha256Base64
    , ehapkExternallyHostedURL
    , ehapkVersionName
    , ehapkPackageName
    , ehapkFileSize
    , ehapkIconBase64
    , ehapkUsesFeatures
    , ehapkMinimumSdk
    , ehapkFileSha1Base64
    , ehapkUsesPermissions
    , ehapkCertificateBase64s

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

    -- ** AndroidPublisherEditsTracksGetTrack
    , AndroidPublisherEditsTracksGetTrack (..)

    -- ** InappproductsListResponse
    , InappproductsListResponse
    , inappproductsListResponse
    , ilrTokenPagination
    , ilrPageInfo
    , ilrKind
    , ilrInappproduct

    -- ** AndroidPublisherEditsTracksPatchTrack
    , AndroidPublisherEditsTracksPatchTrack (..)

    -- ** SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- ** AndroidPublisherEditsExpansionfilesUploadExpansionFileType
    , AndroidPublisherEditsExpansionfilesUploadExpansionFileType (..)

    -- ** APKsAddExternallyHostedResponse
    , APKsAddExternallyHostedResponse
    , aPKsAddExternallyHostedResponse
    , apkaehrExternallyHostedAPK

    -- ** APKListingsListResponse
    , APKListingsListResponse
    , aPKListingsListResponse
    , apkllrKind
    , apkllrListings

    -- ** InappproductsInsertResponse
    , InappproductsInsertResponse
    , inappproductsInsertResponse
    , iirInappproduct

    -- ** AndroidPublisherEditsImagesUploadImageType
    , AndroidPublisherEditsImagesUploadImageType (..)

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

    -- ** APKBinary
    , APKBinary
    , aPKBinary
    , apkbSha1

    -- ** AndroidPublisherEditsImagesDeleteImageType
    , AndroidPublisherEditsImagesDeleteImageType (..)

    -- ** ExternallyHostedAPKUsesPermission
    , ExternallyHostedAPKUsesPermission
    , externallyHostedAPKUsesPermission
    , ehapkupName
    , ehapkupMaxSdkVersion

    -- ** ListingsListResponse
    , ListingsListResponse
    , listingsListResponse
    , llrKind
    , llrListings

    -- ** AndroidPublisherEditsExpansionfilesUpdateExpansionFileType
    , AndroidPublisherEditsExpansionfilesUpdateExpansionFileType (..)

    -- ** InappproductsInsertRequest
    , InappproductsInsertRequest
    , inappproductsInsertRequest
    , iInappproduct

    -- ** APKsAddExternallyHostedRequest
    , APKsAddExternallyHostedRequest
    , aPKsAddExternallyHostedRequest
    , aExternallyHostedAPK

    -- ** APKsListResponse
    , APKsListResponse
    , aPKsListResponse
    , apklrKind
    , apklrAPKs

    -- ** EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , elrTokenPagination
    , elrPageInfo
    , elrResources

    -- ** AndroidPublisherEditsImagesListImageType
    , AndroidPublisherEditsImagesListImageType (..)

    -- ** AndroidPublisherEditsTestersUpdateTrack
    , AndroidPublisherEditsTestersUpdateTrack (..)

    -- ** InappproductsUpdateRequest
    , InappproductsUpdateRequest
    , inappproductsUpdateRequest
    , inaInappproduct

    -- ** AndroidPublisherEditsImagesDeleteallImageType
    , AndroidPublisherEditsImagesDeleteallImageType (..)

    -- ** AndroidPublisherEditsTestersGetTrack
    , AndroidPublisherEditsTestersGetTrack (..)

    -- ** AndroidPublisherEditsTestersPatchTrack
    , AndroidPublisherEditsTestersPatchTrack (..)

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

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AndroidPublisher.Edits.APKListings.Delete
import           Network.Google.Resource.AndroidPublisher.Edits.APKListings.Deleteall
import           Network.Google.Resource.AndroidPublisher.Edits.APKListings.Get
import           Network.Google.Resource.AndroidPublisher.Edits.APKListings.List
import           Network.Google.Resource.AndroidPublisher.Edits.APKListings.Patch
import           Network.Google.Resource.AndroidPublisher.Edits.APKListings.Update
import           Network.Google.Resource.AndroidPublisher.Edits.APKs.Addexternallyhosted
import           Network.Google.Resource.AndroidPublisher.Edits.APKs.List
import           Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload
import           Network.Google.Resource.AndroidPublisher.Edits.Commit
import           Network.Google.Resource.AndroidPublisher.Edits.Delete
import           Network.Google.Resource.AndroidPublisher.Edits.Details.Get
import           Network.Google.Resource.AndroidPublisher.Edits.Details.Patch
import           Network.Google.Resource.AndroidPublisher.Edits.Details.Update
import           Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Get
import           Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Patch
import           Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Update
import           Network.Google.Resource.AndroidPublisher.Edits.Expansionfiles.Upload
import           Network.Google.Resource.AndroidPublisher.Edits.Get
import           Network.Google.Resource.AndroidPublisher.Edits.Images.Delete
import           Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall
import           Network.Google.Resource.AndroidPublisher.Edits.Images.List
import           Network.Google.Resource.AndroidPublisher.Edits.Images.Upload
import           Network.Google.Resource.AndroidPublisher.Edits.Insert
import           Network.Google.Resource.AndroidPublisher.Edits.Listings.Delete
import           Network.Google.Resource.AndroidPublisher.Edits.Listings.Deleteall
import           Network.Google.Resource.AndroidPublisher.Edits.Listings.Get
import           Network.Google.Resource.AndroidPublisher.Edits.Listings.List
import           Network.Google.Resource.AndroidPublisher.Edits.Listings.Patch
import           Network.Google.Resource.AndroidPublisher.Edits.Listings.Update
import           Network.Google.Resource.AndroidPublisher.Edits.Testers.Get
import           Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch
import           Network.Google.Resource.AndroidPublisher.Edits.Testers.Update
import           Network.Google.Resource.AndroidPublisher.Edits.Tracks.Get
import           Network.Google.Resource.AndroidPublisher.Edits.Tracks.List
import           Network.Google.Resource.AndroidPublisher.Edits.Tracks.Patch
import           Network.Google.Resource.AndroidPublisher.Edits.Tracks.Update
import           Network.Google.Resource.AndroidPublisher.Edits.Validate
import           Network.Google.Resource.AndroidPublisher.Entitlements.List
import           Network.Google.Resource.AndroidPublisher.Inappproducts.Batch
import           Network.Google.Resource.AndroidPublisher.Inappproducts.Delete
import           Network.Google.Resource.AndroidPublisher.Inappproducts.Get
import           Network.Google.Resource.AndroidPublisher.Inappproducts.Insert
import           Network.Google.Resource.AndroidPublisher.Inappproducts.List
import           Network.Google.Resource.AndroidPublisher.Inappproducts.Patch
import           Network.Google.Resource.AndroidPublisher.Inappproducts.Update
import           Network.Google.Resource.AndroidPublisher.Purchases.Products.Get
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Defer
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Get
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke

{- $resources
TODO
-}

type AndroidPublisherAPI =
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
       :<|> EditsApkListingsListResource
       :<|> EditsApkListingsDeleteallResource
       :<|> EditsApkListingsPatchResource
       :<|> EditsApkListingsGetResource
       :<|> EditsApkListingsDeleteResource
       :<|> EditsApkListingsUpdateResource
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

androidPublisherAPI :: Proxy AndroidPublisherAPI
androidPublisherAPI = Proxy
