{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Configuration
      androidPublisherService

    -- * OAuth Scopes
    , authAndroidpublisherScope

    -- * InAppProductListings
    , InAppProductListings
    , inAppProductListings
    , iaplAddtional

    -- * InAppProductsUpdateResponse
    , InAppProductsUpdateResponse
    , inAppProductsUpdateResponse
    , iapurInAppProduct

    -- * EditsImagesDeleteallImageType
    , EditsImagesDeleteallImageType (..)

    -- * MonthDay
    , MonthDay
    , monthDay
    , mdDay
    , mdMonth

    -- * Track
    , Track
    , track
    , tVersionCodes
    , tTrack
    , tUserFraction

    -- * Image
    , Image
    , image
    , iURL
    , iSha1
    , iId

    -- * InAppProductsBatchRequestEntry
    , InAppProductsBatchRequestEntry
    , inAppProductsBatchRequestEntry
    , iapbreMethodName
    , iapbreInAppProductsinsertrequest
    , iapbreInAppProductsupdaterequest
    , iapbreBatchId

    -- * InAppProductListing
    , InAppProductListing
    , inAppProductListing
    , iaplTitle
    , iaplDescription

    -- * ImagesDeleteAllResponse
    , ImagesDeleteAllResponse
    , imagesDeleteAllResponse
    , idarDeleted

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

    -- * EditsTracksPatchTrack
    , EditsTracksPatchTrack (..)

    -- * Testers
    , Testers
    , testers
    , tGooglePlusCommUnities
    , tGoogleGroups

    -- * EditsTracksGetTrack
    , EditsTracksGetTrack (..)

    -- * Listing
    , Listing
    , listing
    , lFullDescription
    , lVideo
    , lShortDescription
    , lLanguage
    , lTitle

    -- * APK
    , APK
    , aPK
    , aVersionCode
    , aBinary

    -- * SubscriptionPurchasesDeferRequest
    , SubscriptionPurchasesDeferRequest
    , subscriptionPurchasesDeferRequest
    , spdrDeferralInfo

    -- * TracksListResponse
    , TracksListResponse
    , tracksListResponse
    , tlrTracks
    , tlrKind

    -- * EditsTracksUpdateTrack
    , EditsTracksUpdateTrack (..)

    -- * Season
    , Season
    , season
    , sStart
    , sEnd
    , sProrations

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

    -- * AppEdit
    , AppEdit
    , appEdit
    , aeId
    , aeExpiryTimeSeconds

    -- * ProductPurchase
    , ProductPurchase
    , productPurchase
    , ppPurchaseState
    , ppConsumptionState
    , ppKind
    , ppPurchaseTimeMillis
    , ppDeveloperPayload

    -- * SubscriptionPurchasesDeferResponse
    , SubscriptionPurchasesDeferResponse
    , subscriptionPurchasesDeferResponse
    , spdrNewExpiryTimeMillis

    -- * APKListing
    , APKListing
    , aPKListing
    , apklLanguage
    , apklRecentChanges

    -- * SubscriptionPurchase
    , SubscriptionPurchase
    , subscriptionPurchase
    , spKind
    , spExpiryTimeMillis
    , spAutoRenewing
    , spStartTimeMillis

    -- * AppDetails
    , AppDetails
    , appDetails
    , adContactPhone
    , adContactEmail
    , adContactWebsite
    , adDefaultLanguage

    -- * InAppProductPrices
    , InAppProductPrices
    , inAppProductPrices
    , iAppAddtional

    -- * InAppProductsBatchRequest
    , InAppProductsBatchRequest
    , inAppProductsBatchRequest
    , iapbrEntrys

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

    -- * EditsImagesListImageType
    , EditsImagesListImageType (..)

    -- * EditsTestersPatchTrack
    , EditsTestersPatchTrack (..)

    -- * EditsTestersGetTrack
    , EditsTestersGetTrack (..)

    -- * ExpansionFilesUploadResponse
    , ExpansionFilesUploadResponse
    , expansionFilesUploadResponse
    , efurExpansionFile

    -- * ImagesUploadResponse
    , ImagesUploadResponse
    , imagesUploadResponse
    , iurImage

    -- * EditsImagesUploadImageType
    , EditsImagesUploadImageType (..)

    -- * Prorate
    , Prorate
    , prorate
    , pStart
    , pDefaultPrice

    -- * InAppProductsListResponse
    , InAppProductsListResponse
    , inAppProductsListResponse
    , iaplrTokenPagination
    , iaplrPageInfo
    , iaplrKind
    , iaplrInAppProduct

    -- * EditsExpansionFilesUploadExpansionFileType
    , EditsExpansionFilesUploadExpansionFileType (..)

    -- * APKListingsListResponse
    , APKListingsListResponse
    , aPKListingsListResponse
    , apkllrKind
    , apkllrListings

    -- * InAppProductsInsertResponse
    , InAppProductsInsertResponse
    , inAppProductsInsertResponse
    , iapirInAppProduct

    -- * APKsAddExternallyHostedResponse
    , APKsAddExternallyHostedResponse
    , aPKsAddExternallyHostedResponse
    , apkaehrExternallyHostedAPK

    -- * SubscriptionDeferralInfo
    , SubscriptionDeferralInfo
    , subscriptionDeferralInfo
    , sdiDesiredExpiryTimeMillis
    , sdiExpectedExpiryTimeMillis

    -- * EditsExpansionFilesGetExpansionFileType
    , EditsExpansionFilesGetExpansionFileType (..)

    -- * EditsExpansionFilesPatchExpansionFileType
    , EditsExpansionFilesPatchExpansionFileType (..)

    -- * EditsExpansionFilesUpdateExpansionFileType
    , EditsExpansionFilesUpdateExpansionFileType (..)

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
    , iapSKU
    , iapDefaultPrice
    , iapListings
    , iapDefaultLanguage

    -- * InAppProductsBatchResponseEntry
    , InAppProductsBatchResponseEntry
    , inAppProductsBatchResponseEntry
    , iInAppProductsupdateresponse
    , iInAppProductsinsertresponse
    , iBatchId

    -- * Price
    , Price
    , price
    , pPriceMicros
    , pCurrency

    -- * EditsImagesDeleteImageType
    , EditsImagesDeleteImageType (..)

    -- * APKBinary
    , APKBinary
    , aPKBinary
    , apkbSha1

    -- * APKsListResponse
    , APKsListResponse
    , aPKsListResponse
    , apklrKind
    , apklrAPKs

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

    -- * APKsAddExternallyHostedRequest
    , APKsAddExternallyHostedRequest
    , aPKsAddExternallyHostedRequest
    , aExternallyHostedAPK

    -- * InAppProductsInsertRequest
    , InAppProductsInsertRequest
    , inAppProductsInsertRequest
    , iInAppProduct

    -- * EntitlementsListResponse
    , EntitlementsListResponse
    , entitlementsListResponse
    , elrTokenPagination
    , elrPageInfo
    , elrResources

    -- * EditsTestersUpdateTrack
    , EditsTestersUpdateTrack (..)

    -- * InAppProductsUpdateRequest
    , InAppProductsUpdateRequest
    , inAppProductsUpdateRequest
    , inInAppProduct

    -- * Entitlement
    , Entitlement
    , entitlement
    , eKind
    , eProductType
    , eToken
    , eProductId

    -- * InAppProductsBatchResponse
    , InAppProductsBatchResponse
    , inAppProductsBatchResponse
    , iEntrys
    , iKind
    ) where

import           Network.Google.AndroidPublisher.Types.Product
import           Network.Google.AndroidPublisher.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the Google Play Developer API. This contains the host and root path used as a starting point for constructing service requests.
androidPublisherService :: ServiceConfig
androidPublisherService
  = defaultService (ServiceId "androidpublisher:v2")
      "www.googleapis.com"

-- | View and manage your Google Play Developer account
authAndroidpublisherScope :: OAuthScope
authAndroidpublisherScope = "https://www.googleapis.com/auth/androidpublisher";
