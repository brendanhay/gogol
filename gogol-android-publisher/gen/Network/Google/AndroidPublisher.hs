{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | Lets Android application developers access their Google Play accounts.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference>
module Network.Google.AndroidPublisher
    (
    -- * Service Configuration
      androidPublisher

    -- * API Declaration
    , AndroidPublisherAPI

    -- * Resources

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

    -- ** AndroidPublisherEditsExpansionFilesGet
    , module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Get

    -- ** AndroidPublisherEditsExpansionFilesPatch
    , module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Patch

    -- ** AndroidPublisherEditsExpansionFilesUpdate
    , module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Update

    -- ** AndroidPublisherEditsExpansionFilesUpload
    , module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Upload

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

    -- ** AndroidPublisherInAppProductsBatch
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Batch

    -- ** AndroidPublisherInAppProductsDelete
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Delete

    -- ** AndroidPublisherInAppProductsGet
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Get

    -- ** AndroidPublisherInAppProductsInsert
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Insert

    -- ** AndroidPublisherInAppProductsList
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.List

    -- ** AndroidPublisherInAppProductsPatch
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Patch

    -- ** AndroidPublisherInAppProductsUpdate
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Update

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

    -- ** InAppProductListings
    , InAppProductListings
    , inAppProductListings
    , iaplAddtional

    -- ** InAppProductsUpdateResponse
    , InAppProductsUpdateResponse
    , inAppProductsUpdateResponse
    , iapurInAppProduct

    -- ** EditsImagesDeleteallImageType
    , EditsImagesDeleteallImageType (..)

    -- ** MonthDay
    , MonthDay
    , monthDay
    , mdDay
    , mdMonth

    -- ** Track
    , Track
    , track
    , tVersionCodes
    , tTrack
    , tUserFraction

    -- ** Image
    , Image
    , image
    , iURL
    , iSha1
    , iId

    -- ** InAppProductsBatchRequestEntry
    , InAppProductsBatchRequestEntry
    , inAppProductsBatchRequestEntry
    , iapbreMethodName
    , iapbreInAppProductsinsertrequest
    , iapbreInAppProductsupdaterequest
    , iapbreBatchId

    -- ** InAppProductListing
    , InAppProductListing
    , inAppProductListing
    , iaplTitle
    , iaplDescription

    -- ** ImagesDeleteAllResponse
    , ImagesDeleteAllResponse
    , imagesDeleteAllResponse
    , idarDeleted

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

    -- ** EditsTracksPatchTrack
    , EditsTracksPatchTrack (..)

    -- ** Testers
    , Testers
    , testers
    , tGooglePlusCommUnities
    , tGoogleGroups

    -- ** EditsTracksGetTrack
    , EditsTracksGetTrack (..)

    -- ** Listing
    , Listing
    , listing
    , lFullDescription
    , lVideo
    , lShortDescription
    , lLanguage
    , lTitle

    -- ** APK
    , APK
    , aPK
    , aVersionCode
    , aBinary

    -- ** SubscriptionPurchasesDeferRequest
    , SubscriptionPurchasesDeferRequest
    , subscriptionPurchasesDeferRequest
    , spdrDeferralInfo

    -- ** TracksListResponse
    , TracksListResponse
    , tracksListResponse
    , tlrTracks
    , tlrKind

    -- ** EditsTracksUpdateTrack
    , EditsTracksUpdateTrack (..)

    -- ** Season
    , Season
    , season
    , sStart
    , sEnd

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

    -- ** AppEdit
    , AppEdit
    , appEdit
    , aeId
    , aeExpiryTimeSeconds

    -- ** ProductPurchase
    , ProductPurchase
    , productPurchase
    , ppPurchaseState
    , ppConsumptionState
    , ppKind
    , ppPurchaseTimeMillis
    , ppDeveloperPayload

    -- ** SubscriptionPurchasesDeferResponse
    , SubscriptionPurchasesDeferResponse
    , subscriptionPurchasesDeferResponse
    , spdrNewExpiryTimeMillis

    -- ** APKListing
    , APKListing
    , aPKListing
    , apklLanguage
    , apklRecentChanges

    -- ** SubscriptionPurchase
    , SubscriptionPurchase
    , subscriptionPurchase
    , spKind
    , spExpiryTimeMillis
    , spAutoRenewing
    , spStartTimeMillis

    -- ** AppDetails
    , AppDetails
    , appDetails
    , adContactPhone
    , adContactEmail
    , adContactWebsite
    , adDefaultLanguage

    -- ** InAppProductPrices
    , InAppProductPrices
    , inAppProductPrices
    , iAppAddtional

    -- ** InAppProductsBatchRequest
    , InAppProductsBatchRequest
    , inAppProductsBatchRequest
    , iapbrEntrys

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

    -- ** EditsImagesListImageType
    , EditsImagesListImageType (..)

    -- ** EditsTestersPatchTrack
    , EditsTestersPatchTrack (..)

    -- ** EditsTestersGetTrack
    , EditsTestersGetTrack (..)

    -- ** ExpansionFilesUploadResponse
    , ExpansionFilesUploadResponse
    , expansionFilesUploadResponse
    , efurExpansionFile

    -- ** ImagesUploadResponse
    , ImagesUploadResponse
    , imagesUploadResponse
    , iurImage

    -- ** EditsImagesUploadImageType
    , EditsImagesUploadImageType (..)

    -- ** InAppProductsListResponse
    , InAppProductsListResponse
    , inAppProductsListResponse
    , iaplrTokenPagination
    , iaplrPageInfo
    , iaplrKind
    , iaplrInAppProduct

    -- ** EditsExpansionFilesUploadExpansionFileType
    , EditsExpansionFilesUploadExpansionFileType (..)

    -- ** APKListingsListResponse
    , APKListingsListResponse
    , aPKListingsListResponse
    , apkllrKind
    , apkllrListings

    -- ** InAppProductsInsertResponse
    , InAppProductsInsertResponse
    , inAppProductsInsertResponse
    , iapirInAppProduct

    -- ** APKsAddExternallyHostedResponse
    , APKsAddExternallyHostedResponse
    , aPKsAddExternallyHostedResponse
    , apkaehrExternallyHostedAPK

    -- ** SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- ** EditsExpansionFilesGetExpansionFileType
    , EditsExpansionFilesGetExpansionFileType (..)

    -- ** EditsExpansionFilesPatchExpansionFileType
    , EditsExpansionFilesPatchExpansionFileType (..)

    -- ** EditsExpansionFilesUpdateExpansionFileType
    , EditsExpansionFilesUpdateExpansionFileType (..)

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
    , iapSKU
    , iapDefaultPrice
    , iapListings
    , iapDefaultLanguage

    -- ** InAppProductsBatchResponseEntry
    , InAppProductsBatchResponseEntry
    , inAppProductsBatchResponseEntry
    , iInAppProductsupdateresponse
    , iInAppProductsinsertresponse
    , iBatchId

    -- ** Price
    , Price
    , price
    , pPriceMicros
    , pCurrency

    -- ** EditsImagesDeleteImageType
    , EditsImagesDeleteImageType (..)

    -- ** APKBinary
    , APKBinary
    , aPKBinary
    , apkbSha1

    -- ** APKsListResponse
    , APKsListResponse
    , aPKsListResponse
    , apklrKind
    , apklrAPKs

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

    -- ** APKsAddExternallyHostedRequest
    , APKsAddExternallyHostedRequest
    , aPKsAddExternallyHostedRequest
    , aExternallyHostedAPK

    -- ** InAppProductsInsertRequest
    , InAppProductsInsertRequest
    , inAppProductsInsertRequest
    , iInAppProduct

    -- ** EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , elrTokenPagination
    , elrPageInfo
    , elrResources

    -- ** EditsTestersUpdateTrack
    , EditsTestersUpdateTrack (..)

    -- ** InAppProductsUpdateRequest
    , InAppProductsUpdateRequest
    , inAppProductsUpdateRequest
    , inInAppProduct

    -- ** Entitlement
    , Entitlement
    , entitlement
    , eKind
    , eProductType
    , eToken
    , eProductId

    -- ** InAppProductsBatchResponse
    , InAppProductsBatchResponse
    , inAppProductsBatchResponse
    , iEntrys
    , iKind
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
import           Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Get
import           Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Patch
import           Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Update
import           Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Upload
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
import           Network.Google.Resource.AndroidPublisher.InAppProducts.Batch
import           Network.Google.Resource.AndroidPublisher.InAppProducts.Delete
import           Network.Google.Resource.AndroidPublisher.InAppProducts.Get
import           Network.Google.Resource.AndroidPublisher.InAppProducts.Insert
import           Network.Google.Resource.AndroidPublisher.InAppProducts.List
import           Network.Google.Resource.AndroidPublisher.InAppProducts.Patch
import           Network.Google.Resource.AndroidPublisher.InAppProducts.Update
import           Network.Google.Resource.AndroidPublisher.Purchases.Products.Get
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Defer
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Get
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund
import           Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Play Developer API service.
type AndroidPublisherAPI =
     InAppProductsBatchResource :<|>
       InAppProductsInsertResource
       :<|> InAppProductsListResource
       :<|> InAppProductsPatchResource
       :<|> InAppProductsGetResource
       :<|> InAppProductsDeleteResource
       :<|> InAppProductsUpdateResource
       :<|> EditsImagesListResource
       :<|> EditsImagesDeleteallResource
       :<|> EditsImagesUploadResource
       :<|> EditsImagesDeleteResource
       :<|> EditsExpansionFilesPatchResource
       :<|> EditsExpansionFilesGetResource
       :<|> EditsExpansionFilesUploadResource
       :<|> EditsExpansionFilesUpdateResource
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
       :<|> EditsAPKListingsListResource
       :<|> EditsAPKListingsDeleteallResource
       :<|> EditsAPKListingsPatchResource
       :<|> EditsAPKListingsGetResource
       :<|> EditsAPKListingsDeleteResource
       :<|> EditsAPKListingsUpdateResource
       :<|> EditsAPKsListResource
       :<|> EditsAPKsAddexternallyhostedResource
       :<|> EditsAPKsUploadResource
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
