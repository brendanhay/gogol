{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    -- * Service URL
      booksURL

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

    -- * Annotationsdata
    , Annotationsdata
    , annotationsdata
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

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

    -- * Annotationdata
    , Annotationdata
    , annotationdata
    , aaEncodedData
    , aaKind
    , aaData
    , aaSelfLink
    , aaAnnotationType
    , aaVolumeId
    , aaId
    , aaUpdated
    , aaLayerId

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
    , annnSelectedText
    , annnLayerSummary
    , annnHighlightStyle
    , annnClientVersionRanges
    , annnPageIds
    , annnKind
    , annnData
    , annnCreated
    , annnAfterSelectedText
    , annnSelfLink
    , annnCurrentVersionRanges
    , annnVolumeId
    , annnBeforeSelectedText
    , annnId
    , annnDeleted
    , annnUpdated
    , annnLayerId

    -- * ReviewAuthor
    , ReviewAuthor
    , reviewAuthor
    , raDisplayName

    -- * GeolayerdataGeoViewport
    , GeolayerdataGeoViewport
    , geolayerdataGeoViewport
    , ggvHi
    , ggvLo

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

    -- * DictlayerdataDictWordsItemExamplesItem
    , DictlayerdataDictWordsItemExamplesItem
    , dictlayerdataDictWordsItemExamplesItem
    , ddwieiText
    , ddwieiSource

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

    -- * GeolayerdataGeoBoundaryItemItem
    , GeolayerdataGeoBoundaryItemItem
    , geolayerdataGeoBoundaryItemItem
    , ggbiiLatitude
    , ggbiiLongitude

    -- * OffersItemsItemItemsItem
    , OffersItemsItemItemsItem
    , offersItemsItemItemsItem
    , oiiiiCanonicalVolumeLink
    , oiiiiCoverURL
    , oiiiiVolumeId
    , oiiiiAuthor
    , oiiiiTitle
    , oiiiiDescription

    -- * DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    , DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    , dictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItemSource
    , ddwisidieisURL
    , ddwisidieisAttribution

    -- * GeolayerdataCommon
    , GeolayerdataCommon
    , geolayerdataCommon
    , gcSnippet
    , gcSnippetURL
    , gcLang
    , gcTitle
    , gcPreviewImageURL

    -- * GeolayerdataGeo
    , GeolayerdataGeo
    , geolayerdataGeo
    , ggMapType
    , ggCachePolicy
    , ggViewport
    , ggBoundary
    , ggLatitude
    , ggZoom
    , ggCountryCode
    , ggLongitude

    -- * DictlayerdataDictWordsItem
    , DictlayerdataDictWordsItem
    , dictlayerdataDictWordsItem
    , ddwiSenses
    , ddwiSource
    , ddwiDerivatives
    , ddwiExamples

    -- * CategoryItemsItem
    , CategoryItemsItem
    , categoryItemsItem
    , ciiName
    , ciiCategoryId
    , ciiBadgeURL

    -- * DictlayerdataDictWordsItemDerivativesItemSource
    , DictlayerdataDictWordsItemDerivativesItemSource
    , dictlayerdataDictWordsItemDerivativesItemSource
    , ddwidisURL
    , ddwidisAttribution

    -- * VolumesRecommendedRateRating
    , VolumesRecommendedRateRating (..)

    -- * Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- * DictlayerdataDictWordsItemSource
    , DictlayerdataDictWordsItemSource
    , dictlayerdataDictWordsItemSource
    , ddwisURL
    , ddwisAttribution

    -- * DictlayerdataDictWordsItemDerivativesItem
    , DictlayerdataDictWordsItemDerivativesItem
    , dictlayerdataDictWordsItemDerivativesItem
    , ddwidiText
    , ddwidiSource

    -- * VolumesUserUploadedListProcessingState
    , VolumesUserUploadedListProcessingState (..)

    -- * MyConfigSyncVolumeLicensesFeatures
    , MyConfigSyncVolumeLicensesFeatures (..)

    -- * DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
    , DictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
    , dictlayerdataDictWordsItemSensesItemDefinitionsItemExamplesItem
    , ddwisidieiText
    , ddwisidieiSource

    -- * Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon

    -- * VolumesAssociatedListMaxAllowedMaturityRating
    , VolumesAssociatedListMaxAllowedMaturityRating (..)

    -- * DictlayerdataDictWordsItemSensesItemSynonymsItemSource
    , DictlayerdataDictWordsItemSensesItemSynonymsItemSource
    , dictlayerdataDictWordsItemSensesItemSynonymsItemSource
    , ddwisisisURL
    , ddwisisisAttribution

    -- * VolumesListFilter
    , VolumesListFilter (..)

    -- * DictlayerdataDictWordsItemSensesItemSynonymsItem
    , DictlayerdataDictWordsItemSensesItemSynonymsItem
    , dictlayerdataDictWordsItemSensesItemSynonymsItem
    , ddwisisiText
    , ddwisisiSource

    -- * GeolayerdataGeoViewportLo
    , GeolayerdataGeoViewportLo
    , geolayerdataGeoViewportLo
    , ggvlLatitude
    , ggvlLongitude

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

    -- * DictlayerdataCommon
    , DictlayerdataCommon
    , dictlayerdataCommon
    , dcTitle

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

    -- * DictlayerdataDictWordsItemSensesItemConjugationsItem
    , DictlayerdataDictWordsItemSensesItemConjugationsItem
    , dictlayerdataDictWordsItemSensesItemConjugationsItem
    , ddwisiciValue
    , ddwisiciType

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

    -- * DictlayerdataDictWordsItemSensesItemDefinitionsItem
    , DictlayerdataDictWordsItemSensesItemDefinitionsItem
    , dictlayerdataDictWordsItemSensesItemDefinitionsItem
    , ddwisidiDefinition
    , ddwisidiExamples

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

    -- * DictlayerdataDictWordsItemExamplesItemSource
    , DictlayerdataDictWordsItemExamplesItemSource
    , dictlayerdataDictWordsItemExamplesItemSource
    , ddwieisURL
    , ddwieisAttribution

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

    -- * DictlayerdataDict
    , DictlayerdataDict
    , dictlayerdataDict
    , ddSource
    , ddWords

    -- * DictlayerdataDictWordsItemSensesItem
    , DictlayerdataDictWordsItemSensesItem
    , dictlayerdataDictWordsItemSensesItem
    , ddwisiPronunciationURL
    , ddwisiConjugations
    , ddwisiPronunciation
    , ddwisiSynonyms
    , ddwisiSource
    , ddwisiPartOfSpeech
    , ddwisiDefinitions
    , ddwisiSyllabification

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

    -- * DictlayerdataDictSource
    , DictlayerdataDictSource
    , dictlayerdataDictSource
    , ddsURL
    , ddsAttribution

    -- * DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- * GeolayerdataGeoViewportHi
    , GeolayerdataGeoViewportHi
    , geolayerdataGeoViewportHi
    , ggvhLatitude
    , ggvhLongitude

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

    -- * DictlayerdataDictWordsItemSensesItemSource
    , DictlayerdataDictWordsItemSensesItemSource
    , dictlayerdataDictWordsItemSensesItemSource
    , ddwisisURL
    , ddwisisAttribution

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

-- | URL referring to version 'v1' of the Books API.
booksURL :: BaseUrl
booksURL
  = BaseUrl Https
      "https://www.googleapis.com/books/v1/"
      443
