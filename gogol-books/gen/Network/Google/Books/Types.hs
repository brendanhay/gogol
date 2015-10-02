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

    -- * BooksMyLibraryReadingPositionsSetPositionAction
    , BooksMyLibraryReadingPositionsSetPositionAction (..)

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

    -- * BooksCloudLoadingResource
    , BooksCloudLoadingResource
    , booksCloudLoadingResource
    , bclrProcessingState
    , bclrVolumeId
    , bclrAuthor
    , bclrTitle

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
    , vuiIsPreOrdered
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
    , rsURL
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
    , vaiViewOrderURL
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

    -- * BooksMyLibraryBookshelvesRemoveVolumeReason
    , BooksMyLibraryBookshelvesRemoveVolumeReason (..)

    -- * BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating
    , BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating (..)

    -- * BooksVolumesListLibraryRestrict
    , BooksVolumesListLibraryRestrict (..)

    -- * GeolayerdataCommon
    , GeolayerdataCommon
    , geolayerdataCommon
    , gcSnippet
    , gcSnippetURL
    , gcLang
    , gcTitle
    , gcPreviewImageURL

    -- * DictlayerdataDictWordsSource
    , DictlayerdataDictWordsSource
    , dictlayerdataDictWordsSource
    , ddwsURL
    , ddwsAttribution

    -- * DictlayerdataDictWordsSensesDefinitionsExamplesSource
    , DictlayerdataDictWordsSensesDefinitionsExamplesSource
    , dictlayerdataDictWordsSensesDefinitionsExamplesSource
    , ddwsdesURL
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
    , ciBadgeURL

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
    , ddwsssURL
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

    -- * BooksMyConfigSyncVolumeLicensesFeatures
    , BooksMyConfigSyncVolumeLicensesFeatures (..)

    -- * GeolayerdataGeoViewportLo
    , GeolayerdataGeoViewportLo
    , geolayerdataGeoViewportLo
    , ggvlLatitude
    , ggvlLongitude

    -- * BooksVolumesUserUploadedListProcessingState
    , BooksVolumesUserUploadedListProcessingState (..)

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

    -- * BooksMyLibraryBookshelvesAddVolumeReason
    , BooksMyLibraryBookshelvesAddVolumeReason (..)

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
    , rFullTextURL
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
    , oiArtURL
    , oiId
    , oiGServicesKey

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
    , ddwesURL
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
    , ddwsPronunciationURL
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
    , ddwdsURL
    , ddwdsAttribution

    -- * MetadataItems
    , MetadataItems
    , metadataItems
    , miSize
    , miVersion
    , miLanguage
    , miDownloadURL
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
    , oiiCoverURL
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

    -- * BooksMyLibraryBookshelvesVolumesListProjection
    , BooksMyLibraryBookshelvesVolumesListProjection (..)

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
    , ddsURL
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
    , ddwssURL
    , ddwssAttribution

    -- * BooksVolumesMybooksListProcessingState
    , BooksVolumesMybooksListProcessingState (..)

    -- * Layersummaries
    , Layersummaries
    , layersummaries
    , layTotalItems
    , layKind
    , layItems

    -- * BooksMyConfigRequestAccessLicenseTypes
    , BooksMyConfigRequestAccessLicenseTypes (..)

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
