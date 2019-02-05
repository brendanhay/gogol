{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidPublisher.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , androidPublisherScope

    -- * InAppProductListings
    , InAppProductListings
    , inAppProductListings
    , iaplAddtional

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
    , tTrack
    , tReleases

    -- * Image
    , Image
    , image
    , iURL
    , iSha1
    , iId

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

    -- * UserComment
    , UserComment
    , userComment
    , ucAndroidOSVersion
    , ucText
    , ucDevice
    , ucThumbsUpCount
    , ucAppVersionCode
    , ucThumbsDownCount
    , ucOriginalText
    , ucAppVersionName
    , ucReviewerLanguage
    , ucDeviceMetadata
    , ucStarRating
    , ucLastModified

    -- * Testers
    , Testers
    , testers
    , tGooglePlusCommUnities
    , tGoogleGroups

    -- * SubscriptionCancelSurveyResult
    , SubscriptionCancelSurveyResult
    , subscriptionCancelSurveyResult
    , scsrCancelSurveyReason
    , scsrUserInputCancelReason

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
    , ppPurchaseType
    , ppDeveloperPayload
    , ppOrderId

    -- * ReviewsListResponse
    , ReviewsListResponse
    , reviewsListResponse
    , rlrTokenPagination
    , rlrPageInfo
    , rlrReviews

    -- * SubscriptionPurchasesDeferResponse
    , SubscriptionPurchasesDeferResponse
    , subscriptionPurchasesDeferResponse
    , spdrNewExpiryTimeMillis

    -- * SubscriptionPurchase
    , SubscriptionPurchase
    , subscriptionPurchase
    , spGivenName
    , spAutoResumeTimeMillis
    , spUserCancellationTimeMillis
    , spPaymentState
    , spKind
    , spPurchaseType
    , spPriceChange
    , spProFileId
    , spLinkedPurchaseToken
    , spFamilyName
    , spProFileName
    , spExpiryTimeMillis
    , spAutoRenewing
    , spPriceCurrencyCode
    , spEmailAddress
    , spCancelReason
    , spCountryCode
    , spDeveloperPayload
    , spPriceAmountMicros
    , spStartTimeMillis
    , spOrderId
    , spCancelSurveyResult

    -- * SubscriptionPriceChange
    , SubscriptionPriceChange
    , subscriptionPriceChange
    , spcState
    , spcNewPrice

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

    -- * TrackRelease
    , TrackRelease
    , trackRelease
    , trVersionCodes
    , trStatus
    , trReleaseNotes
    , trUserFraction
    , trName

    -- * EditsImagesListImageType
    , EditsImagesListImageType (..)

    -- * Bundle
    , Bundle
    , bundle
    , bVersionCode
    , bSha1
    , bSha256

    -- * DeobfuscationFile
    , DeobfuscationFile
    , deobfuscationFile
    , dfSymbolType

    -- * VoidedPurchasesListResponse
    , VoidedPurchasesListResponse
    , voidedPurchasesListResponse
    , vplrTokenPagination
    , vplrPageInfo
    , vplrVoidedPurchases

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

    -- * DeobfuscationFilesUploadResponse
    , DeobfuscationFilesUploadResponse
    , deobfuscationFilesUploadResponse
    , dfurDeobfuscationFile

    -- * InAppProductsListResponse
    , InAppProductsListResponse
    , inAppProductsListResponse
    , iaplrTokenPagination
    , iaplrPageInfo
    , iaplrKind
    , iaplrInAppProduct

    -- * EditsDeobfuscationFilesUploadDeobfuscationFileType
    , EditsDeobfuscationFilesUploadDeobfuscationFileType (..)

    -- * EditsExpansionFilesUploadExpansionFileType
    , EditsExpansionFilesUploadExpansionFileType (..)

    -- * LocalizedText
    , LocalizedText
    , localizedText
    , ltText
    , ltLanguage

    -- * Review
    , Review
    , review
    , rReviewId
    , rAuthorName
    , rComments

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

    -- * ReviewsReplyRequest
    , ReviewsReplyRequest
    , reviewsReplyRequest
    , rrrReplyText

    -- * EditsExpansionFilesPatchExpansionFileType
    , EditsExpansionFilesPatchExpansionFileType (..)

    -- * EditsExpansionFilesUpdateExpansionFileType
    , EditsExpansionFilesUpdateExpansionFileType (..)

    -- * DeviceMetadata
    , DeviceMetadata
    , deviceMetadata
    , dmProductName
    , dmGlEsVersion
    , dmManufacturer
    , dmScreenWidthPx
    , dmRamMb
    , dmCPUMake
    , dmScreenHeightPx
    , dmNATivePlatform
    , dmDeviceClass
    , dmCPUModel
    , dmScreenDensityDpi

    -- * DeveloperComment
    , DeveloperComment
    , developerComment
    , dcText
    , dcLastModified

    -- * InAppProduct
    , InAppProduct
    , inAppProduct
    , iapStatus
    , iapGracePeriod
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
    , apkbSha256

    -- * APKsListResponse
    , APKsListResponse
    , aPKsListResponse
    , apklrKind
    , apklrAPKs

    -- * ReviewsReplyResponse
    , ReviewsReplyResponse
    , reviewsReplyResponse
    , rrrResult

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

    -- * Comment
    , Comment
    , comment
    , cUserComment
    , cDeveloperComment

    -- * Timestamp
    , Timestamp
    , timestamp
    , tNanos
    , tSeconds

    -- * VoidedPurchase
    , VoidedPurchase
    , voidedPurchase
    , vpKind
    , vpPurchaseTimeMillis
    , vpPurchaseToken
    , vpVoidedTimeMillis

    -- * BundlesListResponse
    , BundlesListResponse
    , bundlesListResponse
    , blrBundles
    , blrKind

    -- * ReviewReplyResult
    , ReviewReplyResult
    , reviewReplyResult
    , rReplyText
    , rLastEdited
    ) where

import           Network.Google.AndroidPublisher.Types.Product
import           Network.Google.AndroidPublisher.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v3' of the Google Play Developer API. This contains the host and root path used as a starting point for constructing service requests.
androidPublisherService :: ServiceConfig
androidPublisherService
  = defaultService (ServiceId "androidpublisher:v3")
      "www.googleapis.com"

-- | View and manage your Google Play Developer account
androidPublisherScope :: Proxy '["https://www.googleapis.com/auth/androidpublisher"]
androidPublisherScope = Proxy;
