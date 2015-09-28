{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Play.Developer.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Play.Developer.Types
    (
    -- * Service URL
      playDeveloperURL

    -- * ExpansionFilesUploadResponse
    , ExpansionFilesUploadResponse
    , expansionFilesUploadResponse
    , efurExpansionFile

    -- * ImagesUploadResponse
    , ImagesUploadResponse
    , imagesUploadResponse
    , iurImage

    -- * InappproductsListResponse
    , InappproductsListResponse
    , inappproductsListResponse
    , ilrTokenPagination
    , ilrPageInfo
    , ilrKind
    , ilrInappproduct

    -- * Listing
    , Listing
    , listing
    , lFullDescription
    , lVideo
    , lShortDescription
    , lLanguage
    , lTitle

    -- * SubscriptionPurchasesDeferRequest
    , SubscriptionPurchasesDeferRequest
    , subscriptionPurchasesDeferRequest
    , spdrDeferralInfo

    -- * Testers
    , Testers
    , testers
    , tGooglePlusCommunities
    , tGoogleGroups

    -- * EditsImagesList'ImageType
    , EditsImagesList'ImageType (..)

    -- * Alt
    , Alt (..)

    -- * Apk
    , Apk
    , apk
    , apkVersionCode
    , apkBinary

    -- * InappproductsBatchResponseEntry
    , InappproductsBatchResponseEntry
    , inappproductsBatchResponseEntry
    , ibreInappproductsupdateresponse
    , ibreInappproductsinsertresponse
    , ibreBatchId

    -- * ApkBinary
    , ApkBinary
    , apkBinary
    , abSha1

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

    -- * Price
    , Price
    , price
    , pPriceMicros
    , pCurrency

    -- * InappproductsInsertRequest
    , InappproductsInsertRequest
    , inappproductsInsertRequest
    , iirInappproduct

    -- * ApksAddExternallyHostedRequest
    , ApksAddExternallyHostedRequest
    , apksAddExternallyHostedRequest
    , aaehrExternallyHostedApk

    -- * ListingsListResponse
    , ListingsListResponse
    , listingsListResponse
    , llrKind
    , llrListings

    -- * ExternallyHostedApkUsesPermission
    , ExternallyHostedApkUsesPermission
    , externallyHostedApkUsesPermission
    , ehaupName
    , ehaupMaxSdkVersion

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

    -- * EditsImagesUpload'ImageType
    , EditsImagesUpload'ImageType (..)

    -- * EditsExpansionfilesUpload'ExpansionFileType
    , EditsExpansionfilesUpload'ExpansionFileType (..)

    -- * EditsExpansionfilesPatch'ExpansionFileType
    , EditsExpansionfilesPatch'ExpansionFileType (..)

    -- * EditsExpansionfilesGet'ExpansionFileType
    , EditsExpansionfilesGet'ExpansionFileType (..)

    -- * InappproductsBatchResponse
    , InappproductsBatchResponse
    , inappproductsBatchResponse
    , ibrEntrys
    , ibrKind

    -- * Entitlement
    , Entitlement
    , entitlement
    , eKind
    , eProductType
    , eToken
    , eProductId

    -- * EditsImagesDelete'ImageType
    , EditsImagesDelete'ImageType (..)

    -- * EditsExpansionfilesUpdate'ExpansionFileType
    , EditsExpansionfilesUpdate'ExpansionFileType (..)

    -- * MonthDay
    , MonthDay
    , monthDay
    , mdDay
    , mdMonth

    -- * InappproductsUpdateResponse
    , InappproductsUpdateResponse
    , inappproductsUpdateResponse
    , iurInappproduct

    -- * TokenPagination
    , TokenPagination
    , tokenPagination
    , tpNextPageToken
    , tpPreviousPageToken

    -- * InappproductsBatchRequestEntry
    , InappproductsBatchRequestEntry
    , inappproductsBatchRequestEntry
    , iMethodName
    , iInappproductsinsertrequest
    , iInappproductsupdaterequest
    , iBatchId

    -- * Image
    , Image
    , image
    , iUrl
    , iSha1
    , iId

    -- * ExpansionFile
    , ExpansionFile
    , expansionFile
    , efFileSize
    , efReferencesVersion

    -- * Track
    , Track
    , track
    , tVersionCodes
    , tTrack
    , tUserFraction

    -- * InAppProductListings
    , InAppProductListings
    , inAppProductListings

    -- * ImagesDeleteAllResponse
    , ImagesDeleteAllResponse
    , imagesDeleteAllResponse
    , idarDeleted

    -- * InAppProductListing
    , InAppProductListing
    , inAppProductListing
    , iaplTitle
    , iaplDescription

    -- * EditsTestersUpdate'Track
    , EditsTestersUpdate'Track (..)

    -- * SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- * InappproductsInsertResponse
    , InappproductsInsertResponse
    , inappproductsInsertResponse
    , iInappproduct

    -- * ApkListingsListResponse
    , ApkListingsListResponse
    , apkListingsListResponse
    , allrKind
    , allrListings

    -- * ApksAddExternallyHostedResponse
    , ApksAddExternallyHostedResponse
    , apksAddExternallyHostedResponse
    , aExternallyHostedApk

    -- * TracksListResponse
    , TracksListResponse
    , tracksListResponse
    , tlrTracks
    , tlrKind

    -- * AppEdit
    , AppEdit
    , appEdit
    , aeId
    , aeExpiryTimeSeconds

    -- * PageInfo
    , PageInfo
    , pageInfo
    , piResultPerPage
    , piTotalResults
    , piStartIndex

    -- * ImagesListResponse
    , ImagesListResponse
    , imagesListResponse
    , ilrImages

    -- * Season
    , Season
    , season
    , sStart
    , sEnd

    -- * EditsTestersPatch'Track
    , EditsTestersPatch'Track (..)

    -- * InAppProductPrices
    , InAppProductPrices
    , inAppProductPrices

    -- * SubscriptionPurchasesDeferResponse
    , SubscriptionPurchasesDeferResponse
    , subscriptionPurchasesDeferResponse
    , spdrNewExpiryTimeMillis

    -- * ApkListing
    , ApkListing
    , apkListing
    , alLanguage
    , alRecentChanges

    -- * SubscriptionPurchase
    , SubscriptionPurchase
    , subscriptionPurchase
    , spKind
    , spExpiryTimeMillis
    , spAutoRenewing
    , spStartTimeMillis

    -- * ProductPurchase
    , ProductPurchase
    , productPurchase
    , ppPurchaseState
    , ppConsumptionState
    , ppKind
    , ppPurchaseTimeMillis
    , ppDeveloperPayload

    -- * EditsTestersGet'Track
    , EditsTestersGet'Track (..)

    -- * EditsImagesDeleteall'ImageType
    , EditsImagesDeleteall'ImageType (..)

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

    -- * AppDetails
    , AppDetails
    , appDetails
    , adContactPhone
    , adContactEmail
    , adContactWebsite
    , adDefaultLanguage

    -- * InappproductsBatchRequest
    , InappproductsBatchRequest
    , inappproductsBatchRequest
    , iEntrys

    -- * EditsTracksPatch'Track
    , EditsTracksPatch'Track (..)

    -- * InappproductsUpdateRequest
    , InappproductsUpdateRequest
    , inappproductsUpdateRequest
    , inaInappproduct

    -- * EditsTracksGet'Track
    , EditsTracksGet'Track (..)

    -- * EditsTracksUpdate'Track
    , EditsTracksUpdate'Track (..)
    ) where

import           Network.Google.Play.Developer.Types.Product
import           Network.Google.Play.Developer.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the Google Play Developer API.
playDeveloperURL :: BaseUrl
playDeveloperURL
  = BaseUrl Https
      "https://www.googleapis.com/androidpublisher/v2/applications/"
      443
