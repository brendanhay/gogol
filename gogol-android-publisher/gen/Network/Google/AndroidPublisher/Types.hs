{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidPublisher.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AndroidPublisher.Types
    (
    -- * Service URL
      androidPublisherURL

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

    -- * AndroidPublisherEditsExpansionfilesPatchExpansionFileType
    , AndroidPublisherEditsExpansionfilesPatchExpansionFileType (..)

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

    -- * AndroidPublisherEditsExpansionfilesGetExpansionFileType
    , AndroidPublisherEditsExpansionfilesGetExpansionFileType (..)

    -- * Image
    , Image
    , image
    , iURL
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

    -- * APK
    , APK
    , aPK
    , aVersionCode
    , aBinary

    -- * Testers
    , Testers
    , testers
    , tGooglePlusCommUnities
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

    -- * APKListing
    , APKListing
    , aPKListing
    , apklLanguage
    , apklRecentChanges

    -- * AndroidPublisherEditsTracksUpdateTrack
    , AndroidPublisherEditsTracksUpdateTrack (..)

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
    , ppDeveloperPayLoad

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

    -- * ExternallyHostedAPK
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

    -- * AndroidPublisherEditsTracksGetTrack
    , AndroidPublisherEditsTracksGetTrack (..)

    -- * InappproductsListResponse
    , InappproductsListResponse
    , inappproductsListResponse
    , ilrTokenPagination
    , ilrPageInfo
    , ilrKind
    , ilrInappproduct

    -- * AndroidPublisherEditsTracksPatchTrack
    , AndroidPublisherEditsTracksPatchTrack (..)

    -- * SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- * AndroidPublisherEditsExpansionfilesUploadExpansionFileType
    , AndroidPublisherEditsExpansionfilesUploadExpansionFileType (..)

    -- * APKsAddExternallyHostedResponse
    , APKsAddExternallyHostedResponse
    , aPKsAddExternallyHostedResponse
    , apkaehrExternallyHostedAPK

    -- * APKListingsListResponse
    , APKListingsListResponse
    , aPKListingsListResponse
    , apkllrKind
    , apkllrListings

    -- * InappproductsInsertResponse
    , InappproductsInsertResponse
    , inappproductsInsertResponse
    , iirInappproduct

    -- * AndroidPublisherEditsImagesUploadImageType
    , AndroidPublisherEditsImagesUploadImageType (..)

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

    -- * APKBinary
    , APKBinary
    , aPKBinary
    , apkbSha1

    -- * AndroidPublisherEditsImagesDeleteImageType
    , AndroidPublisherEditsImagesDeleteImageType (..)

    -- * ExternallyHostedAPKUsesPermission
    , ExternallyHostedAPKUsesPermission
    , externallyHostedAPKUsesPermission
    , ehapkupName
    , ehapkupMaxSdkVersion

    -- * ListingsListResponse
    , ListingsListResponse
    , listingsListResponse
    , llrKind
    , llrListings

    -- * AndroidPublisherEditsExpansionfilesUpdateExpansionFileType
    , AndroidPublisherEditsExpansionfilesUpdateExpansionFileType (..)

    -- * InappproductsInsertRequest
    , InappproductsInsertRequest
    , inappproductsInsertRequest
    , iInappproduct

    -- * APKsAddExternallyHostedRequest
    , APKsAddExternallyHostedRequest
    , aPKsAddExternallyHostedRequest
    , aExternallyHostedAPK

    -- * APKsListResponse
    , APKsListResponse
    , aPKsListResponse
    , apklrKind
    , apklrAPKs

    -- * EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , elrTokenPagination
    , elrPageInfo
    , elrResources

    -- * AndroidPublisherEditsImagesListImageType
    , AndroidPublisherEditsImagesListImageType (..)

    -- * AndroidPublisherEditsTestersUpdateTrack
    , AndroidPublisherEditsTestersUpdateTrack (..)

    -- * InappproductsUpdateRequest
    , InappproductsUpdateRequest
    , inappproductsUpdateRequest
    , inaInappproduct

    -- * AndroidPublisherEditsImagesDeleteallImageType
    , AndroidPublisherEditsImagesDeleteallImageType (..)

    -- * AndroidPublisherEditsTestersGetTrack
    , AndroidPublisherEditsTestersGetTrack (..)

    -- * AndroidPublisherEditsTestersPatchTrack
    , AndroidPublisherEditsTestersPatchTrack (..)

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
    ) where

import           Network.Google.AndroidPublisher.Types.Product
import           Network.Google.AndroidPublisher.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the Google Play Developer API.
androidPublisherURL :: BaseUrl
androidPublisherURL
  = BaseUrl Https
      "https://www.googleapis.com/androidpublisher/v2/applications/"
      443
