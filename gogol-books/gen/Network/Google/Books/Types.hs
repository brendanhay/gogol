{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Books.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Books.Types
    (
    -- * Service Configuration
      booksService

    -- * OAuth Scopes
    , booksScope

    -- * Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- * Annotations
    , Annotations
    , annotations
    , aTotalItems
    , aNextPageToken
    , aKind
    , aItems

    -- * VolumesListProjection
    , VolumesListProjection (..)

    -- * MyLibraryBookshelvesVolumesListProjection
    , MyLibraryBookshelvesVolumesListProjection (..)

    -- * VolumesListOrderBy
    , VolumesListOrderBy (..)

    -- * AnnotationsData
    , AnnotationsData
    , annotationsData
    , adTotalItems
    , adNextPageToken
    , adKind
    , adItems

    -- * Volumeannotations
    , Volumeannotations
    , volumeannotations
    , vTotalItems
    , vNextPageToken
    , vKind
    , vItems
    , vVersion

    -- * ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsURL
    , rsDescription

    -- * AnnotationData
    , AnnotationData
    , annotationData
    , annEncodedData
    , annKind
    , annData
    , annSelfLink
    , annAnnotationType
    , annVolumeId
    , annId
    , annUpdated
    , annLayerId

    -- * Volumeannotation
    , Volumeannotation
    , volumeannotation
    , volSelectedText
    , volAnnotationDataLink
    , volPageIds
    , volKind
    , volData
    , volSelfLink
    , volAnnotationType
    , volAnnotationDataId
    , volContentRanges
    , volVolumeId
    , volId
    , volDeleted
    , volUpdated
    , volLayerId

    -- * BooksCloudLoadingResource
    , BooksCloudLoadingResource
    , booksCloudLoadingResource
    , bclrProcessingState
    , bclrVolumeId
    , bclrAuthor
    , bclrTitle

    -- * Annotation
    , Annotation
    , annotation
    , aaSelectedText
    , aaLayerSummary
    , aaHighlightStyle
    , aaClientVersionRanges
    , aaPageIds
    , aaKind
    , aaData
    , aaCreated
    , aaAfterSelectedText
    , aaSelfLink
    , aaCurrentVersionRanges
    , aaVolumeId
    , aaBeforeSelectedText
    , aaId
    , aaDeleted
    , aaUpdated
    , aaLayerId

    -- * ReviewAuthor
    , ReviewAuthor
    , reviewAuthor
    , raDisplayName

    -- * GeolayerDataGeoViewport
    , GeolayerDataGeoViewport
    , geolayerDataGeoViewport
    , gdgvHi
    , gdgvLo

    -- * VolumeUserInfo
    , VolumeUserInfo
    , volumeUserInfo
    , vuiCopy
    , vuiUserUploadedVolumeInfo
    , vuiIsPurchased
    , vuiRentalState
    , vuiIsPreOrdered
    , vuiReview
    , vuiRentalPeriod
    , vuiUpdated
    , vuiIsUploaded
    , vuiIsInMyBooks
    , vuiReadingPosition

    -- * Layersummary
    , Layersummary
    , layersummary
    , lAnnotationsDataLink
    , lAnnotationsLink
    , lKind
    , lDataCount
    , lContentVersion
    , lVolumeAnnotationsVersion
    , lAnnotationCount
    , lAnnotationTypes
    , lSelfLink
    , lVolumeId
    , lId
    , lUpdated
    , lLayerId

    -- * VolumesListLibraryRestrict
    , VolumesListLibraryRestrict (..)

    -- * VolumeannotationContentRanges
    , VolumeannotationContentRanges
    , volumeannotationContentRanges
    , vcrGbImageRange
    , vcrContentVersion
    , vcrGbTextRange
    , vcrCfiRange

    -- * VolumeAccessInfo
    , VolumeAccessInfo
    , volumeAccessInfo
    , vaiWebReaderLink
    , vaiCountry
    , vaiDriveImportedContentLink
    , vaiExplicitOfflineLicenseManagement
    , vaiViewability
    , vaiQuoteSharingAllowed
    , vaiEpub
    , vaiPdf
    , vaiTextToSpeechPermission
    , vaiEmbeddable
    , vaiAccessViewStatus
    , vaiDownloadAccess
    , vaiViewOrderURL
    , vaiPublicDomain

    -- * MyLibraryBookshelvesRemoveVolumeReason
    , MyLibraryBookshelvesRemoveVolumeReason (..)

    -- * VolumeVolumeInfoImageLinks
    , VolumeVolumeInfoImageLinks
    , volumeVolumeInfoImageLinks
    , vviilThumbnail
    , vviilSmall
    , vviilExtraLarge
    , vviilLarge
    , vviilMedium
    , vviilSmallThumbnail

    -- * OnboardingListCategoryVolumesMaxAllowedMaturityRating
    , OnboardingListCategoryVolumesMaxAllowedMaturityRating (..)

    -- * VolumeUserInfoUserUploadedVolumeInfo
    , VolumeUserInfoUserUploadedVolumeInfo
    , volumeUserInfoUserUploadedVolumeInfo
    , vuiuuviProcessingState

    -- * VolumeUserInfoCopy
    , VolumeUserInfoCopy
    , volumeUserInfoCopy
    , vuicLimitType
    , vuicAllowedCharacterCount
    , vuicUpdated
    , vuicRemainingCharacterCount

    -- * BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

    -- * Bookshelf
    , Bookshelf
    , bookshelf
    , bAccess
    , bVolumesLastUpdated
    , bKind
    , bCreated
    , bVolumeCount
    , bSelfLink
    , bId
    , bUpdated
    , bTitle
    , bDescription

    -- * VolumesListDownload
    , VolumesListDownload (..)

    -- * AnnotationsSummaryLayersItem
    , AnnotationsSummaryLayersItem
    , annotationsSummaryLayersItem
    , asliLimitType
    , asliAllowedCharacterCount
    , asliUpdated
    , asliLayerId
    , asliRemainingCharacterCount

    -- * VolumeSaleInfoOffersItemRentalDuration
    , VolumeSaleInfoOffersItemRentalDuration
    , volumeSaleInfoOffersItemRentalDuration
    , vsioirdCount
    , vsioirdUnit

    -- * DictlayerDataDictWordsItemExamplesItem
    , DictlayerDataDictWordsItemExamplesItem
    , dictlayerDataDictWordsItemExamplesItem
    , dddwieiText
    , dddwieiSource

    -- * OffersItemsItem
    , OffersItemsItem
    , offersItemsItem
    , oiiItems
    , oiiArtURL
    , oiiId
    , oiiGServicesKey

    -- * AnnotationLayerSummary
    , AnnotationLayerSummary
    , annotationLayerSummary
    , alsLimitType
    , alsAllowedCharacterCount
    , alsRemainingCharacterCount

    -- * VolumeSearchInfo
    , VolumeSearchInfo
    , volumeSearchInfo
    , vsiTextSnippet

    -- * AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- * VolumesGetProjection
    , VolumesGetProjection (..)

    -- * Category
    , Category
    , category
    , cKind
    , cItems

    -- * VolumesAssociatedListAssociation
    , VolumesAssociatedListAssociation (..)

    -- * Volume
    , Volume
    , volume
    , vvUserInfo
    , vvEtag
    , vvAccessInfo
    , vvKind
    , vvSearchInfo
    , vvSelfLink
    , vvLayerInfo
    , vvSaleInfo
    , vvId
    , vvRecommendedInfo
    , vvVolumeInfo

    -- * GeolayerDataGeoBoundaryItemItem
    , GeolayerDataGeoBoundaryItemItem
    , geolayerDataGeoBoundaryItemItem
    , gdgbiiLatitude
    , gdgbiiLongitude

    -- * OffersItemsItemItemsItem
    , OffersItemsItemItemsItem
    , offersItemsItemItemsItem
    , oiiiiCanonicalVolumeLink
    , oiiiiCoverURL
    , oiiiiVolumeId
    , oiiiiAuthor
    , oiiiiTitle
    , oiiiiDescription

    -- * DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    , DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    , dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    , dddwisidieisURL
    , dddwisidieisAttribution

    -- * GeolayerDataCommon
    , GeolayerDataCommon
    , geolayerDataCommon
    , gdcSnippet
    , gdcSnippetURL
    , gdcLang
    , gdcTitle
    , gdcPreviewImageURL

    -- * GeolayerDataGeo
    , GeolayerDataGeo
    , geolayerDataGeo
    , gdgMapType
    , gdgCachePolicy
    , gdgViewport
    , gdgBoundary
    , gdgLatitude
    , gdgZoom
    , gdgCountryCode
    , gdgLongitude

    -- * DictlayerDataDictWordsItem
    , DictlayerDataDictWordsItem
    , dictlayerDataDictWordsItem
    , dddwiSenses
    , dddwiSource
    , dddwiDerivatives
    , dddwiExamples

    -- * CategoryItemsItem
    , CategoryItemsItem
    , categoryItemsItem
    , ciiName
    , ciiCategoryId
    , ciiBadgeURL

    -- * DictlayerDataDictWordsItemDerivativesItemSource
    , DictlayerDataDictWordsItemDerivativesItemSource
    , dictlayerDataDictWordsItemDerivativesItemSource
    , dddwidisURL
    , dddwidisAttribution

    -- * VolumesRecommendedRateRating
    , VolumesRecommendedRateRating (..)

    -- * GeolayerData
    , GeolayerData
    , geolayerData
    , gdKind
    , gdGeo
    , gdCommon

    -- * DictlayerDataDictWordsItemSource
    , DictlayerDataDictWordsItemSource
    , dictlayerDataDictWordsItemSource
    , dddwisURL
    , dddwisAttribution

    -- * DictlayerDataDictWordsItemDerivativesItem
    , DictlayerDataDictWordsItemDerivativesItem
    , dictlayerDataDictWordsItemDerivativesItem
    , dddwidiText
    , dddwidiSource

    -- * VolumesUserUploadedListProcessingState
    , VolumesUserUploadedListProcessingState (..)

    -- * MyConfigSyncVolumeLicensesFeatures
    , MyConfigSyncVolumeLicensesFeatures (..)

    -- * DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
    , DictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
    , dictlayerDataDictWordsItemSensesItemDefinitionsItemExamplesItem
    , dddwisidieiText
    , dddwisidieiSource

    -- * DictlayerData
    , DictlayerData
    , dictlayerData
    , ddKind
    , ddDict
    , ddCommon

    -- * VolumesAssociatedListMaxAllowedMaturityRating
    , VolumesAssociatedListMaxAllowedMaturityRating (..)

    -- * DictlayerDataDictWordsItemSensesItemSynonymsItemSource
    , DictlayerDataDictWordsItemSensesItemSynonymsItemSource
    , dictlayerDataDictWordsItemSensesItemSynonymsItemSource
    , dddwisisisURL
    , dddwisisisAttribution

    -- * VolumesListFilter
    , VolumesListFilter (..)

    -- * DictlayerDataDictWordsItemSensesItemSynonymsItem
    , DictlayerDataDictWordsItemSensesItemSynonymsItem
    , dictlayerDataDictWordsItemSensesItemSynonymsItem
    , dddwisisiText
    , dddwisisiSource

    -- * GeolayerDataGeoViewportLo
    , GeolayerDataGeoViewportLo
    , geolayerDataGeoViewportLo
    , gdgvlLatitude
    , gdgvlLongitude

    -- * VolumesRecommendedListMaxAllowedMaturityRating
    , VolumesRecommendedListMaxAllowedMaturityRating (..)

    -- * VolumeSaleInfoOffersItemListPrice
    , VolumeSaleInfoOffersItemListPrice
    , volumeSaleInfoOffersItemListPrice
    , vsioilpCurrencyCode
    , vsioilpAmountInMicros

    -- * DownloadAccessRestriction
    , DownloadAccessRestriction
    , downloadAccessRestriction
    , darJustAcquired
    , darSignature
    , darKind
    , darMaxDownloadDevices
    , darDownloadsAcquired
    , darReasonCode
    , darVolumeId
    , darRestricted
    , darSource
    , darDeviceAllowed
    , darMessage
    , darNonce

    -- * DictlayerDataCommon
    , DictlayerDataCommon
    , dictlayerDataCommon
    , ddcTitle

    -- * VolumeSaleInfoRetailPrice
    , VolumeSaleInfoRetailPrice
    , volumeSaleInfoRetailPrice
    , vsirpAmount
    , vsirpCurrencyCode

    -- * VolumeSaleInfoListPrice
    , VolumeSaleInfoListPrice
    , volumeSaleInfoListPrice
    , vsilpAmount
    , vsilpCurrencyCode

    -- * DictlayerDataDictWordsItemSensesItemConjugationsItem
    , DictlayerDataDictWordsItemSensesItemConjugationsItem
    , dictlayerDataDictWordsItemSensesItemConjugationsItem
    , dddwisiciValue
    , dddwisiciType

    -- * Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

    -- * Review
    , Review
    , review
    , rRating
    , rKind
    , rContent
    , rDate
    , rVolumeId
    , rAuthor
    , rSource
    , rFullTextURL
    , rTitle
    , rType

    -- * VolumeUserInfoRentalPeriod
    , VolumeUserInfoRentalPeriod
    , volumeUserInfoRentalPeriod
    , vuirpEndUtcSec
    , vuirpStartUtcSec

    -- * VolumeSaleInfo
    , VolumeSaleInfo
    , volumeSaleInfo
    , vsiCountry
    , vsiOnSaleDate
    , vsiListPrice
    , vsiRetailPrice
    , vsiOffers
    , vsiBuyLink
    , vsiIsEbook
    , vsiSaleability

    -- * MyLibraryBookshelvesAddVolumeReason
    , MyLibraryBookshelvesAddVolumeReason (..)

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- * VolumeLayerInfo
    , VolumeLayerInfo
    , volumeLayerInfo
    , vliLayers

    -- * VolumeVolumeInfoDimensions
    , VolumeVolumeInfoDimensions
    , volumeVolumeInfoDimensions
    , vvidHeight
    , vvidWidth
    , vvidThickness

    -- * RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

    -- * AnnotationClientVersionRanges
    , AnnotationClientVersionRanges
    , annotationClientVersionRanges
    , acvrGbImageRange
    , acvrContentVersion
    , acvrImageCfiRange
    , acvrGbTextRange
    , acvrCfiRange

    -- * VolumesMybooksListAcquireMethod
    , VolumesMybooksListAcquireMethod (..)

    -- * DictlayerDataDictWordsItemSensesItemDefinitionsItem
    , DictlayerDataDictWordsItemSensesItemDefinitionsItem
    , dictlayerDataDictWordsItemSensesItemDefinitionsItem
    , dddwisidiDefinition
    , dddwisidiExamples

    -- * VolumeLayerInfoLayersItem
    , VolumeLayerInfoLayersItem
    , volumeLayerInfoLayersItem
    , vliliVolumeAnnotationsVersion
    , vliliLayerId

    -- * AnnotationCurrentVersionRanges
    , AnnotationCurrentVersionRanges
    , annotationCurrentVersionRanges
    , aGbImageRange
    , aContentVersion
    , aImageCfiRange
    , aGbTextRange
    , aCfiRange

    -- * VolumesListPrintType
    , VolumesListPrintType (..)

    -- * VolumeAccessInfoPdf
    , VolumeAccessInfoPdf
    , volumeAccessInfoPdf
    , vaipAcsTokenLink
    , vaipIsAvailable
    , vaipDownloadLink

    -- * DictlayerDataDictWordsItemExamplesItemSource
    , DictlayerDataDictWordsItemExamplesItemSource
    , dictlayerDataDictWordsItemExamplesItemSource
    , dddwieisURL
    , dddwieisAttribution

    -- * VolumeAccessInfoEpub
    , VolumeAccessInfoEpub
    , volumeAccessInfoEpub
    , vaieAcsTokenLink
    , vaieIsAvailable
    , vaieDownloadLink

    -- * ReadingPosition
    , ReadingPosition
    , readingPosition
    , rpEpubCfiPosition
    , rpKind
    , rpGbImagePosition
    , rpPdfPosition
    , rpVolumeId
    , rpUpdated
    , rpGbTextPosition

    -- * VolumeSaleInfoOffersItem
    , VolumeSaleInfoOffersItem
    , volumeSaleInfoOffersItem
    , vsioiFinskyOfferType
    , vsioiRentalDuration
    , vsioiListPrice
    , vsioiRetailPrice

    -- * DictlayerDataDict
    , DictlayerDataDict
    , dictlayerDataDict
    , dddSource
    , dddWords

    -- * DictlayerDataDictWordsItemSensesItem
    , DictlayerDataDictWordsItemSensesItem
    , dictlayerDataDictWordsItemSensesItem
    , dddwisiPronunciationURL
    , dddwisiConjugations
    , dddwisiPronunciation
    , dddwisiSynonyms
    , dddwisiSource
    , dddwisiPartOfSpeech
    , dddwisiDefinitions
    , dddwisiSyllabification

    -- * VolumeRecommendedInfo
    , VolumeRecommendedInfo
    , volumeRecommendedInfo
    , vriExplanation

    -- * Offers
    , Offers
    , offers
    , oKind
    , oItems

    -- * VolumesMybooksListProcessingState
    , VolumesMybooksListProcessingState (..)

    -- * UsersettingsNotesExport
    , UsersettingsNotesExport
    , usersettingsNotesExport
    , uneFolderName
    , uneIsEnabled

    -- * ConcurrentAccessRestriction
    , ConcurrentAccessRestriction
    , concurrentAccessRestriction
    , carMaxConcurrentDevices
    , carSignature
    , carTimeWindowSeconds
    , carKind
    , carReasonCode
    , carVolumeId
    , carRestricted
    , carSource
    , carDeviceAllowed
    , carMessage
    , carNonce

    -- * Volumes
    , Volumes
    , volumes
    , v1TotalItems
    , v1Kind
    , v1Items

    -- * Bookshelves
    , Bookshelves
    , bookshelves
    , booKind
    , booItems

    -- * MyConfigRequestAccessLicenseTypes
    , MyConfigRequestAccessLicenseTypes (..)

    -- * DictlayerDataDictSource
    , DictlayerDataDictSource
    , dictlayerDataDictSource
    , dddsURL
    , dddsAttribution

    -- * DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- * GeolayerDataGeoViewportHi
    , GeolayerDataGeoViewportHi
    , geolayerDataGeoViewportHi
    , gdgvhLatitude
    , gdgvhLongitude

    -- * MyLibraryReadingPositionsSetPositionAction
    , MyLibraryReadingPositionsSetPositionAction (..)

    -- * VolumeVolumeInfo
    , VolumeVolumeInfo
    , volumeVolumeInfo
    , vviImageLinks
    , vviAverageRating
    , vviRatingsCount
    , vviCanonicalVolumeLink
    , vviReadingModes
    , vviIndustryIdentifiers
    , vviPrintedPageCount
    , vviMainCategory
    , vviContentVersion
    , vviSamplePageCount
    , vviCategories
    , vviAuthors
    , vviAllowAnonLogging
    , vviSubtitle
    , vviPublishedDate
    , vviMaturityRating
    , vviPreviewLink
    , vviLanguage
    , vviTitle
    , vviPageCount
    , vviDimensions
    , vviInfoLink
    , vviPublisher
    , vviDescription
    , vviPrintType

    -- * MetadataItemsItem
    , MetadataItemsItem
    , metadataItemsItem
    , miiSize
    , miiVersion
    , miiLanguage
    , miiDownloadURL
    , miiEncryptedKey

    -- * DictlayerDataDictWordsItemSensesItemSource
    , DictlayerDataDictWordsItemSensesItemSource
    , dictlayerDataDictWordsItemSensesItemSource
    , dddwisisURL
    , dddwisisAttribution

    -- * VolumeSaleInfoOffersItemRetailPrice
    , VolumeSaleInfoOffersItemRetailPrice
    , volumeSaleInfoOffersItemRetailPrice
    , vsioirpCurrencyCode
    , vsioirpAmountInMicros

    -- * VolumeVolumeInfoIndustryIdentifiersItem
    , VolumeVolumeInfoIndustryIdentifiersItem
    , volumeVolumeInfoIndustryIdentifiersItem
    , vviiiiIdentifier
    , vviiiiType

    -- * BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition

    -- * Layersummaries
    , Layersummaries
    , layersummaries
    , layTotalItems
    , layKind
    , layItems
    ) where

import           Network.Google.Books.Types.Product
import           Network.Google.Books.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Books API. This contains the host and root path used as a starting point for constructing service requests.
booksService :: Service
booksService
  = defaultService (ServiceId "books:v1")
      "www.googleapis.com"
      "books/v1/"

-- | Manage your books
booksScope :: OAuthScope
booksScope = OAuthScope "https://www.googleapis.com/auth/books";
