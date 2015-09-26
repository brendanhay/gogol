-- |
-- Module      : Network.Google.Books
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lets you search for books and manage your Google Books library.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference>
module Network.Google.Books
    (
    -- * API Definition
      Books



    -- * Types

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

    -- ** AnnotationClientVersionRanges
    , AnnotationClientVersionRanges
    , annotationClientVersionRanges
    , aGbImageRange
    , aContentVersion
    , aImageCfiRange
    , aGbTextRange
    , aCfiRange

    -- ** AnnotationCurrentVersionRanges
    , AnnotationCurrentVersionRanges
    , annotationCurrentVersionRanges
    , acvrGbImageRange
    , acvrContentVersion
    , acvrImageCfiRange
    , acvrGbTextRange
    , acvrCfiRange

    -- ** AnnotationLayerSummary
    , AnnotationLayerSummary
    , annotationLayerSummary
    , alsLimitType
    , alsAllowedCharacterCount
    , alsRemainingCharacterCount

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

    -- ** Annotations
    , Annotations
    , annotations
    , annTotalItems
    , annNextPageToken
    , annKind
    , annItems

    -- ** AnnotationsSummary
    , AnnotationsSummary
    , annotationsSummary
    , asKind
    , asLayers

    -- ** AnnotationsSummaryItemLayers
    , AnnotationsSummaryItemLayers
    , annotationsSummaryItemLayers
    , asilLimitType
    , asilAllowedCharacterCount
    , asilUpdated
    , asilLayerId
    , asilRemainingCharacterCount

    -- ** Annotationsdata
    , Annotationsdata
    , annotationsdata
    , aTotalItems
    , aNextPageToken
    , aKind
    , aItems

    -- ** BooksAnnotationsRange
    , BooksAnnotationsRange
    , booksAnnotationsRange
    , barStartOffset
    , barEndOffset
    , barEndPosition
    , barStartPosition

    -- ** BooksCloudloadingResource
    , BooksCloudloadingResource
    , booksCloudloadingResource
    , bcrProcessingState
    , bcrVolumeId
    , bcrAuthor
    , bcrTitle

    -- ** BooksVolumesRecommendedRateResponse
    , BooksVolumesRecommendedRateResponse
    , booksVolumesRecommendedRateResponse
    , bvrrrConsistencyToken

    -- ** Bookshelf
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

    -- ** Bookshelves
    , Bookshelves
    , bookshelves
    , bKind
    , bItems

    -- ** Category
    , Category
    , category
    , cKind
    , cItems

    -- ** CategoryItemItems
    , CategoryItemItems
    , categoryItemItems
    , ciiName
    , ciiCategoryId
    , ciiBadgeUrl

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

    -- ** Dictlayerdata
    , Dictlayerdata
    , dictlayerdata
    , dKind
    , dDict
    , dCommon

    -- ** DictlayerdataCommon
    , DictlayerdataCommon
    , dictlayerdataCommon
    , dcTitle

    -- ** DictlayerdataDict
    , DictlayerdataDict
    , dictlayerdataDict
    , ddSource
    , ddWords

    -- ** DictlayerdataItemConjugationsItemSensesItemWordsDict
    , DictlayerdataItemConjugationsItemSensesItemWordsDict
    , dictlayerdataItemConjugationsItemSensesItemWordsDict
    , dicisiwdValue
    , dicisiwdType

    -- ** DictlayerdataItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataItemDefinitionsItemSensesItemWordsDict
    , didisiwdDefinition
    , didisiwdExamples

    -- ** DictlayerdataItemDerivativesItemWordsDict
    , DictlayerdataItemDerivativesItemWordsDict
    , dictlayerdataItemDerivativesItemWordsDict
    , didiwdText
    , didiwdSource

    -- ** DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dieidisiwdText
    , dieidisiwdSource

    -- ** DictlayerdataItemExamplesItemWordsDict
    , DictlayerdataItemExamplesItemWordsDict
    , dictlayerdataItemExamplesItemWordsDict
    , dieiwdText
    , dieiwdSource

    -- ** DictlayerdataItemSensesItemWordsDict
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

    -- ** DictlayerdataItemSynonymsItemSensesItemWordsDict
    , DictlayerdataItemSynonymsItemSensesItemWordsDict
    , dictlayerdataItemSynonymsItemSensesItemWordsDict
    , disisiwdText
    , disisiwdSource

    -- ** DictlayerdataItemWordsDict
    , DictlayerdataItemWordsDict
    , dictlayerdataItemWordsDict
    , diwdSenses
    , diwdSource
    , diwdDerivatives
    , diwdExamples

    -- ** DictlayerdataSourceDict
    , DictlayerdataSourceDict
    , dictlayerdataSourceDict
    , dsdUrl
    , dsdAttribution

    -- ** DictlayerdataSourceItemDerivativesItemWordsDict
    , DictlayerdataSourceItemDerivativesItemWordsDict
    , dictlayerdataSourceItemDerivativesItemWordsDict
    , dsidiwdUrl
    , dsidiwdAttribution

    -- ** DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , DictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dictlayerdataSourceItemExamplesItemDefinitionsItemSensesItemWordsDict
    , dsieidisiwdUrl
    , dsieidisiwdAttribution

    -- ** DictlayerdataSourceItemExamplesItemWordsDict
    , DictlayerdataSourceItemExamplesItemWordsDict
    , dictlayerdataSourceItemExamplesItemWordsDict
    , dsieiwdUrl
    , dsieiwdAttribution

    -- ** DictlayerdataSourceItemSensesItemWordsDict
    , DictlayerdataSourceItemSensesItemWordsDict
    , dictlayerdataSourceItemSensesItemWordsDict
    , dsisiwdUrl
    , dsisiwdAttribution

    -- ** DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , DictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , dictlayerdataSourceItemSynonymsItemSensesItemWordsDict
    , dsisisiwdUrl
    , dsisisiwdAttribution

    -- ** DictlayerdataSourceItemWordsDict
    , DictlayerdataSourceItemWordsDict
    , dictlayerdataSourceItemWordsDict
    , dsiwdUrl
    , dsiwdAttribution

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

    -- ** DownloadAccesses
    , DownloadAccesses
    , downloadAccesses
    , daKind
    , daDownloadAccessList

    -- ** Geolayerdata
    , Geolayerdata
    , geolayerdata
    , gKind
    , gGeo
    , gCommon

    -- ** GeolayerdataCommon
    , GeolayerdataCommon
    , geolayerdataCommon
    , gcSnippet
    , gcSnippetUrl
    , gcLang
    , gcTitle
    , gcPreviewImageUrl

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

    -- ** GeolayerdataHiViewportGeo
    , GeolayerdataHiViewportGeo
    , geolayerdataHiViewportGeo
    , ghvgLatitude
    , ghvgLongitude

    -- ** GeolayerdataItemItemBoundaryGeo
    , GeolayerdataItemItemBoundaryGeo
    , geolayerdataItemItemBoundaryGeo
    , giibgLatitude
    , giibgLongitude

    -- ** GeolayerdataLoViewportGeo
    , GeolayerdataLoViewportGeo
    , geolayerdataLoViewportGeo
    , glvgLatitude
    , glvgLongitude

    -- ** GeolayerdataViewportGeo
    , GeolayerdataViewportGeo
    , geolayerdataViewportGeo
    , gvgHi
    , gvgLo

    -- ** Layersummaries
    , Layersummaries
    , layersummaries
    , lTotalItems
    , lKind
    , lItems

    -- ** Layersummary
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

    -- ** Metadata
    , Metadata
    , metadata
    , mKind
    , mItems

    -- ** MetadataItemItems
    , MetadataItemItems
    , metadataItemItems
    , miiSize
    , miiVersion
    , miiLanguage
    , miiDownloadUrl
    , miiEncryptedKey

    -- ** Offers
    , Offers
    , offers
    , oKind
    , oItems

    -- ** OffersItemItems
    , OffersItemItems
    , offersItemItems
    , oiiItems
    , oiiArtUrl
    , oiiId
    , oiiGservicesKey

    -- ** OffersItemItemsItemItems
    , OffersItemItemsItemItems
    , offersItemItemsItemItems
    , oiiiiCanonicalVolumeLink
    , oiiiiCoverUrl
    , oiiiiVolumeId
    , oiiiiAuthor
    , oiiiiTitle
    , oiiiiDescription

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

    -- ** RequestAccess
    , RequestAccess
    , requestAccess
    , raConcurrentAccess
    , raKind
    , raDownloadAccess

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
    , rFullTextUrl
    , rTitle
    , rType

    -- ** ReviewAuthor
    , ReviewAuthor
    , reviewAuthor
    , raDisplayName

    -- ** ReviewSource
    , ReviewSource
    , reviewSource
    , rsExtraDescription
    , rsUrl
    , rsDescription

    -- ** Usersettings
    , Usersettings
    , usersettings
    , uKind
    , uNotesExport

    -- ** UsersettingsNotesExport
    , UsersettingsNotesExport
    , usersettingsNotesExport
    , uneFolderName
    , uneIsEnabled

    -- ** Volume
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

    -- ** Volume2
    , Volume2
    , volume2
    , voloNextPageToken
    , voloKind
    , voloItems

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
    , vaiViewOrderUrl
    , vaiPublicDomain

    -- ** VolumeCopyUserInfo
    , VolumeCopyUserInfo
    , volumeCopyUserInfo
    , vcuiLimitType
    , vcuiAllowedCharacterCount
    , vcuiUpdated
    , vcuiRemainingCharacterCount

    -- ** VolumeDimensionsVolumeInfo
    , VolumeDimensionsVolumeInfo
    , volumeDimensionsVolumeInfo
    , vdviHeight
    , vdviWidth
    , vdviThickness

    -- ** VolumeEpubAccessInfo
    , VolumeEpubAccessInfo
    , volumeEpubAccessInfo
    , veaiAcsTokenLink
    , veaiIsAvailable
    , veaiDownloadLink

    -- ** VolumeImageLinksVolumeInfo
    , VolumeImageLinksVolumeInfo
    , volumeImageLinksVolumeInfo
    , vilviThumbnail
    , vilviSmall
    , vilviExtraLarge
    , vilviLarge
    , vilviMedium
    , vilviSmallThumbnail

    -- ** VolumeItemIndustryIdentifiersVolumeInfo
    , VolumeItemIndustryIdentifiersVolumeInfo
    , volumeItemIndustryIdentifiersVolumeInfo
    , viiiviIdentifier
    , viiiviType

    -- ** VolumeItemLayersLayerInfo
    , VolumeItemLayersLayerInfo
    , volumeItemLayersLayerInfo
    , villiVolumeAnnotationsVersion
    , villiLayerId

    -- ** VolumeItemOffersSaleInfo
    , VolumeItemOffersSaleInfo
    , volumeItemOffersSaleInfo
    , viosiFinskyOfferType
    , viosiRentalDuration
    , viosiListPrice
    , viosiRetailPrice

    -- ** VolumeLayerInfo
    , VolumeLayerInfo
    , volumeLayerInfo
    , vliLayers

    -- ** VolumeListPriceItemOffersSaleInfo
    , VolumeListPriceItemOffersSaleInfo
    , volumeListPriceItemOffersSaleInfo
    , vlpiosiCurrencyCode
    , vlpiosiAmountInMicros

    -- ** VolumeListPriceSaleInfo
    , VolumeListPriceSaleInfo
    , volumeListPriceSaleInfo
    , vlpsiAmount
    , vlpsiCurrencyCode

    -- ** VolumePdfAccessInfo
    , VolumePdfAccessInfo
    , volumePdfAccessInfo
    , vpaiAcsTokenLink
    , vpaiIsAvailable
    , vpaiDownloadLink

    -- ** VolumeRecommendedInfo
    , VolumeRecommendedInfo
    , volumeRecommendedInfo
    , vriExplanation

    -- ** VolumeRentalDurationItemOffersSaleInfo
    , VolumeRentalDurationItemOffersSaleInfo
    , volumeRentalDurationItemOffersSaleInfo
    , vrdiosiCount
    , vrdiosiUnit

    -- ** VolumeRentalPeriodUserInfo
    , VolumeRentalPeriodUserInfo
    , volumeRentalPeriodUserInfo
    , vrpuiEndUtcSec
    , vrpuiStartUtcSec

    -- ** VolumeRetailPriceItemOffersSaleInfo
    , VolumeRetailPriceItemOffersSaleInfo
    , volumeRetailPriceItemOffersSaleInfo
    , vrpiosiCurrencyCode
    , vrpiosiAmountInMicros

    -- ** VolumeRetailPriceSaleInfo
    , VolumeRetailPriceSaleInfo
    , volumeRetailPriceSaleInfo
    , vrpsiAmount
    , vrpsiCurrencyCode

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

    -- ** VolumeSearchInfo
    , VolumeSearchInfo
    , volumeSearchInfo
    , vsiTextSnippet

    -- ** VolumeUserInfo
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

    -- ** VolumeUserUploadedVolumeInfoUserInfo
    , VolumeUserUploadedVolumeInfoUserInfo
    , volumeUserUploadedVolumeInfoUserInfo
    , vuuviuiProcessingState

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

    -- ** Volumeannotation
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

    -- ** VolumeannotationContentRanges
    , VolumeannotationContentRanges
    , volumeannotationContentRanges
    , vcrGbImageRange
    , vcrContentVersion
    , vcrGbTextRange
    , vcrCfiRange

    -- ** Volumeannotations
    , Volumeannotations
    , volumeannotations
    , volTotalItems
    , volNextPageToken
    , volKind
    , volItems
    , volVersion

    -- ** Volumes
    , Volumes
    , volumes
    , vTotalItems
    , vKind
    , vItems
    ) where

import           Network.Google.Books.Types

{- $resources
TODO
-}

type Books = ()

books :: Proxy Books
books = Proxy




