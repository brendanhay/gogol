{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Books
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you search for books and manage your Google Books library.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference>
module Network.Google.Books
    (
    -- * API
      BooksAPI
    , booksAPI
    , booksURL

    -- * Service Methods

    -- * REST Resources

    -- ** BooksBookshelvesGet
    , module Network.Google.Resource.Books.Bookshelves.Get

    -- ** BooksBookshelvesList
    , module Network.Google.Resource.Books.Bookshelves.List

    -- ** BooksBookshelvesVolumesList
    , module Network.Google.Resource.Books.Bookshelves.Volumes.List

    -- ** BooksCloudLoadingAddBook
    , module Network.Google.Resource.Books.CloudLoading.AddBook

    -- ** BooksCloudLoadingDeleteBook
    , module Network.Google.Resource.Books.CloudLoading.DeleteBook

    -- ** BooksCloudLoadingUpdateBook
    , module Network.Google.Resource.Books.CloudLoading.UpdateBook

    -- ** BooksDictionaryListOfflineMetadata
    , module Network.Google.Resource.Books.Dictionary.ListOfflineMetadata

    -- ** BooksLayersAnnotationDataGet
    , module Network.Google.Resource.Books.Layers.AnnotationData.Get

    -- ** BooksLayersAnnotationDataList
    , module Network.Google.Resource.Books.Layers.AnnotationData.List

    -- ** BooksLayersGet
    , module Network.Google.Resource.Books.Layers.Get

    -- ** BooksLayersList
    , module Network.Google.Resource.Books.Layers.List

    -- ** BooksLayersVolumeAnnotationsGet
    , module Network.Google.Resource.Books.Layers.VolumeAnnotations.Get

    -- ** BooksLayersVolumeAnnotationsList
    , module Network.Google.Resource.Books.Layers.VolumeAnnotations.List

    -- ** BooksMyConfigGetUserSettings
    , module Network.Google.Resource.Books.MyConfig.GetUserSettings

    -- ** BooksMyConfigReleaseDownloadAccess
    , module Network.Google.Resource.Books.MyConfig.ReleaseDownloadAccess

    -- ** BooksMyConfigRequestAccess
    , module Network.Google.Resource.Books.MyConfig.RequestAccess

    -- ** BooksMyConfigSyncVolumeLicenses
    , module Network.Google.Resource.Books.MyConfig.SyncVolumeLicenses

    -- ** BooksMyConfigUpdateUserSettings
    , module Network.Google.Resource.Books.MyConfig.UpdateUserSettings

    -- ** BooksMyLibraryAnnotationsDelete
    , module Network.Google.Resource.Books.MyLibrary.Annotations.Delete

    -- ** BooksMyLibraryAnnotationsInsert
    , module Network.Google.Resource.Books.MyLibrary.Annotations.Insert

    -- ** BooksMyLibraryAnnotationsList
    , module Network.Google.Resource.Books.MyLibrary.Annotations.List

    -- ** BooksMyLibraryAnnotationsSummary
    , module Network.Google.Resource.Books.MyLibrary.Annotations.Summary

    -- ** BooksMyLibraryAnnotationsUpdate
    , module Network.Google.Resource.Books.MyLibrary.Annotations.Update

    -- ** BooksMyLibraryBookshelvesAddVolume
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume

    -- ** BooksMyLibraryBookshelvesClearVolumes
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes

    -- ** BooksMyLibraryBookshelvesGet
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.Get

    -- ** BooksMyLibraryBookshelvesList
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.List

    -- ** BooksMyLibraryBookshelvesMoveVolume
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume

    -- ** BooksMyLibraryBookshelvesRemoveVolume
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume

    -- ** BooksMyLibraryBookshelvesVolumesList
    , module Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List

    -- ** BooksMyLibraryReadingPositionsGet
    , module Network.Google.Resource.Books.MyLibrary.ReadingPositions.Get

    -- ** BooksMyLibraryReadingPositionsSetPosition
    , module Network.Google.Resource.Books.MyLibrary.ReadingPositions.SetPosition

    -- ** BooksOnboardingListCategories
    , module Network.Google.Resource.Books.Onboarding.ListCategories

    -- ** BooksOnboardingListCategoryVolumes
    , module Network.Google.Resource.Books.Onboarding.ListCategoryVolumes

    -- ** BooksPromoOfferAccept
    , module Network.Google.Resource.Books.PromoOffer.Accept

    -- ** BooksPromoOfferDismiss
    , module Network.Google.Resource.Books.PromoOffer.Dismiss

    -- ** BooksPromoOfferGet
    , module Network.Google.Resource.Books.PromoOffer.Get

    -- ** BooksVolumesAssociatedList
    , module Network.Google.Resource.Books.Volumes.Associated.List

    -- ** BooksVolumesGet
    , module Network.Google.Resource.Books.Volumes.Get

    -- ** BooksVolumesList
    , module Network.Google.Resource.Books.Volumes.List

    -- ** BooksVolumesMybooksList
    , module Network.Google.Resource.Books.Volumes.Mybooks.List

    -- ** BooksVolumesRecommendedList
    , module Network.Google.Resource.Books.Volumes.Recommended.List

    -- ** BooksVolumesRecommendedRate
    , module Network.Google.Resource.Books.Volumes.Recommended.Rate

    -- ** BooksVolumesUserUploadedList
    , module Network.Google.Resource.Books.Volumes.UserUploaded.List

    -- * Types

    -- ** Volumeannotations
    , Volumeannotations
    , volumeannotations
    , vTotalItems
    , vNextPageToken
    , vKind
    , vItems
    , vVersion

    -- ** Annotations
    , Annotations
    , annotations
    , aTotalItems
    , aNextPageToken
    , aKind
    , aItems

    -- ** Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- ** VolumeVolumeInfoIndustryIdentifiers
    , VolumeVolumeInfoIndustryIdentifiers
    , volumeVolumeInfoIndustryIdentifiers
    , vviiiIdentifier
    , vviiiType

    -- ** Annotationsdata
    , Annotationsdata
    , annotationsdata
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

    -- ** BooksMyLibraryReadingPositionsSetPositionAction
    , BooksMyLibraryReadingPositionsSetPositionAction (..)

    -- ** GeolayerdataGeoViewport
    , GeolayerdataGeoViewport
    , geolayerdataGeoViewport
    , ggvHi
    , ggvLo

    -- ** Annotation
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

    -- ** ReviewAuthor
    , ReviewAuthor
    , reviewAuthor
    , raDisplayName

    -- ** BooksVolumesListDownload
    , BooksVolumesListDownload (..)

    -- ** DictlayerdataDictWordsSensesConjugations
    , DictlayerdataDictWordsSensesConjugations
    , dictlayerdataDictWordsSensesConjugations
    , ddwscValue
    , ddwscType

    -- ** BooksCloudLoadingResource
    , BooksCloudLoadingResource
    , booksCloudLoadingResource
    , bclrProcessingState
    , bclrVolumeId
    , bclrAuthor
    , bclrTitle

    -- ** Layersummary
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

    -- ** VolumeUserInfo
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

    -- ** ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsURL
    , rsDescription

    -- ** Annotationdata
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

    -- ** Volumeannotation
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

    -- ** VolumeUserInfoUserUploadedVolumeInfo
    , VolumeUserInfoUserUploadedVolumeInfo
    , volumeUserInfoUserUploadedVolumeInfo
    , vuiuuviProcessingState

    -- ** BooksVolumesAssociatedListAssociation
    , BooksVolumesAssociatedListAssociation (..)

    -- ** VolumeannotationContentRanges
    , VolumeannotationContentRanges
    , volumeannotationContentRanges
    , vcrGbImageRange
    , vcrContentVersion
    , vcrGbTextRange
    , vcrCfiRange

    -- ** VolumeVolumeInfoImageLinks
    , VolumeVolumeInfoImageLinks
    , volumeVolumeInfoImageLinks
    , vviilThumbnail
    , vviilSmall
    , vviilExtraLarge
    , vviilLarge
    , vviilMedium
    , vviilSmallThumbnail

    -- ** BooksVolumesGetProjection
    , BooksVolumesGetProjection (..)

    -- ** VolumeAccessInfo
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

    -- ** VolumeUserInfoCopy
    , VolumeUserInfoCopy
    , volumeUserInfoCopy
    , vuicLimitType
    , vuicAllowedCharacterCount
    , vuicUpdated
    , vuicRemainingCharacterCount

    -- ** BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

    -- ** VolumeLayerInfoLayers
    , VolumeLayerInfoLayers
    , volumeLayerInfoLayers
    , vlilVolumeAnnotationsVersion
    , vlilLayerId

    -- ** DictlayerdataDictWordsExamples
    , DictlayerdataDictWordsExamples
    , dictlayerdataDictWordsExamples
    , ddweText
    , ddweSource

    -- ** Bookshelf
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

    -- ** DictlayerdataDictWordsSensesDefinitions
    , DictlayerdataDictWordsSensesDefinitions
    , dictlayerdataDictWordsSensesDefinitions
    , ddwsdDefinition
    , ddwsdExamples

    -- ** AnnotationLayerSummary
    , AnnotationLayerSummary
    , annotationLayerSummary
    , alsLimitType
    , alsAllowedCharacterCount
    , alsRemainingCharacterCount

    -- ** Category
    , Category
    , category
    , cKind
    , cItems

    -- ** VolumeSearchInfo
    , VolumeSearchInfo
    , volumeSearchInfo
    , vsiTextSnippet

    -- ** AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- ** Volume
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

    -- ** BooksMyLibraryBookshelvesRemoveVolumeReason
    , BooksMyLibraryBookshelvesRemoveVolumeReason (..)

    -- ** BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating
    , BooksOnboardingListCategoryVolumesMaxAllowedMaturityRating (..)

    -- ** BooksVolumesListLibraryRestrict
    , BooksVolumesListLibraryRestrict (..)

    -- ** GeolayerdataCommon
    , GeolayerdataCommon
    , geolayerdataCommon
    , gcSnippet
    , gcSnippetURL
    , gcLang
    , gcTitle
    , gcPreviewImageURL

    -- ** DictlayerdataDictWordsSource
    , DictlayerdataDictWordsSource
    , dictlayerdataDictWordsSource
    , ddwsURL
    , ddwsAttribution

    -- ** DictlayerdataDictWordsSensesDefinitionsExamplesSource
    , DictlayerdataDictWordsSensesDefinitionsExamplesSource
    , dictlayerdataDictWordsSensesDefinitionsExamplesSource
    , ddwsdesURL
    , ddwsdesAttribution

    -- ** BooksVolumesListFilter
    , BooksVolumesListFilter (..)

    -- ** GeolayerdataGeoBoundary
    , GeolayerdataGeoBoundary
    , geolayerdataGeoBoundary
    , ggbLatitude
    , ggbLongitude

    -- ** BooksVolumesAssociatedListMaxAllowedMaturityRating
    , BooksVolumesAssociatedListMaxAllowedMaturityRating (..)

    -- ** GeolayerdataGeo
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

    -- ** BooksVolumesRecommendedListMaxAllowedMaturityRating
    , BooksVolumesRecommendedListMaxAllowedMaturityRating (..)

    -- ** CategoryItems
    , CategoryItems
    , categoryItems
    , ciName
    , ciCategoryId
    , ciBadgeURL

    -- ** DictlayerdataDictWordsSensesDefinitionsExamples
    , DictlayerdataDictWordsSensesDefinitionsExamples
    , dictlayerdataDictWordsSensesDefinitionsExamples
    , ddwsdeText
    , ddwsdeSource

    -- ** DictlayerdataDictWords
    , DictlayerdataDictWords
    , dictlayerdataDictWords
    , ddwSenses
    , ddwSource
    , ddwDerivatives
    , ddwExamples

    -- ** Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- ** DictlayerdataDictWordsSensesSynonyms
    , DictlayerdataDictWordsSensesSynonyms
    , dictlayerdataDictWordsSensesSynonyms
    , ddwssText
    , ddwssSource

    -- ** Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon

    -- ** BooksVolumesRecommendedRateRating
    , BooksVolumesRecommendedRateRating (..)

    -- ** DictlayerdataDictWordsSensesSynonymsSource
    , DictlayerdataDictWordsSensesSynonymsSource
    , dictlayerdataDictWordsSensesSynonymsSource
    , ddwsssURL
    , ddwsssAttribution

    -- ** VolumeSaleInfoOffersRetailPrice
    , VolumeSaleInfoOffersRetailPrice
    , volumeSaleInfoOffersRetailPrice
    , vsiorpCurrencyCode
    , vsiorpAmountInMicros

    -- ** DictlayerdataCommon
    , DictlayerdataCommon
    , dictlayerdataCommon
    , dcTitle

    -- ** BooksMyConfigSyncVolumeLicensesFeatures
    , BooksMyConfigSyncVolumeLicensesFeatures (..)

    -- ** GeolayerdataGeoViewportLo
    , GeolayerdataGeoViewportLo
    , geolayerdataGeoViewportLo
    , ggvlLatitude
    , ggvlLongitude

    -- ** BooksVolumesUserUploadedListProcessingState
    , BooksVolumesUserUploadedListProcessingState (..)

    -- ** DownloadAccessRestriction
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

    -- ** BooksMyLibraryBookshelvesAddVolumeReason
    , BooksMyLibraryBookshelvesAddVolumeReason (..)

    -- ** VolumeSaleInfoRetailPrice
    , VolumeSaleInfoRetailPrice
    , volumeSaleInfoRetailPrice
    , vsirpAmount
    , vsirpCurrencyCode

    -- ** Review
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

    -- ** BooksVolumesListPrintType
    , BooksVolumesListPrintType (..)

    -- ** Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

    -- ** VolumeSaleInfoListPrice
    , VolumeSaleInfoListPrice
    , volumeSaleInfoListPrice
    , vsilpAmount
    , vsilpCurrencyCode

    -- ** BooksVolumesMybooksListAcquireMethod
    , BooksVolumesMybooksListAcquireMethod (..)

    -- ** VolumeUserInfoRentalPeriod
    , VolumeUserInfoRentalPeriod
    , volumeUserInfoRentalPeriod
    , vuirpEndUtcSec
    , vuirpStartUtcSec

    -- ** VolumeLayerInfo
    , VolumeLayerInfo
    , volumeLayerInfo
    , vliLayers

    -- ** VolumeSaleInfo
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

    -- ** RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

    -- ** OffersItems
    , OffersItems
    , offersItems
    , oiItems
    , oiArtURL
    , oiId
    , oiGServicesKey

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- ** VolumeVolumeInfoDimensions
    , VolumeVolumeInfoDimensions
    , volumeVolumeInfoDimensions
    , vvidHeight
    , vvidWidth
    , vvidThickness

    -- ** AnnotationCurrentVersionRanges
    , AnnotationCurrentVersionRanges
    , annotationCurrentVersionRanges
    , acvrGbImageRange
    , acvrContentVersion
    , acvrImageCfiRange
    , acvrGbTextRange
    , acvrCfiRange

    -- ** VolumeAccessInfoEpub
    , VolumeAccessInfoEpub
    , volumeAccessInfoEpub
    , vaieAcsTokenLink
    , vaieIsAvailable
    , vaieDownloadLink

    -- ** VolumeAccessInfoPdf
    , VolumeAccessInfoPdf
    , volumeAccessInfoPdf
    , vaipAcsTokenLink
    , vaipIsAvailable
    , vaipDownloadLink

    -- ** AnnotationClientVersionRanges
    , AnnotationClientVersionRanges
    , annotationClientVersionRanges
    , aGbImageRange
    , aContentVersion
    , aImageCfiRange
    , aGbTextRange
    , aCfiRange

    -- ** AnnotationsSummaryLayers
    , AnnotationsSummaryLayers
    , annotationsSummaryLayers
    , aslLimitType
    , aslAllowedCharacterCount
    , aslUpdated
    , aslLayerId
    , aslRemainingCharacterCount

    -- ** DictlayerdataDictWordsExamplesSource
    , DictlayerdataDictWordsExamplesSource
    , dictlayerdataDictWordsExamplesSource
    , ddwesURL
    , ddwesAttribution

    -- ** VolumeSaleInfoOffersRentalDuration
    , VolumeSaleInfoOffersRentalDuration
    , volumeSaleInfoOffersRentalDuration
    , vsiordCount
    , vsiordUnit

    -- ** ReadingPosition
    , ReadingPosition
    , readingPosition
    , rpEpubCfiPosition
    , rpKind
    , rpGbImagePosition
    , rpPdfPosition
    , rpVolumeId
    , rpUpdated
    , rpGbTextPosition

    -- ** Offers
    , Offers
    , offers
    , oKind
    , oItems

    -- ** Volumes
    , Volumes
    , volumes
    , v1TotalItems
    , v1Kind
    , v1Items

    -- ** VolumeRecommendedInfo
    , VolumeRecommendedInfo
    , volumeRecommendedInfo
    , vriExplanation

    -- ** Bookshelves
    , Bookshelves
    , bookshelves
    , booKind
    , booItems

    -- ** DictlayerdataDictWordsSenses
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

    -- ** DictlayerdataDictWordsDerivativesSource
    , DictlayerdataDictWordsDerivativesSource
    , dictlayerdataDictWordsDerivativesSource
    , ddwdsURL
    , ddwdsAttribution

    -- ** MetadataItems
    , MetadataItems
    , metadataItems
    , miSize
    , miVersion
    , miLanguage
    , miDownloadURL
    , miEncryptedKey

    -- ** DictlayerdataDict
    , DictlayerdataDict
    , dictlayerdataDict
    , ddSource
    , ddWords

    -- ** UsersettingsNotesExport
    , UsersettingsNotesExport
    , usersettingsNotesExport
    , uneFolderName
    , uneIsEnabled

    -- ** OffersItemsItems
    , OffersItemsItems
    , offersItemsItems
    , oiiCanonicalVolumeLink
    , oiiCoverURL
    , oiiVolumeId
    , oiiAuthor
    , oiiTitle
    , oiiDescription

    -- ** ConcurrentAccessRestriction
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

    -- ** BooksMyLibraryBookshelvesVolumesListProjection
    , BooksMyLibraryBookshelvesVolumesListProjection (..)

    -- ** DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- ** BooksVolumesListProjection
    , BooksVolumesListProjection (..)

    -- ** DictlayerdataDictWordsDerivatives
    , DictlayerdataDictWordsDerivatives
    , dictlayerdataDictWordsDerivatives
    , ddwdText
    , ddwdSource

    -- ** DictlayerdataDictSource
    , DictlayerdataDictSource
    , dictlayerdataDictSource
    , ddsURL
    , ddsAttribution

    -- ** GeolayerdataGeoViewportHi
    , GeolayerdataGeoViewportHi
    , geolayerdataGeoViewportHi
    , ggvhLatitude
    , ggvhLongitude

    -- ** BooksVolumesListOrderBy
    , BooksVolumesListOrderBy (..)

    -- ** VolumeVolumeInfo
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

    -- ** VolumeSaleInfoOffers
    , VolumeSaleInfoOffers
    , volumeSaleInfoOffers
    , vsioFinskyOfferType
    , vsioRentalDuration
    , vsioListPrice
    , vsioRetailPrice

    -- ** DictlayerdataDictWordsSensesSource
    , DictlayerdataDictWordsSensesSource
    , dictlayerdataDictWordsSensesSource
    , ddwssURL
    , ddwssAttribution

    -- ** BooksVolumesMybooksListProcessingState
    , BooksVolumesMybooksListProcessingState (..)

    -- ** Layersummaries
    , Layersummaries
    , layersummaries
    , layTotalItems
    , layKind
    , layItems

    -- ** BooksMyConfigRequestAccessLicenseTypes
    , BooksMyConfigRequestAccessLicenseTypes (..)

    -- ** VolumeSaleInfoOffersListPrice
    , VolumeSaleInfoOffersListPrice
    , volumeSaleInfoOffersListPrice
    , vsiolpCurrencyCode
    , vsiolpAmountInMicros

    -- ** BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Books.Bookshelves.Get
import           Network.Google.Resource.Books.Bookshelves.List
import           Network.Google.Resource.Books.Bookshelves.Volumes.List
import           Network.Google.Resource.Books.CloudLoading.AddBook
import           Network.Google.Resource.Books.CloudLoading.DeleteBook
import           Network.Google.Resource.Books.CloudLoading.UpdateBook
import           Network.Google.Resource.Books.Dictionary.ListOfflineMetadata
import           Network.Google.Resource.Books.Layers.AnnotationData.Get
import           Network.Google.Resource.Books.Layers.AnnotationData.List
import           Network.Google.Resource.Books.Layers.Get
import           Network.Google.Resource.Books.Layers.List
import           Network.Google.Resource.Books.Layers.VolumeAnnotations.Get
import           Network.Google.Resource.Books.Layers.VolumeAnnotations.List
import           Network.Google.Resource.Books.MyConfig.GetUserSettings
import           Network.Google.Resource.Books.MyConfig.ReleaseDownloadAccess
import           Network.Google.Resource.Books.MyConfig.RequestAccess
import           Network.Google.Resource.Books.MyConfig.SyncVolumeLicenses
import           Network.Google.Resource.Books.MyConfig.UpdateUserSettings
import           Network.Google.Resource.Books.MyLibrary.Annotations.Delete
import           Network.Google.Resource.Books.MyLibrary.Annotations.Insert
import           Network.Google.Resource.Books.MyLibrary.Annotations.List
import           Network.Google.Resource.Books.MyLibrary.Annotations.Summary
import           Network.Google.Resource.Books.MyLibrary.Annotations.Update
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.Get
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.List
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume
import           Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List
import           Network.Google.Resource.Books.MyLibrary.ReadingPositions.Get
import           Network.Google.Resource.Books.MyLibrary.ReadingPositions.SetPosition
import           Network.Google.Resource.Books.Onboarding.ListCategories
import           Network.Google.Resource.Books.Onboarding.ListCategoryVolumes
import           Network.Google.Resource.Books.PromoOffer.Accept
import           Network.Google.Resource.Books.PromoOffer.Dismiss
import           Network.Google.Resource.Books.PromoOffer.Get
import           Network.Google.Resource.Books.Volumes.Associated.List
import           Network.Google.Resource.Books.Volumes.Get
import           Network.Google.Resource.Books.Volumes.List
import           Network.Google.Resource.Books.Volumes.Mybooks.List
import           Network.Google.Resource.Books.Volumes.Recommended.List
import           Network.Google.Resource.Books.Volumes.Recommended.Rate
import           Network.Google.Resource.Books.Volumes.UserUploaded.List

{- $resources
TODO
-}

type BooksAPI =
     OnboardingListCategoriesResource :<|>
       OnboardingListCategoryVolumesResource
       :<|> MyLibraryAnnotationsSummaryResource
       :<|> MyLibraryAnnotationsInsertResource
       :<|> MyLibraryAnnotationsListResource
       :<|> MyLibraryAnnotationsDeleteResource
       :<|> MyLibraryAnnotationsUpdateResource
       :<|> MyLibraryReadingPositionsGetResource
       :<|> MyLibraryReadingPositionsSetPositionResource
       :<|> MyLibraryBookshelvesVolumesListResource
       :<|> MyLibraryBookshelvesClearVolumesResource
       :<|> MyLibraryBookshelvesListResource
       :<|> MyLibraryBookshelvesGetResource
       :<|> MyLibraryBookshelvesRemoveVolumeResource
       :<|> MyLibraryBookshelvesAddVolumeResource
       :<|> MyLibraryBookshelvesMoveVolumeResource
       :<|> PromoOfferAcceptResource
       :<|> PromoOfferGetResource
       :<|> PromoOfferDismissResource
       :<|> CloudLoadingAddBookResource
       :<|> CloudLoadingUpdateBookResource
       :<|> CloudLoadingDeleteBookResource
       :<|> LayersVolumeAnnotationsListResource
       :<|> LayersVolumeAnnotationsGetResource
       :<|> LayersAnnotationDataListResource
       :<|> LayersAnnotationDataGetResource
       :<|> LayersListResource
       :<|> LayersGetResource
       :<|> DictionaryListOfflineMetadataResource
       :<|> VolumesUserUploadedListResource
       :<|> VolumesRecommendedListResource
       :<|> VolumesRecommendedRateResource
       :<|> VolumesAssociatedListResource
       :<|> VolumesMybooksListResource
       :<|> VolumesListResource
       :<|> VolumesGetResource
       :<|> BookshelvesVolumesListResource
       :<|> BookshelvesListResource
       :<|> BookshelvesGetResource
       :<|> MyConfigSyncVolumeLicensesResource
       :<|> MyConfigGetUserSettingsResource
       :<|> MyConfigRequestAccessResource
       :<|> MyConfigUpdateUserSettingsResource
       :<|> MyConfigReleaseDownloadAccessResource

booksAPI :: Proxy BooksAPI
booksAPI = Proxy
