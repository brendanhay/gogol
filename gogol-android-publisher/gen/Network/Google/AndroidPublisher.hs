{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AndroidPublisher
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets Android application developers access their Google Play accounts.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference>
module Network.Google.AndroidPublisher
    (
    -- * Service Configuration
      androidPublisherService

    -- * OAuth Scopes
    , androidPublisherScope

    -- * API Declaration
    , AndroidPublisherAPI

    -- * Resources

    -- ** androidpublisher.edits.apklistings.delete
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Delete

    -- ** androidpublisher.edits.apklistings.deleteall
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Deleteall

    -- ** androidpublisher.edits.apklistings.get
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Get

    -- ** androidpublisher.edits.apklistings.list
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.List

    -- ** androidpublisher.edits.apklistings.patch
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Patch

    -- ** androidpublisher.edits.apklistings.update
    , module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Update

    -- ** androidpublisher.edits.apks.addexternallyhosted
    , module Network.Google.Resource.AndroidPublisher.Edits.APKs.Addexternallyhosted

    -- ** androidpublisher.edits.apks.list
    , module Network.Google.Resource.AndroidPublisher.Edits.APKs.List

    -- ** androidpublisher.edits.apks.upload
    , module Network.Google.Resource.AndroidPublisher.Edits.APKs.Upload

    -- ** androidpublisher.edits.commit
    , module Network.Google.Resource.AndroidPublisher.Edits.Commit

    -- ** androidpublisher.edits.delete
    , module Network.Google.Resource.AndroidPublisher.Edits.Delete

    -- ** androidpublisher.edits.deobfuscationfiles.upload
    , module Network.Google.Resource.AndroidPublisher.Edits.DeobfuscationFiles.Upload

    -- ** androidpublisher.edits.details.get
    , module Network.Google.Resource.AndroidPublisher.Edits.Details.Get

    -- ** androidpublisher.edits.details.patch
    , module Network.Google.Resource.AndroidPublisher.Edits.Details.Patch

    -- ** androidpublisher.edits.details.update
    , module Network.Google.Resource.AndroidPublisher.Edits.Details.Update

    -- ** androidpublisher.edits.expansionfiles.get
    , module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Get

    -- ** androidpublisher.edits.expansionfiles.patch
    , module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Patch

    -- ** androidpublisher.edits.expansionfiles.update
    , module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Update

    -- ** androidpublisher.edits.expansionfiles.upload
    , module Network.Google.Resource.AndroidPublisher.Edits.ExpansionFiles.Upload

    -- ** androidpublisher.edits.get
    , module Network.Google.Resource.AndroidPublisher.Edits.Get

    -- ** androidpublisher.edits.images.delete
    , module Network.Google.Resource.AndroidPublisher.Edits.Images.Delete

    -- ** androidpublisher.edits.images.deleteall
    , module Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall

    -- ** androidpublisher.edits.images.list
    , module Network.Google.Resource.AndroidPublisher.Edits.Images.List

    -- ** androidpublisher.edits.images.upload
    , module Network.Google.Resource.AndroidPublisher.Edits.Images.Upload

    -- ** androidpublisher.edits.insert
    , module Network.Google.Resource.AndroidPublisher.Edits.Insert

    -- ** androidpublisher.edits.listings.delete
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Delete

    -- ** androidpublisher.edits.listings.deleteall
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Deleteall

    -- ** androidpublisher.edits.listings.get
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Get

    -- ** androidpublisher.edits.listings.list
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.List

    -- ** androidpublisher.edits.listings.patch
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Patch

    -- ** androidpublisher.edits.listings.update
    , module Network.Google.Resource.AndroidPublisher.Edits.Listings.Update

    -- ** androidpublisher.edits.testers.get
    , module Network.Google.Resource.AndroidPublisher.Edits.Testers.Get

    -- ** androidpublisher.edits.testers.patch
    , module Network.Google.Resource.AndroidPublisher.Edits.Testers.Patch

    -- ** androidpublisher.edits.testers.update
    , module Network.Google.Resource.AndroidPublisher.Edits.Testers.Update

    -- ** androidpublisher.edits.tracks.get
    , module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Get

    -- ** androidpublisher.edits.tracks.list
    , module Network.Google.Resource.AndroidPublisher.Edits.Tracks.List

    -- ** androidpublisher.edits.tracks.patch
    , module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Patch

    -- ** androidpublisher.edits.tracks.update
    , module Network.Google.Resource.AndroidPublisher.Edits.Tracks.Update

    -- ** androidpublisher.edits.validate
    , module Network.Google.Resource.AndroidPublisher.Edits.Validate

    -- ** androidpublisher.entitlements.list
    , module Network.Google.Resource.AndroidPublisher.Entitlements.List

    -- ** androidpublisher.inappproducts.batch
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Batch

    -- ** androidpublisher.inappproducts.delete
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Delete

    -- ** androidpublisher.inappproducts.get
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Get

    -- ** androidpublisher.inappproducts.insert
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Insert

    -- ** androidpublisher.inappproducts.list
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.List

    -- ** androidpublisher.inappproducts.patch
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Patch

    -- ** androidpublisher.inappproducts.update
    , module Network.Google.Resource.AndroidPublisher.InAppProducts.Update

    -- ** androidpublisher.purchases.products.get
    , module Network.Google.Resource.AndroidPublisher.Purchases.Products.Get

    -- ** androidpublisher.purchases.subscriptions.cancel
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Cancel

    -- ** androidpublisher.purchases.subscriptions.defer
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Defer

    -- ** androidpublisher.purchases.subscriptions.get
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Get

    -- ** androidpublisher.purchases.subscriptions.refund
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Refund

    -- ** androidpublisher.purchases.subscriptions.revoke
    , module Network.Google.Resource.AndroidPublisher.Purchases.Subscriptions.Revoke

    -- ** androidpublisher.reviews.get
    , module Network.Google.Resource.AndroidPublisher.Reviews.Get

    -- ** androidpublisher.reviews.list
    , module Network.Google.Resource.AndroidPublisher.Reviews.List

    -- ** androidpublisher.reviews.reply
    , module Network.Google.Resource.AndroidPublisher.Reviews.Reply

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

    -- ** UserComment
    , UserComment
    , userComment
    , ucAndroidOSVersion
    , ucText
    , ucDevice
    , ucAppVersionCode
    , ucAppVersionName
    , ucReviewerLanguage
    , ucStarRating
    , ucLastModified

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
    , sProrations

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

    -- ** ReviewsListResponse
    , ReviewsListResponse
    , reviewsListResponse
    , rlrTokenPagination
    , rlrPageInfo
    , rlrReviews

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
    , spPaymentState
    , spKind
    , spExpiryTimeMillis
    , spAutoRenewing
    , spPriceCurrencyCode
    , spCancelReason
    , spCountryCode
    , spDeveloperPayload
    , spPriceAmountMicros
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

    -- ** DeobfuscationFile
    , DeobfuscationFile
    , deobfuscationFile
    , dfSymbolType

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

    -- ** Prorate
    , Prorate
    , prorate
    , pStart
    , pDefaultPrice

    -- ** DeobfuscationFilesUploadResponse
    , DeobfuscationFilesUploadResponse
    , deobfuscationFilesUploadResponse
    , dfurDeobfuscationFile

    -- ** InAppProductsListResponse
    , InAppProductsListResponse
    , inAppProductsListResponse
    , iaplrTokenPagination
    , iaplrPageInfo
    , iaplrKind
    , iaplrInAppProduct

    -- ** EditsDeobfuscationFilesUploadDeobfuscationFileType
    , EditsDeobfuscationFilesUploadDeobfuscationFileType (..)

    -- ** EditsExpansionFilesUploadExpansionFileType
    , EditsExpansionFilesUploadExpansionFileType (..)

    -- ** APKListingsListResponse
    , APKListingsListResponse
    , aPKListingsListResponse
    , apkllrKind
    , apkllrListings

    -- ** Review
    , Review
    , review
    , rReviewId
    , rAuthorName
    , rComments

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

    -- ** ReviewsReplyRequest
    , ReviewsReplyRequest
    , reviewsReplyRequest
    , rrrReplyText

    -- ** EditsExpansionFilesPatchExpansionFileType
    , EditsExpansionFilesPatchExpansionFileType (..)

    -- ** EditsExpansionFilesUpdateExpansionFileType
    , EditsExpansionFilesUpdateExpansionFileType (..)

    -- ** DeveloperComment
    , DeveloperComment
    , developerComment
    , dcText
    , dcLastModified

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

    -- ** ReviewsReplyResponse
    , ReviewsReplyResponse
    , reviewsReplyResponse
    , rrrResult

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

    -- ** Comment
    , Comment
    , comment
    , cUserComment
    , cDeveloperComment

    -- ** EditsTestersUpdateTrack
    , EditsTestersUpdateTrack (..)

    -- ** InAppProductsUpdateRequest
    , InAppProductsUpdateRequest
    , inAppProductsUpdateRequest
    , inInAppProduct

    -- ** Timestamp
    , Timestamp
    , timestamp
    , tNanos
    , tSeconds

    -- ** ReviewReplyResult
    , ReviewReplyResult
    , reviewReplyResult
    , rReplyText
    , rLastEdited

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
import           Network.Google.Resource.AndroidPublisher.Edits.DeobfuscationFiles.Upload
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
import           Network.Google.Resource.AndroidPublisher.Reviews.Get
import           Network.Google.Resource.AndroidPublisher.Reviews.List
import           Network.Google.Resource.AndroidPublisher.Reviews.Reply

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
       :<|> ReviewsReplyResource
       :<|> ReviewsListResource
       :<|> ReviewsGetResource
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
       :<|> EditsDeobfuscationFilesUploadResource
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
