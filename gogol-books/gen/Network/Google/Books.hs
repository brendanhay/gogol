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

    -- ** ImageLinks
    , ImageLinks
    , imageLinks
    , ilThumbnail
    , ilSmall
    , ilExtraLarge
    , ilLarge
    , ilMedium
    , ilSmallThumbnail

    -- ** Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- ** Annotationsdata
    , Annotationsdata
    , annotationsdata
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

    -- ** ProcessingState
    , ProcessingState (..)

    -- ** Viewport
    , Viewport
    , viewport
    , vHi
    , vLo

    -- ** UserInfo
    , UserInfo
    , userInfo
    , uiCopy
    , uiUserUploadedVolumeInfo
    , uiIsPurchased
    , uiRentalState
    , uiIsPreOrdered
    , uiReview
    , uiRentalPeriod
    , uiUpdated
    , uiIsUploaded
    , uiIsInMyBooks
    , uiReadingPosition

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

    -- ** AcquireMethod
    , AcquireMethod (..)

    -- ** Rating
    , Rating (..)

    -- ** DictSource
    , DictSource
    , dictSource
    , dsURL
    , dsAttribution

    -- ** LayerSummary
    , LayerSummary
    , layerSummary
    , lsLimitType
    , lsAllowedCharacterCount
    , lsRemainingCharacterCount

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

    -- ** ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsURL
    , rsDescription

    -- ** SynonymsItem
    , SynonymsItem
    , synonymsItem
    , siText
    , siSource

    -- ** ClientVersionRanges
    , ClientVersionRanges
    , clientVersionRanges
    , cvrGbImageRange
    , cvrContentVersion
    , cvrImageCfiRange
    , cvrGbTextRange
    , cvrCfiRange

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

    -- ** AccessInfo
    , AccessInfo
    , accessInfo
    , aiWebReaderLink
    , aiCountry
    , aiDriveImportedContentLink
    , aiExplicitOfflineLicenseManagement
    , aiViewability
    , aiQuoteSharingAllowed
    , aiEpub
    , aiPdf
    , aiTextToSpeechPermission
    , aiEmbeddable
    , aiAccessViewStatus
    , aiDownloadAccess
    , aiViewOrderURL
    , aiPublicDomain

    -- ** BooksVolumesGetProjection
    , BooksVolumesGetProjection (..)

    -- ** Copy
    , Copy
    , copy
    , cLimitType
    , cAllowedCharacterCount
    , cUpdated
    , cRemainingCharacterCount

    -- ** LayersItem
    , LayersItem
    , layersItem
    , liLimitType
    , liAllowedCharacterCount
    , liUpdated
    , liLayerId
    , liRemainingCharacterCount

    -- ** OrderBy
    , OrderBy (..)

    -- ** BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

    -- ** UserUploadedVolumeInfo
    , UserUploadedVolumeInfo
    , userUploadedVolumeInfo
    , uuviProcessingState

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

    -- ** DerivativesItem
    , DerivativesItem
    , derivativesItem
    , diText
    , diSource

    -- ** SensesItemSource
    , SensesItemSource
    , sensesItemSource
    , sisURL
    , sisAttribution

    -- ** BoundaryItemItem
    , BoundaryItemItem
    , boundaryItemItem
    , biiLatitude
    , biiLongitude

    -- ** Category
    , Category
    , category
    , cKind
    , cItems

    -- ** OffersItemsItem
    , OffersItemsItem
    , offersItemsItem
    , oiiItems
    , oiiArtURL
    , oiiId
    , oiiGServicesKey

    -- ** AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- ** SearchInfo
    , SearchInfo
    , searchInfo
    , siTextSnippet

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

    -- ** LicenseTypes
    , LicenseTypes (..)

    -- ** MaxAllowedMaturityRating
    , MaxAllowedMaturityRating (..)

    -- ** WordsItem
    , WordsItem
    , wordsItem
    , wiSenses
    , wiSource
    , wiDerivatives
    , wiExamples

    -- ** CategoryItemsItem
    , CategoryItemsItem
    , categoryItemsItem
    , ciiName
    , ciiCategoryId
    , ciiBadgeURL

    -- ** LibraryRestrict
    , LibraryRestrict (..)

    -- ** BooksVolumesAssociatedListMaxAllowedMaturityRating
    , BooksVolumesAssociatedListMaxAllowedMaturityRating (..)

    -- ** OffersItemsItemItemsItem
    , OffersItemsItemItemsItem
    , offersItemsItemItemsItem
    , oiiiiCanonicalVolumeLink
    , oiiiiCoverURL
    , oiiiiVolumeId
    , oiiiiAuthor
    , oiiiiTitle
    , oiiiiDescription

    -- ** BooksVolumesRecommendedListMaxAllowedMaturityRating
    , BooksVolumesRecommendedListMaxAllowedMaturityRating (..)

    -- ** RentalDuration
    , RentalDuration
    , rentalDuration
    , rdCount
    , rdUnit

    -- ** Action
    , Action (..)

    -- ** Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- ** Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon

    -- ** ConjugationsItem
    , ConjugationsItem
    , conjugationsItem
    , ciValue
    , ciType

    -- ** Hi
    , Hi
    , hi
    , hLatitude
    , hLongitude

    -- ** DictlayerdataCommon
    , DictlayerdataCommon
    , dictlayerdataCommon
    , dcTitle

    -- ** Download
    , Download (..)

    -- ** OffersItemRetailPrice
    , OffersItemRetailPrice
    , offersItemRetailPrice
    , oirpCurrencyCode
    , oirpAmountInMicros

    -- ** Reason
    , Reason (..)

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

    -- ** ListPrice
    , ListPrice
    , listPrice
    , lpAmount
    , lpCurrencyCode

    -- ** IndustryIdentifiersItem
    , IndustryIdentifiersItem
    , industryIdentifiersItem
    , iiiIdentifier
    , iiiType

    -- ** BooksMyLibraryBookshelvesAddVolumeReason
    , BooksMyLibraryBookshelvesAddVolumeReason (..)

    -- ** NotesExport
    , NotesExport
    , notesExport
    , neFolderName
    , neIsEnabled

    -- ** Features
    , Features (..)

    -- ** CurrentVersionRanges
    , CurrentVersionRanges
    , currentVersionRanges
    , cGbImageRange
    , cContentVersion
    , cImageCfiRange
    , cGbTextRange
    , cCfiRange

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

    -- ** Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

    -- ** RetailPrice
    , RetailPrice
    , retailPrice
    , rpAmount
    , rpCurrencyCode

    -- ** Epub
    , Epub
    , epub
    , eAcsTokenLink
    , eIsAvailable
    , eDownloadLink

    -- ** Dict
    , Dict
    , dict
    , dSource
    , dWords

    -- ** Pdf
    , Pdf
    , pdf
    , pAcsTokenLink
    , pIsAvailable
    , pDownloadLink

    -- ** SynonymsItemSource
    , SynonymsItemSource
    , synonymsItemSource
    , sURL
    , sAttribution

    -- ** ContentRanges
    , ContentRanges
    , contentRanges
    , crGbImageRange
    , crContentVersion
    , crGbTextRange
    , crCfiRange

    -- ** LayerInfo
    , LayerInfo
    , layerInfo
    , liLayers

    -- ** RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

    -- ** SaleInfo
    , SaleInfo
    , saleInfo
    , siCountry
    , siOnSaleDate
    , siListPrice
    , siRetailPrice
    , siOffers
    , siBuyLink
    , siIsEbook
    , siSaleability

    -- ** Geo
    , Geo
    , geo
    , gMapType
    , gCachePolicy
    , gViewport
    , gBoundary
    , gLatitude
    , gZoom
    , gCountryCode
    , gLongitude

    -- ** Common
    , Common
    , common
    , cSnippet
    , cSnippetURL
    , cLang
    , cTitle
    , cPreviewImageURL

    -- ** WordsItemSource
    , WordsItemSource
    , wordsItemSource
    , wisURL
    , wisAttribution

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- ** RentalPeriod
    , RentalPeriod
    , rentalPeriod
    , rpEndUtcSec
    , rpStartUtcSec

    -- ** Projection
    , Projection (..)

    -- ** Filter
    , Filter (..)

    -- ** LayerInfoLayersItem
    , LayerInfoLayersItem
    , layerInfoLayersItem
    , liliVolumeAnnotationsVersion
    , liliLayerId

    -- ** DerivativesItemSource
    , DerivativesItemSource
    , derivativesItemSource
    , disURL
    , disAttribution

    -- ** SensesItem
    , SensesItem
    , sensesItem
    , sPronunciationURL
    , sConjugations
    , sPronunciation
    , sSynonyms
    , sSource
    , sPartOfSpeech
    , sDefinitions
    , sSyllabification

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

    -- ** Dimensions
    , Dimensions
    , dimensions
    , dHeight
    , dWidth
    , dThickness

    -- ** RecommendedInfo
    , RecommendedInfo
    , recommendedInfo
    , riExplanation

    -- ** Bookshelves
    , Bookshelves
    , bookshelves
    , booKind
    , booItems

    -- ** WordsItemExamplesItemSource
    , WordsItemExamplesItemSource
    , wordsItemExamplesItemSource
    , wieisURL
    , wieisAttribution

    -- ** DefinitionsItem
    , DefinitionsItem
    , definitionsItem
    , diDefinition
    , diExamples

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

    -- ** ExamplesItemSource
    , ExamplesItemSource
    , examplesItemSource
    , eisURL
    , eisAttribution

    -- ** Lo
    , Lo
    , lo
    , lLatitude
    , lLongitude

    -- ** ExamplesItem
    , ExamplesItem
    , examplesItem
    , eiText
    , eiSource

    -- ** MetadataItemsItem
    , MetadataItemsItem
    , metadataItemsItem
    , miiSize
    , miiVersion
    , miiLanguage
    , miiDownloadURL
    , miiEncryptedKey

    -- ** WordsItemExamplesItem
    , WordsItemExamplesItem
    , wordsItemExamplesItem
    , wieiText
    , wieiSource

    -- ** VolumeInfo
    , VolumeInfo
    , volumeInfo
    , viImageLinks
    , viAverageRating
    , viRatingsCount
    , viCanonicalVolumeLink
    , viReadingModes
    , viIndustryIdentifiers
    , viPrintedPageCount
    , viMainCategory
    , viContentVersion
    , viSamplePageCount
    , viCategories
    , viAuthors
    , viAllowAnonLogging
    , viSubtitle
    , viPublishedDate
    , viMaturityRating
    , viPreviewLink
    , viLanguage
    , viTitle
    , viPageCount
    , viDimensions
    , viInfoLink
    , viPublisher
    , viDescription
    , viPrintType

    -- ** DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- ** BooksVolumesListProjection
    , BooksVolumesListProjection (..)

    -- ** OffersItem
    , OffersItem
    , offersItem
    , oiFinskyOfferType
    , oiRentalDuration
    , oiListPrice
    , oiRetailPrice

    -- ** BooksVolumesMybooksListProcessingState
    , BooksVolumesMybooksListProcessingState (..)

    -- ** PrintType
    , PrintType (..)

    -- ** OffersItemListPrice
    , OffersItemListPrice
    , offersItemListPrice
    , oilpCurrencyCode
    , oilpAmountInMicros

    -- ** Layersummaries
    , Layersummaries
    , layersummaries
    , layTotalItems
    , layKind
    , layItems

    -- ** BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition

    -- ** Association
    , Association (..)
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
