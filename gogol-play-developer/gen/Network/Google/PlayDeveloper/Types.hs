{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlayDeveloper.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlayDeveloper.Types
    (
    -- * Service URL
      playDeveloperURL

    -- * InappproductsUpdateResponse
    , InappproductsUpdateResponse
    , inappproductsUpdateResponse
    , iurInappproduct

    -- * InAppProductListings
    , InAppProductListings
    , inAppProductListings

    -- * MonthDay
    , MonthDay
    , monthDay
    , mdDay
    , mdMonth

    -- * InappproductsBatchRequestEntry
    , InappproductsBatchRequestEntry
    , inappproductsBatchRequestEntry
    , ibreMethodName
    , ibreInappproductsinsertrequest
    , ibreInappproductsupdaterequest
    , ibreBatchId

    -- * AndroidpublisherEditsExpansionfilesPatchExpansionFileType
    , AndroidpublisherEditsExpansionfilesPatchExpansionFileType (..)

    -- * InAppProductListing
    , InAppProductListing
    , inAppProductListing
    , iaplTitle
    , iaplDescription

    -- * Track
    , Track
    , track
    , tVersionCodes
    , tTrack
    , tUserFraction

    -- * TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- * ExpansionFile
    , ExpansionFile
    , expansionFile
    , efFileSize
    , efReferencesVersion

    -- * AndroidpublisherEditsExpansionfilesGetExpansionFileType
    , AndroidpublisherEditsExpansionfilesGetExpansionFileType (..)

    -- * Image
    , Image
    , image
    , iUrl
    , iSha1
    , iId

    -- * ImagesDeleteAllResponse
    , ImagesDeleteAllResponse
    , imagesDeleteAllResponse
    , idarDeleted

    -- * SubscriptionPurchasesDeferRequest
    , SubscriptionPurchasesDeferRequest
    , subscriptionPurchasesDeferRequest
    , spdrDeferralInfo

    -- * Apk
    , Apk
    , apk
    , apkVersionCode
    , apkBinary

    -- * Testers
    , Testers
    , testers
    , tGooglePlusCommunities
    , tGoogleGroups

    -- * Listing
    , Listing
    , listing
    , lFullDescription
    , lVideo
    , lShortDescription
    , lLanguage
    , lTitle

    -- * Season
    , Season
    , season
    , sStart
    , sEnd

    -- * ImagesListResponse
    , ImagesListResponse
    , imagesListResponse
    , ilrImages

    -- * AppEdit
    , AppEdit
    , appEdit
    , aeId
    , aeExpiryTimeSeconds

    -- * TracksListResponse
    , TracksListResponse
    , tracksListResponse
    , tlrTracks
    , tlrKind

    -- * PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- * ApkListing
    , ApkListing
    , apkListing
    , alLanguage
    , alRecentChanges

    -- * AndroidpublisherEditsTracksUpdateTrack
    , AndroidpublisherEditsTracksUpdateTrack (..)

    -- * SubscriptionPurchasesDeferResponse
    , SubscriptionPurchasesDeferResponse
    , subscriptionPurchasesDeferResponse
    , spdrNewExpiryTimeMillis

    -- * ProductPurchase
    , ProductPurchase
    , productPurchase
    , ppPurchaseState
    , ppConsumptionState
    , ppKind
    , ppPurchaseTimeMillis
    , ppDeveloperPayload

    -- * SubscriptionPurchase
    , SubscriptionPurchase
    , subscriptionPurchase
    , spKind
    , spExpiryTimeMillis
    , spAutoRenewing
    , spStartTimeMillis

    -- * InappproductsBatchRequest
    , InappproductsBatchRequest
    , inappproductsBatchRequest
    , ibrEntrys

    -- * AppDetails
    , AppDetails
    , appDetails
    , adContactPhone
    , adContactEmail
    , adContactWebsite
    , adDefaultLanguage

    -- * ExternallyHostedApk
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

    -- * InAppProductPrices
    , InAppProductPrices
    , inAppProductPrices

    -- * ImagesUploadResponse
    , ImagesUploadResponse
    , imagesUploadResponse
    , iurImage

    -- * ExpansionFilesUploadResponse
    , ExpansionFilesUploadResponse
    , expansionFilesUploadResponse
    , efurExpansionFile

    -- * AndroidpublisherEditsTracksGetTrack
    , AndroidpublisherEditsTracksGetTrack (..)

    -- * InappproductsListResponse
    , InappproductsListResponse
    , inappproductsListResponse
    , ilrTokenPagination
    , ilrPageInfo
    , ilrKind
    , ilrInappproduct

    -- * AndroidpublisherEditsTracksPatchTrack
    , AndroidpublisherEditsTracksPatchTrack (..)

    -- * SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- * AndroidpublisherEditsExpansionfilesUploadExpansionFileType
    , AndroidpublisherEditsExpansionfilesUploadExpansionFileType (..)

    -- * ApksAddExternallyHostedResponse
    , ApksAddExternallyHostedResponse
    , apksAddExternallyHostedResponse
    , aaehrExternallyHostedApk

    -- * ApkListingsListResponse
    , ApkListingsListResponse
    , apkListingsListResponse
    , allrKind
    , allrListings

    -- * InappproductsInsertResponse
    , InappproductsInsertResponse
    , inappproductsInsertResponse
    , iirInappproduct

    -- * AndroidpublisherEditsImagesUploadImageType
    , AndroidpublisherEditsImagesUploadImageType (..)

    -- * Price
    , Price
    , price
    , pPriceMicros
    , pCurrency

    -- * InappproductsBatchResponseEntry
    , InappproductsBatchResponseEntry
    , inappproductsBatchResponseEntry
    , iInappproductsupdateresponse
    , iInappproductsinsertresponse
    , iBatchId

    -- * InAppProduct
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

    -- * ApkBinary
    , ApkBinary
    , apkBinary
    , abSha1

    -- * AndroidpublisherEditsImagesDeleteImageType
    , AndroidpublisherEditsImagesDeleteImageType (..)

    -- * ExternallyHostedApkUsesPermission
    , ExternallyHostedApkUsesPermission
    , externallyHostedApkUsesPermission
    , ehaupName
    , ehaupMaxSdkVersion

    -- * ListingsListResponse
    , ListingsListResponse
    , listingsListResponse
    , llrKind
    , llrListings

    -- * AndroidpublisherEditsExpansionfilesUpdateExpansionFileType
    , AndroidpublisherEditsExpansionfilesUpdateExpansionFileType (..)

    -- * InappproductsInsertRequest
    , InappproductsInsertRequest
    , inappproductsInsertRequest
    , iInappproduct

    -- * ApksAddExternallyHostedRequest
    , ApksAddExternallyHostedRequest
    , apksAddExternallyHostedRequest
    , aExternallyHostedApk

    -- * ApksListResponse
    , ApksListResponse
    , apksListResponse
    , alrKind
    , alrApks

    -- * EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , elrTokenPagination
    , elrPageInfo
    , elrResources

    -- * AndroidpublisherEditsImagesListImageType
    , AndroidpublisherEditsImagesListImageType (..)

    -- * AndroidpublisherEditsTestersUpdateTrack
    , AndroidpublisherEditsTestersUpdateTrack (..)

    -- * InappproductsUpdateRequest
    , InappproductsUpdateRequest
    , inappproductsUpdateRequest
    , inaInappproduct

    -- * AndroidpublisherEditsImagesDeleteallImageType
    , AndroidpublisherEditsImagesDeleteallImageType (..)

    -- * AndroidpublisherEditsTestersGetTrack
    , AndroidpublisherEditsTestersGetTrack (..)

    -- * AndroidpublisherEditsTestersPatchTrack
    , AndroidpublisherEditsTestersPatchTrack (..)

    -- * InappproductsBatchResponse
    , InappproductsBatchResponse
    , inappproductsBatchResponse
    , iEntrys
    , iKind

    -- * Entitlement
    , Entitlement
    , entitlement
    , eKind
    , eProductType
    , eToken
    , eProductId

    -- * Alt
    , Alt (..)
    ) where

import           Network.Google.PlayDeveloper.Types.Product
import           Network.Google.PlayDeveloper.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the Google Play Developer API.
playDeveloperURL :: BaseUrl
playDeveloperURL
  = BaseUrl Https
      "https://www.googleapis.com/androidpublisher/v2/applications/"
      443
