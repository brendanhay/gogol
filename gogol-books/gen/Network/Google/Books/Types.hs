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

    -- * Volumeannotations
    , Volumeannotations
    , volumeannotations
    , vTotalItems
    , vNextPageToken
    , vKind
    , vItems
    , vVersion

    -- * Annotations
    , Annotations
    , annotations
    , aTotalItems
    , aNextPageToken
    , aKind
    , aItems

    -- * Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- * VolumeVolumeInfoIndustryIdentifiers
    , VolumeVolumeInfoIndustryIdentifiers
    , volumeVolumeInfoIndustryIdentifiers
    , vviiiIdentifier
    , vviiiType

    -- * Annotationsdata
    , Annotationsdata
    , annotationsdata
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

    -- * BooksMylibraryReadingpositionsSetPositionAction
    , BooksMylibraryReadingpositionsSetPositionAction (..)

    -- * GeolayerdataGeoViewport
    , GeolayerdataGeoViewport
    , geolayerdataGeoViewport
    , ggvHi
    , ggvLo

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

    -- * BooksVolumesListDownload
    , BooksVolumesListDownload (..)

    -- * DictlayerdataDictWordsSensesConjugations
    , DictlayerdataDictWordsSensesConjugations
    , dictlayerdataDictWordsSensesConjugations
    , ddwscValue
    , ddwscType

    -- * BooksCloudloadingResource
    , BooksCloudloadingResource
    , booksCloudloadingResource
    , bcrProcessingState
    , bcrVolumeId
    , bcrAuthor
    , bcrTitle

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

    -- * VolumeUserInfo
    , VolumeUserInfo
    , volumeUserInfo
    , vuiCopy
    , vuiUserUploadedVolumeInfo
    , vuiIsPurchased
    , vuiRentalState
    , vuiIsPreordered
    , vuiReview
    , vuiRentalPeriod
    , vuiUpdated
    , vuiIsUploaded
    , vuiIsInMyBooks
    , vuiReadingPosition

    -- * ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsUrl
    , rsDescription

    -- * Annotationdata
    , Annotationdata
    , annotationdata
    , annnEncodedData
    , annnKind
    , annnData
    , annnSelfLink
    , annnAnnotationType
    , annnVolumeId
    , annnId
    , annnUpdated
    , annnLayerId

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

    -- * VolumeUserInfoUserUploadedVolumeInfo
    , VolumeUserInfoUserUploadedVolumeInfo
    , volumeUserInfoUserUploadedVolumeInfo
    , vuiuuviProcessingState

    -- * BooksVolumesAssociatedListAssociation
    , BooksVolumesAssociatedListAssociation (..)

    -- * VolumeannotationContentRanges
    , VolumeannotationContentRanges
    , volumeannotationContentRanges
    , vcrGbImageRange
    , vcrContentVersion
    , vcrGbTextRange
    , vcrCfiRange

    -- * VolumeVolumeInfoImageLinks
    , VolumeVolumeInfoImageLinks
    , volumeVolumeInfoImageLinks
    , vviilThumbnail
    , vviilSmall
    , vviilExtraLarge
    , vviilLarge
    , vviilMedium
    , vviilSmallThumbnail

    -- * BooksVolumesGetProjection
    , BooksVolumesGetProjection (..)

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
    , vaiViewOrderUrl
    , vaiPublicDomain

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

    -- * VolumeLayerInfoLayers
    , VolumeLayerInfoLayers
    , volumeLayerInfoLayers
    , vlilVolumeAnnotationsVersion
    , vlilLayerId

    -- * DictlayerdataDictWordsExamples
    , DictlayerdataDictWordsExamples
    , dictlayerdataDictWordsExamples
    , ddweText
    , ddweSource

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

    -- * DictlayerdataDictWordsSensesDefinitions
    , DictlayerdataDictWordsSensesDefinitions
    , dictlayerdataDictWordsSensesDefinitions
    , ddwsdDefinition
    , ddwsdExamples

    -- * AnnotationLayerSummary
    , AnnotationLayerSummary
    , annotationLayerSummary
    , alsLimitType
    , alsAllowedCharacterCount
    , alsRemainingCharacterCount

    -- * Category
    , Category
    , category
    , cKind
    , cItems

    -- * VolumeSearchInfo
    , VolumeSearchInfo
    , volumeSearchInfo
    , vsiTextSnippet

    -- * AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

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

    -- * BooksMylibraryBookshelvesRemoveVolumeReason
    , BooksMylibraryBookshelvesRemoveVolumeReason (..)

    -- * BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating
    , BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating (..)

    -- * BooksVolumesListLibraryRestrict
    , BooksVolumesListLibraryRestrict (..)

    -- * GeolayerdataCommon
    , GeolayerdataCommon
    , geolayerdataCommon
    , gcSnippet
    , gcSnippetUrl
    , gcLang
    , gcTitle
    , gcPreviewImageUrl

    -- * DictlayerdataDictWordsSource
    , DictlayerdataDictWordsSource
    , dictlayerdataDictWordsSource
    , ddwsUrl
    , ddwsAttribution

    -- * DictlayerdataDictWordsSensesDefinitionsExamplesSource
    , DictlayerdataDictWordsSensesDefinitionsExamplesSource
    , dictlayerdataDictWordsSensesDefinitionsExamplesSource
    , ddwsdesUrl
    , ddwsdesAttribution

    -- * BooksVolumesListFilter
    , BooksVolumesListFilter (..)

    -- * GeolayerdataGeoBoundary
    , GeolayerdataGeoBoundary
    , geolayerdataGeoBoundary
    , ggbLatitude
    , ggbLongitude

    -- * BooksVolumesAssociatedListMaxAllowedMaturityRating
    , BooksVolumesAssociatedListMaxAllowedMaturityRating (..)

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

    -- * BooksVolumesRecommendedListMaxAllowedMaturityRating
    , BooksVolumesRecommendedListMaxAllowedMaturityRating (..)

    -- * CategoryItems
    , CategoryItems
    , categoryItems
    , ciName
    , ciCategoryId
    , ciBadgeUrl

    -- * DictlayerdataDictWordsSensesDefinitionsExamples
    , DictlayerdataDictWordsSensesDefinitionsExamples
    , dictlayerdataDictWordsSensesDefinitionsExamples
    , ddwsdeText
    , ddwsdeSource

    -- * DictlayerdataDictWords
    , DictlayerdataDictWords
    , dictlayerdataDictWords
    , ddwSenses
    , ddwSource
    , ddwDerivatives
    , ddwExamples

    -- * Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- * DictlayerdataDictWordsSensesSynonyms
    , DictlayerdataDictWordsSensesSynonyms
    , dictlayerdataDictWordsSensesSynonyms
    , ddwssText
    , ddwssSource

    -- * Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon

    -- * BooksVolumesRecommendedRateRating
    , BooksVolumesRecommendedRateRating (..)

    -- * DictlayerdataDictWordsSensesSynonymsSource
    , DictlayerdataDictWordsSensesSynonymsSource
    , dictlayerdataDictWordsSensesSynonymsSource
    , ddwsssUrl
    , ddwsssAttribution

    -- * VolumeSaleInfoOffersRetailPrice
    , VolumeSaleInfoOffersRetailPrice
    , volumeSaleInfoOffersRetailPrice
    , vsiorpCurrencyCode
    , vsiorpAmountInMicros

    -- * DictlayerdataCommon
    , DictlayerdataCommon
    , dictlayerdataCommon
    , dcTitle

    -- * BooksMyconfigSyncVolumeLicensesFeatures
    , BooksMyconfigSyncVolumeLicensesFeatures (..)

    -- * GeolayerdataGeoViewportLo
    , GeolayerdataGeoViewportLo
    , geolayerdataGeoViewportLo
    , ggvlLatitude
    , ggvlLongitude

    -- * BooksVolumesUseruploadedListProcessingState
    , BooksVolumesUseruploadedListProcessingState (..)

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

    -- * BooksMylibraryBookshelvesAddVolumeReason
    , BooksMylibraryBookshelvesAddVolumeReason (..)

    -- * VolumeSaleInfoRetailPrice
    , VolumeSaleInfoRetailPrice
    , volumeSaleInfoRetailPrice
    , vsirpAmount
    , vsirpCurrencyCode

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
    , rFullTextUrl
    , rTitle
    , rType

    -- * BooksVolumesListPrintType
    , BooksVolumesListPrintType (..)

    -- * Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

    -- * VolumeSaleInfoListPrice
    , VolumeSaleInfoListPrice
    , volumeSaleInfoListPrice
    , vsilpAmount
    , vsilpCurrencyCode

    -- * BooksVolumesMybooksListAcquireMethod
    , BooksVolumesMybooksListAcquireMethod (..)

    -- * VolumeUserInfoRentalPeriod
    , VolumeUserInfoRentalPeriod
    , volumeUserInfoRentalPeriod
    , vuirpEndUtcSec
    , vuirpStartUtcSec

    -- * VolumeLayerInfo
    , VolumeLayerInfo
    , volumeLayerInfo
    , vliLayers

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

    -- * RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

    -- * OffersItems
    , OffersItems
    , offersItems
    , oiItems
    , oiArtUrl
    , oiId
    , oiGservicesKey

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- * VolumeVolumeInfoDimensions
    , VolumeVolumeInfoDimensions
    , volumeVolumeInfoDimensions
    , vvidHeight
    , vvidWidth
    , vvidThickness

    -- * AnnotationCurrentVersionRanges
    , AnnotationCurrentVersionRanges
    , annotationCurrentVersionRanges
    , acvrGbImageRange
    , acvrContentVersion
    , acvrImageCfiRange
    , acvrGbTextRange
    , acvrCfiRange

    -- * VolumeAccessInfoEpub
    , VolumeAccessInfoEpub
    , volumeAccessInfoEpub
    , vaieAcsTokenLink
    , vaieIsAvailable
    , vaieDownloadLink

    -- * VolumeAccessInfoPdf
    , VolumeAccessInfoPdf
    , volumeAccessInfoPdf
    , vaipAcsTokenLink
    , vaipIsAvailable
    , vaipDownloadLink

    -- * AnnotationClientVersionRanges
    , AnnotationClientVersionRanges
    , annotationClientVersionRanges
    , aGbImageRange
    , aContentVersion
    , aImageCfiRange
    , aGbTextRange
    , aCfiRange

    -- * AnnotationsSummaryLayers
    , AnnotationsSummaryLayers
    , annotationsSummaryLayers
    , aslLimitType
    , aslAllowedCharacterCount
    , aslUpdated
    , aslLayerId
    , aslRemainingCharacterCount

    -- * DictlayerdataDictWordsExamplesSource
    , DictlayerdataDictWordsExamplesSource
    , dictlayerdataDictWordsExamplesSource
    , ddwesUrl
    , ddwesAttribution

    -- * VolumeSaleInfoOffersRentalDuration
    , VolumeSaleInfoOffersRentalDuration
    , volumeSaleInfoOffersRentalDuration
    , vsiordCount
    , vsiordUnit

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

    -- * Offers
    , Offers
    , offers
    , oKind
    , oItems

    -- * Volumes
    , Volumes
    , volumes
    , v1TotalItems
    , v1Kind
    , v1Items

    -- * VolumeRecommendedInfo
    , VolumeRecommendedInfo
    , volumeRecommendedInfo
    , vriExplanation

    -- * Bookshelves
    , Bookshelves
    , bookshelves
    , booKind
    , booItems

    -- * DictlayerdataDictWordsSenses
    , DictlayerdataDictWordsSenses
    , dictlayerdataDictWordsSenses
    , ddwsPronunciationUrl
    , ddwsConjugations
    , ddwsPronunciation
    , ddwsSynonyms
    , ddwsSource
    , ddwsPartOfSpeech
    , ddwsDefinitions
    , ddwsSyllabification

    -- * DictlayerdataDictWordsDerivativesSource
    , DictlayerdataDictWordsDerivativesSource
    , dictlayerdataDictWordsDerivativesSource
    , ddwdsUrl
    , ddwdsAttribution

    -- * MetadataItems
    , MetadataItems
    , metadataItems
    , miSize
    , miVersion
    , miLanguage
    , miDownloadUrl
    , miEncryptedKey

    -- * DictlayerdataDict
    , DictlayerdataDict
    , dictlayerdataDict
    , ddSource
    , ddWords

    -- * UsersettingsNotesExport
    , UsersettingsNotesExport
    , usersettingsNotesExport
    , uneFolderName
    , uneIsEnabled

    -- * OffersItemsItems
    , OffersItemsItems
    , offersItemsItems
    , oiiCanonicalVolumeLink
    , oiiCoverUrl
    , oiiVolumeId
    , oiiAuthor
    , oiiTitle
    , oiiDescription

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

    -- * BooksMylibraryBookshelvesVolumesListProjection
    , BooksMylibraryBookshelvesVolumesListProjection (..)

    -- * DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- * BooksVolumesListProjection
    , BooksVolumesListProjection (..)

    -- * DictlayerdataDictWordsDerivatives
    , DictlayerdataDictWordsDerivatives
    , dictlayerdataDictWordsDerivatives
    , ddwdText
    , ddwdSource

    -- * DictlayerdataDictSource
    , DictlayerdataDictSource
    , dictlayerdataDictSource
    , ddsUrl
    , ddsAttribution

    -- * GeolayerdataGeoViewportHi
    , GeolayerdataGeoViewportHi
    , geolayerdataGeoViewportHi
    , ggvhLatitude
    , ggvhLongitude

    -- * BooksVolumesListOrderBy
    , BooksVolumesListOrderBy (..)

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

    -- * VolumeSaleInfoOffers
    , VolumeSaleInfoOffers
    , volumeSaleInfoOffers
    , vsioFinskyOfferType
    , vsioRentalDuration
    , vsioListPrice
    , vsioRetailPrice

    -- * DictlayerdataDictWordsSensesSource
    , DictlayerdataDictWordsSensesSource
    , dictlayerdataDictWordsSensesSource
    , ddwssUrl
    , ddwssAttribution

    -- * BooksVolumesMybooksListProcessingState
    , BooksVolumesMybooksListProcessingState (..)

    -- * Layersummaries
    , Layersummaries
    , layersummaries
    , layTotalItems
    , layKind
    , layItems

    -- * BooksMyconfigRequestAccessLicenseTypes
    , BooksMyconfigRequestAccessLicenseTypes (..)

    -- * VolumeSaleInfoOffersListPrice
    , VolumeSaleInfoOffersListPrice
    , volumeSaleInfoOffersListPrice
    , vsiolpCurrencyCode
    , vsiolpAmountInMicros

    -- * BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition

    -- * Alt
    , Alt (..)
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
