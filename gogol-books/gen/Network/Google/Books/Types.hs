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

    -- * GeolayerdataViewportGeo
    , GeolayerdataViewportGeo
    , geolayerdataViewportGeo
    , gvgHi
    , gvgLo

    -- * VolumesMybooksList'AcquireMethod
    , VolumesMybooksList'AcquireMethod (..)

    -- * VolumesAssociatedList'Association
    , VolumesAssociatedList'Association (..)

    -- * VolumeRetailPriceSaleInfo
    , VolumeRetailPriceSaleInfo
    , volumeRetailPriceSaleInfo
    , vrpsiAmount
    , vrpsiCurrencyCode

    -- * VolumesMybooksList'ProcessingState
    , VolumesMybooksList'ProcessingState (..)

    -- * GeolayerdataLoViewportGeo
    , GeolayerdataLoViewportGeo
    , geolayerdataLoViewportGeo
    , glvgLatitude
    , glvgLongitude

    -- * VolumesRecommendedRate'Rating
    , VolumesRecommendedRate'Rating (..)

    -- * DictlayerdataItemSynonymsItemSensesItemWordsDict
    , DictlayerdataItemSynonymsItemSensesItemWordsDict
    , dictlayerdataItemSynonymsItemSensesItemWordsDict
    , disisiwdText
    , disisiwdSource

    -- * VolumeListPriceItemOffersSaleInfo
    , VolumeListPriceItemOffersSaleInfo
    , volumeListPriceItemOffersSaleInfo
    , vlpiosiCurrencyCode
    , vlpiosiAmountInMicros

    -- * Alt
    , Alt (..)

    -- * DictlayerdataSourceDict
    , DictlayerdataSourceDict
    , dictlayerdataSourceDict
    , dsdUrl
    , dsdAttribution

    -- * VolumesAssociatedList'MaxAllowedMaturityRating
    , VolumesAssociatedList'MaxAllowedMaturityRating (..)

    -- * DictlayerdataSourceItemWordsDict
    , DictlayerdataSourceItemWordsDict
    , dictlayerdataSourceItemWordsDict
    , dsiwdUrl
    , dsiwdAttribution

    -- * RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

    -- * DictlayerdataItemDerivativesItemWordsDict
    , DictlayerdataItemDerivativesItemWordsDict
    , dictlayerdataItemDerivativesItemWordsDict
    , didiwdText
    , didiwdSource

    -- * DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dieidisiwdText
    , dieidisiwdSource

    -- * Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- * MylibraryBookshelvesVolumesList'Projection
    , MylibraryBookshelvesVolumesList'Projection (..)

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

    -- * GeolayerdataItemItemBoundaryGeo
    , GeolayerdataItemItemBoundaryGeo
    , geolayerdataItemItemBoundaryGeo
    , giibgLatitude
    , giibgLongitude

    -- * DictlayerdataItemWordsDict
    , DictlayerdataItemWordsDict
    , dictlayerdataItemWordsDict
    , diwdSenses
    , diwdSource
    , diwdDerivatives
    , diwdExamples

    -- * VolumeItemOffersSaleInfo
    , VolumeItemOffersSaleInfo
    , volumeItemOffersSaleInfo
    , viosiFinskyOfferType
    , viosiRentalDuration
    , viosiListPrice
    , viosiRetailPrice

    -- * Bookshelves
    , Bookshelves
    , bookshelves
    , bKind
    , bItems

    -- * VolumeItemLayersLayerInfo
    , VolumeItemLayersLayerInfo
    , volumeItemLayersLayerInfo
    , villiVolumeAnnotationsVersion
    , villiLayerId

    -- * DictlayerdataSourceItemExamplesItemWordsDict
    , DictlayerdataSourceItemExamplesItemWordsDict
    , dictlayerdataSourceItemExamplesItemWordsDict
    , dsieiwdUrl
    , dsieiwdAttribution

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

    -- * AnnotationCurrentVersionRanges
    , AnnotationCurrentVersionRanges
    , annotationCurrentVersionRanges
    , acvrGbImageRange
    , acvrContentVersion
    , acvrImageCfiRange
    , acvrGbTextRange
    , acvrCfiRange

    -- * VolumeEpubAccessInfo
    , VolumeEpubAccessInfo
    , volumeEpubAccessInfo
    , veaiAcsTokenLink
    , veaiIsAvailable
    , veaiDownloadLink

    -- * Volumes
    , Volumes
    , volumes
    , vTotalItems
    , vKind
    , vItems

    -- * DictlayerdataItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataItemDefinitionsItemSensesItemWordsDict
    , didisiwdDefinition
    , didisiwdExamples

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

    -- * DictlayerdataItemExamplesItemWordsDict
    , DictlayerdataItemExamplesItemWordsDict
    , dictlayerdataItemExamplesItemWordsDict
    , dieiwdText
    , dieiwdSource

    -- * Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- * VolumeDimensionsVolumeInfo
    , VolumeDimensionsVolumeInfo
    , volumeDimensionsVolumeInfo
    , vdviHeight
    , vdviWidth
    , vdviThickness

    -- * BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition

    -- * VolumeListPriceSaleInfo
    , VolumeListPriceSaleInfo
    , volumeListPriceSaleInfo
    , vlpsiAmount
    , vlpsiCurrencyCode

    -- * VolumeannotationContentRanges
    , VolumeannotationContentRanges
    , volumeannotationContentRanges
    , vcrGbImageRange
    , vcrContentVersion
    , vcrGbTextRange
    , vcrCfiRange

    -- * DictlayerdataItemConjugationsItemSensesItemWordsDict
    , DictlayerdataItemConjugationsItemSensesItemWordsDict
    , dictlayerdataItemConjugationsItemSensesItemWordsDict
    , dicisiwdValue
    , dicisiwdType

    -- * VolumeRentalPeriodUserInfo
    , VolumeRentalPeriodUserInfo
    , volumeRentalPeriodUserInfo
    , vrpuiEndUtcSec
    , vrpuiStartUtcSec

    -- * Layersummaries
    , Layersummaries
    , layersummaries
    , lTotalItems
    , lKind
    , lItems

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

    -- * Annotationsdata
    , Annotationsdata
    , annotationsdata
    , aTotalItems
    , aNextPageToken
    , aKind
    , aItems

    -- * Annotations
    , Annotations
    , annotations
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

    -- * ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsUrl
    , rsDescription

    -- * ReviewAuthor
    , ReviewAuthor
    , reviewAuthor
    , raDisplayName

    -- * Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- * Volumeannotations
    , Volumeannotations
    , volumeannotations
    , volTotalItems
    , volNextPageToken
    , volKind
    , volItems
    , volVersion

    -- * DictlayerdataCommon
    , DictlayerdataCommon
    , dictlayerdataCommon
    , dcTitle

    -- * BooksCloudloadingResource
    , BooksCloudloadingResource
    , booksCloudloadingResource
    , bcrProcessingState
    , bcrVolumeId
    , bcrAuthor
    , bcrTitle

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

    -- * MyconfigRequestAccess'LicenseTypes
    , MyconfigRequestAccess'LicenseTypes (..)

    -- * Volumeannotation
    , Volumeannotation
    , volumeannotation
    , vvSelectedText
    , vvAnnotationDataLink
    , vvPageIds
    , vvKind
    , vvData
    , vvSelfLink
    , vvAnnotationType
    , vvAnnotationDataId
    , vvContentRanges
    , vvVolumeId
    , vvId
    , vvDeleted
    , vvUpdated
    , vvLayerId

    -- * Layersummary
    , Layersummary
    , layersummary
    , layAnnotationsDataLink
    , layAnnotationsLink
    , layKind
    , layDataCount
    , layContentVersion
    , layVolumeAnnotationsVersion
    , layAnnotationCount
    , layAnnotationTypes
    , laySelfLink
    , layVolumeId
    , layId
    , layUpdated
    , layLayerId

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

    -- * Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

    -- * DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , dictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , dsisisiwdUrl
    , dsisisiwdAttribution

    -- * VolumeItemIndustryIdentifiersVolumeInfo
    , VolumeItemIndustryIdentifiersVolumeInfo
    , volumeItemIndustryIdentifiersVolumeInfo
    , viiiviIdentifier
    , viiiviType

    -- * MyconfigSyncVolumeLicenses'Features
    , MyconfigSyncVolumeLicenses'Features (..)

    -- * VolumeRetailPriceItemOffersSaleInfo
    , VolumeRetailPriceItemOffersSaleInfo
    , volumeRetailPriceItemOffersSaleInfo
    , vrpiosiCurrencyCode
    , vrpiosiAmountInMicros

    -- * MylibraryReadingpositionsSetPosition'Action
    , MylibraryReadingpositionsSetPosition'Action (..)

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

    -- * VolumesUseruploadedList'ProcessingState
    , VolumesUseruploadedList'ProcessingState (..)

    -- * MetadataItemItems
    , MetadataItemItems
    , metadataItemItems
    , miiSize
    , miiVersion
    , miiLanguage
    , miiDownloadUrl
    , miiEncryptedKey

    -- * Bookshelf
    , Bookshelf
    , bookshelf
    , booAccess
    , booVolumesLastUpdated
    , booKind
    , booCreated
    , booVolumeCount
    , booSelfLink
    , booId
    , booUpdated
    , booTitle
    , booDescription

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

    -- * GeolayerdataHiViewportGeo
    , GeolayerdataHiViewportGeo
    , geolayerdataHiViewportGeo
    , ghvgLatitude
    , ghvgLongitude

    -- * DictlayerdataSourceItemSensesItemWordsDict
    , DictlayerdataSourceItemSensesItemWordsDict
    , dictlayerdataSourceItemSensesItemWordsDict
    , dsisiwdUrl
    , dsisiwdAttribution

    -- * BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

    -- * CategoryItemItems
    , CategoryItemItems
    , categoryItemItems
    , ciiName
    , ciiCategoryId
    , ciiBadgeUrl

    -- * DictlayerdataSourceItemDerivativesItemWordsDict
    , DictlayerdataSourceItemDerivativesItemWordsDict
    , dictlayerdataSourceItemDerivativesItemWordsDict
    , dsidiwdUrl
    , dsidiwdAttribution

    -- * AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- * OffersItemItemsItemItems
    , OffersItemItemsItemItems
    , offersItemItemsItemItems
    , oiiiiCanonicalVolumeLink
    , oiiiiCoverUrl
    , oiiiiVolumeId
    , oiiiiAuthor
    , oiiiiTitle
    , oiiiiDescription

    -- * UsersettingsNotesExport
    , UsersettingsNotesExport
    , usersettingsNotesExport
    , uneFolderName
    , uneIsEnabled

    -- * GeolayerdataCommon
    , GeolayerdataCommon
    , geolayerdataCommon
    , gcSnippet
    , gcSnippetUrl
    , gcLang
    , gcTitle
    , gcPreviewImageUrl

    -- * VolumesRecommendedList'MaxAllowedMaturityRating
    , VolumesRecommendedList'MaxAllowedMaturityRating (..)

    -- * VolumeRecommendedInfo
    , VolumeRecommendedInfo
    , volumeRecommendedInfo
    , vriExplanation

    -- * Category
    , Category
    , category
    , cKind
    , cItems

    -- * DictlayerdataItemSensesItemWordsDict
    , DictlayerdataItemSensesItemWordsDict
    , dictlayerdataItemSensesItemWordsDict
    , disiwdPronunciationUrl
    , disiwdConjugations
    , disiwdPronunciation
    , disiwdSynonyms
    , disiwdSource
    , disiwdPartOfSpeech
    , disiwdDefinitions
    , disiwdSyllabification

    -- * Volume
    , Volume
    , volume
    , v1UserInfo
    , v1Etag
    , v1AccessInfo
    , v1Kind
    , v1SearchInfo
    , v1SelfLink
    , v1LayerInfo
    , v1SaleInfo
    , v1Id
    , v1RecommendedInfo
    , v1VolumeInfo

    -- * DictlayerdataDict
    , DictlayerdataDict
    , dictlayerdataDict
    , ddSource
    , ddWords

    -- * DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dsieidisiwdUrl
    , dsieidisiwdAttribution

    -- * VolumePdfAccessInfo
    , VolumePdfAccessInfo
    , volumePdfAccessInfo
    , vpaiAcsTokenLink
    , vpaiIsAvailable
    , vpaiDownloadLink

    -- * AnnotationClientVersionRanges
    , AnnotationClientVersionRanges
    , annotationClientVersionRanges
    , aGbImageRange
    , aContentVersion
    , aImageCfiRange
    , aGbTextRange
    , aCfiRange

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

    -- * OffersItemItems
    , OffersItemItems
    , offersItemItems
    , oiiItems
    , oiiArtUrl
    , oiiId
    , oiiGservicesKey

    -- * VolumeLayerInfo
    , VolumeLayerInfo
    , volumeLayerInfo
    , vliLayers

    -- * AnnotationsSummaryItemLayers
    , AnnotationsSummaryItemLayers
    , annotationsSummaryItemLayers
    , asilLimitType
    , asilAllowedCharacterCount
    , asilUpdated
    , asilLayerId
    , asilRemainingCharacterCount

    -- * DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- * VolumeRentalDurationItemOffersSaleInfo
    , VolumeRentalDurationItemOffersSaleInfo
    , volumeRentalDurationItemOffersSaleInfo
    , vrdiosiCount
    , vrdiosiUnit

    -- * OnboardingListCategoryVolumes'MaxAllowedMaturityRating
    , OnboardingListCategoryVolumes'MaxAllowedMaturityRating (..)

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

    -- * VolumeCopyUserInfo
    , VolumeCopyUserInfo
    , volumeCopyUserInfo
    , vcuiLimitType
    , vcuiAllowedCharacterCount
    , vcuiUpdated
    , vcuiRemainingCharacterCount

    -- * VolumeImageLinksVolumeInfo
    , VolumeImageLinksVolumeInfo
    , volumeImageLinksVolumeInfo
    , vilviThumbnail
    , vilviSmall
    , vilviExtraLarge
    , vilviLarge
    , vilviMedium
    , vilviSmallThumbnail

    -- * VolumeUserUploadedVolumeInfoUserInfo
    , VolumeUserUploadedVolumeInfoUserInfo
    , volumeUserUploadedVolumeInfoUserInfo
    , vuuviuiProcessingState

    -- * Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon
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
