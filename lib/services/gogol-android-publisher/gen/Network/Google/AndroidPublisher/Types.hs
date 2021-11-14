{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AndroidPublisher.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
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

    -- * Track
    , Track
    , track
    , tTrack
    , tReleases

    -- * Variant
    , Variant
    , variant
    , vVariantId
    , vDeviceSpec

    -- * Image
    , Image
    , image
    , iURL
    , iSha1
    , iId
    , iSha256

    -- * InAppProductListing
    , InAppProductListing
    , inAppProductListing
    , iaplBenefits
    , iaplTitle
    , iaplDescription

    -- * ImagesDeleteAllResponse
    , ImagesDeleteAllResponse
    , imagesDeleteAllResponse
    , idarDeleted

    -- * IntroductoryPriceInfo
    , IntroductoryPriceInfo
    , introductoryPriceInfo
    , ipiIntroductoryPricePeriod
    , ipiIntroductoryPriceAmountMicros
    , ipiIntroductoryPriceCycles
    , ipiIntroductoryPriceCurrencyCode

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

    -- * SubscriptionPurchasesAcknowledgeRequest
    , SubscriptionPurchasesAcknowledgeRequest
    , subscriptionPurchasesAcknowledgeRequest
    , sparDeveloperPayload

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

    -- * ProductPurchasesAcknowledgeRequest
    , ProductPurchasesAcknowledgeRequest
    , productPurchasesAcknowledgeRequest
    , pparDeveloperPayload

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
    , ppRegionCode
    , ppAcknowledgementState
    , ppKind
    , ppPurchaseTimeMillis
    , ppPurchaseToken
    , ppQuantity
    , ppObfuscatedExternalAccountId
    , ppPurchaseType
    , ppObfuscatedExternalProFileId
    , ppDeveloperPayload
    , ppOrderId
    , ppProductId

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
    , spIntroductoryPriceInfo
    , spAcknowledgementState
    , spAutoResumeTimeMillis
    , spUserCancellationTimeMillis
    , spPaymentState
    , spKind
    , spObfuscatedExternalAccountId
    , spPurchaseType
    , spPromotionType
    , spPriceChange
    , spProFileId
    , spLinkedPurchaseToken
    , spObfuscatedExternalProFileId
    , spFamilyName
    , spExternalAccountId
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
    , spPromotionCode
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

    -- * InAppProductPurchaseType
    , InAppProductPurchaseType (..)

    -- * TrackRelease
    , TrackRelease
    , trackRelease
    , trVersionCodes
    , trStatus
    , trReleaseNotes
    , trUserFraction
    , trCountryTargeting
    , trName
    , trInAppUpdatePriority

    -- * EditsImagesListImageType
    , EditsImagesListImageType (..)

    -- * CountryTargeting
    , CountryTargeting
    , countryTargeting
    , ctIncludeRestOfWorld
    , ctCountries

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

    -- * DeobfuscationFileSymbolType
    , DeobfuscationFileSymbolType (..)

    -- * TrackReleaseStatus
    , TrackReleaseStatus (..)

    -- * Xgafv
    , Xgafv (..)

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

    -- * DeviceSpec
    , DeviceSpec
    , deviceSpec
    , dsSupportedAbis
    , dsSupportedLocales
    , dsScreenDensity

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

    -- * SystemAPKsListResponse
    , SystemAPKsListResponse
    , systemAPKsListResponse
    , sapklrVariants

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

    -- * ListingsListResponse
    , ListingsListResponse
    , listingsListResponse
    , llrKind
    , llrListings

    -- * APKsAddExternallyHostedRequest
    , APKsAddExternallyHostedRequest
    , aPKsAddExternallyHostedRequest
    , aExternallyHostedAPK

    -- * InternalAppSharingArtifact
    , InternalAppSharingArtifact
    , internalAppSharingArtifact
    , iasaCertificateFingerprint
    , iasaDownloadURL
    , iasaSha256

    -- * UsesPermission
    , UsesPermission
    , usesPermission
    , upName
    , upMaxSdkVersion

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
    , vpVoidedSource
    , vpVoidedReason
    , vpOrderId
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

    -- * InAppProductStatus
    , InAppProductStatus (..)
    ) where

import Network.Google.AndroidPublisher.Types.Product
import Network.Google.AndroidPublisher.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v3' of the Google Play Android Developer API. This contains the host and root path used as a starting point for constructing service requests.
androidPublisherService :: ServiceConfig
androidPublisherService
  = defaultService (ServiceId "androidpublisher:v3")
      "androidpublisher.googleapis.com"

-- | View and manage your Google Play Developer account
androidPublisherScope :: Proxy '["https://www.googleapis.com/auth/androidpublisher"]
androidPublisherScope = Proxy
