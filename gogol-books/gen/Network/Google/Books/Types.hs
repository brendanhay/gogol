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

    -- * ImageLinks
    , ImageLinks
    , imageLinks
    , ilThumbnail
    , ilSmall
    , ilExtraLarge
    , ilLarge
    , ilMedium
    , ilSmallThumbnail

    -- * Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- * Annotationsdata
    , Annotationsdata
    , annotationsdata
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

    -- * ProcessingState
    , ProcessingState (..)

    -- * Viewport
    , Viewport
    , viewport
    , vHi
    , vLo

    -- * UserInfo
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

    -- * AcquireMethod
    , AcquireMethod (..)

    -- * Rating
    , Rating (..)

    -- * DictSource
    , DictSource
    , dictSource
    , dsURL
    , dsAttribution

    -- * LayerSummary
    , LayerSummary
    , layerSummary
    , lsLimitType
    , lsAllowedCharacterCount
    , lsRemainingCharacterCount

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

    -- * ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsURL
    , rsDescription

    -- * SynonymsItem
    , SynonymsItem
    , synonymsItem
    , siText
    , siSource

    -- * ClientVersionRanges
    , ClientVersionRanges
    , clientVersionRanges
    , cvrGbImageRange
    , cvrContentVersion
    , cvrImageCfiRange
    , cvrGbTextRange
    , cvrCfiRange

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

    -- * AccessInfo
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

    -- * BooksVolumesGetProjection
    , BooksVolumesGetProjection (..)

    -- * Copy
    , Copy
    , copy
    , cLimitType
    , cAllowedCharacterCount
    , cUpdated
    , cRemainingCharacterCount

    -- * LayersItem
    , LayersItem
    , layersItem
    , liLimitType
    , liAllowedCharacterCount
    , liUpdated
    , liLayerId
    , liRemainingCharacterCount

    -- * OrderBy
    , OrderBy (..)

    -- * BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

    -- * UserUploadedVolumeInfo
    , UserUploadedVolumeInfo
    , userUploadedVolumeInfo
    , uuviProcessingState

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

    -- * DerivativesItem
    , DerivativesItem
    , derivativesItem
    , diText
    , diSource

    -- * SensesItemSource
    , SensesItemSource
    , sensesItemSource
    , sisURL
    , sisAttribution

    -- * BoundaryItemItem
    , BoundaryItemItem
    , boundaryItemItem
    , biiLatitude
    , biiLongitude

    -- * Category
    , Category
    , category
    , cKind
    , cItems

    -- * OffersItemsItem
    , OffersItemsItem
    , offersItemsItem
    , oiiItems
    , oiiArtURL
    , oiiId
    , oiiGServicesKey

    -- * AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- * SearchInfo
    , SearchInfo
    , searchInfo
    , siTextSnippet

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

    -- * LicenseTypes
    , LicenseTypes (..)

    -- * MaxAllowedMaturityRating
    , MaxAllowedMaturityRating (..)

    -- * WordsItem
    , WordsItem
    , wordsItem
    , wiSenses
    , wiSource
    , wiDerivatives
    , wiExamples

    -- * CategoryItemsItem
    , CategoryItemsItem
    , categoryItemsItem
    , ciiName
    , ciiCategoryId
    , ciiBadgeURL

    -- * LibraryRestrict
    , LibraryRestrict (..)

    -- * BooksVolumesAssociatedListMaxAllowedMaturityRating
    , BooksVolumesAssociatedListMaxAllowedMaturityRating (..)

    -- * OffersItemsItemItemsItem
    , OffersItemsItemItemsItem
    , offersItemsItemItemsItem
    , oiiiiCanonicalVolumeLink
    , oiiiiCoverURL
    , oiiiiVolumeId
    , oiiiiAuthor
    , oiiiiTitle
    , oiiiiDescription

    -- * BooksVolumesRecommendedListMaxAllowedMaturityRating
    , BooksVolumesRecommendedListMaxAllowedMaturityRating (..)

    -- * RentalDuration
    , RentalDuration
    , rentalDuration
    , rdCount
    , rdUnit

    -- * Action
    , Action (..)

    -- * Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- * Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon

    -- * ConjugationsItem
    , ConjugationsItem
    , conjugationsItem
    , ciValue
    , ciType

    -- * Hi
    , Hi
    , hi
    , hLatitude
    , hLongitude

    -- * DictlayerdataCommon
    , DictlayerdataCommon
    , dictlayerdataCommon
    , dcTitle

    -- * Download
    , Download (..)

    -- * OffersItemRetailPrice
    , OffersItemRetailPrice
    , offersItemRetailPrice
    , oirpCurrencyCode
    , oirpAmountInMicros

    -- * Reason
    , Reason (..)

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

    -- * ListPrice
    , ListPrice
    , listPrice
    , lpAmount
    , lpCurrencyCode

    -- * IndustryIdentifiersItem
    , IndustryIdentifiersItem
    , industryIdentifiersItem
    , iiiIdentifier
    , iiiType

    -- * BooksMyLibraryBookshelvesAddVolumeReason
    , BooksMyLibraryBookshelvesAddVolumeReason (..)

    -- * NotesExport
    , NotesExport
    , notesExport
    , neFolderName
    , neIsEnabled

    -- * Features
    , Features (..)

    -- * CurrentVersionRanges
    , CurrentVersionRanges
    , currentVersionRanges
    , cGbImageRange
    , cContentVersion
    , cImageCfiRange
    , cGbTextRange
    , cCfiRange

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

    -- * Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

    -- * RetailPrice
    , RetailPrice
    , retailPrice
    , rpAmount
    , rpCurrencyCode

    -- * Epub
    , Epub
    , epub
    , eAcsTokenLink
    , eIsAvailable
    , eDownloadLink

    -- * Dict
    , Dict
    , dict
    , dSource
    , dWords

    -- * Pdf
    , Pdf
    , pdf
    , pAcsTokenLink
    , pIsAvailable
    , pDownloadLink

    -- * SynonymsItemSource
    , SynonymsItemSource
    , synonymsItemSource
    , sURL
    , sAttribution

    -- * ContentRanges
    , ContentRanges
    , contentRanges
    , crGbImageRange
    , crContentVersion
    , crGbTextRange
    , crCfiRange

    -- * LayerInfo
    , LayerInfo
    , layerInfo
    , liLayers

    -- * RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

    -- * SaleInfo
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

    -- * Geo
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

    -- * Common
    , Common
    , common
    , cSnippet
    , cSnippetURL
    , cLang
    , cTitle
    , cPreviewImageURL

    -- * WordsItemSource
    , WordsItemSource
    , wordsItemSource
    , wisURL
    , wisAttribution

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- * RentalPeriod
    , RentalPeriod
    , rentalPeriod
    , rpEndUtcSec
    , rpStartUtcSec

    -- * Projection
    , Projection (..)

    -- * Filter
    , Filter (..)

    -- * LayerInfoLayersItem
    , LayerInfoLayersItem
    , layerInfoLayersItem
    , liliVolumeAnnotationsVersion
    , liliLayerId

    -- * DerivativesItemSource
    , DerivativesItemSource
    , derivativesItemSource
    , disURL
    , disAttribution

    -- * SensesItem
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

    -- * Dimensions
    , Dimensions
    , dimensions
    , dHeight
    , dWidth
    , dThickness

    -- * RecommendedInfo
    , RecommendedInfo
    , recommendedInfo
    , riExplanation

    -- * Bookshelves
    , Bookshelves
    , bookshelves
    , booKind
    , booItems

    -- * WordsItemExamplesItemSource
    , WordsItemExamplesItemSource
    , wordsItemExamplesItemSource
    , wieisURL
    , wieisAttribution

    -- * DefinitionsItem
    , DefinitionsItem
    , definitionsItem
    , diDefinition
    , diExamples

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

    -- * ExamplesItemSource
    , ExamplesItemSource
    , examplesItemSource
    , eisURL
    , eisAttribution

    -- * Lo
    , Lo
    , lo
    , lLatitude
    , lLongitude

    -- * ExamplesItem
    , ExamplesItem
    , examplesItem
    , eiText
    , eiSource

    -- * MetadataItemsItem
    , MetadataItemsItem
    , metadataItemsItem
    , miiSize
    , miiVersion
    , miiLanguage
    , miiDownloadURL
    , miiEncryptedKey

    -- * WordsItemExamplesItem
    , WordsItemExamplesItem
    , wordsItemExamplesItem
    , wieiText
    , wieiSource

    -- * VolumeInfo
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

    -- * DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- * BooksVolumesListProjection
    , BooksVolumesListProjection (..)

    -- * OffersItem
    , OffersItem
    , offersItem
    , oiFinskyOfferType
    , oiRentalDuration
    , oiListPrice
    , oiRetailPrice

    -- * BooksVolumesMybooksListProcessingState
    , BooksVolumesMybooksListProcessingState (..)

    -- * PrintType
    , PrintType (..)

    -- * OffersItemListPrice
    , OffersItemListPrice
    , offersItemListPrice
    , oilpCurrencyCode
    , oilpAmountInMicros

    -- * Layersummaries
    , Layersummaries
    , layersummaries
    , layTotalItems
    , layKind
    , layItems

    -- * BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition

    -- * Association
    , Association (..)
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
